# frozen_string_literal: true
#
# ronin-asm - A Ruby DSL for crafting Assembly programs and shellcode.
#
# Copyright (c) 2007-2025 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# ronin-asm is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ronin-asm is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with ronin-asm.  If not, see <https://www.gnu.org/licenses/>.
#

require_relative '../assembler'
require_relative '../exceptions'
require_relative 'encoder'
require_relative 'relative_offset'

module Ronin
  module ASM
    module X86
      #
      # Contains the x86 assembler logic.
      #
      # @api private
      #
      # @since 1.0.0
      #
      class Assembler < ASM::Assembler

        #
        # Initializes the x86 assembler.
        #
        # @param [Program] program
        #
        def initialize(program)
          super(program)

          @symbol_table = {}
          @symbol_ref_table = {}
          @symbol_ref_indexes = []
        end

        #
        # Assembles the instructions and uses multi-pass size optimization.
        #
        # ## First Pass
        #
        # Enumerate the instructions adding the encoded assembly instruction
        # size to a location counter. When a label is encountered, record it's
        # byte offset using the location counter. If a {SymbolRef} is
        # encountered, *and* it's referenced label has a previously calculated
        # byte offset, replace the {SymbolRef} operand with a {RelativeOffset}
        # operand. If the {SymbolRef} points to a label that has not been
        # encountered yet, add the instruction index to the list of instructions
        # to modify later.
        #
        # Once all instructions and labels have been enumerated, attempt to
        # replace any remaining {SymbolRef} operands with the byte offset
        # locations for their target labels. If we still do not have a byte
        # offset for the {SymbolRef}'s target label, raise an exception.
        #
        # ## Second Pass
        #
        # Enumerate the modified instructions, re-calculating the instruction
        # sizes and locations of each label now that each {SymbolRef} operand
        # has been replaced with a {RelativeOffset} operand which changes the
        # size of the instruction. Update the substituted {RelativeOffset}
        # operands with the re-calculated relative byte offsets for their target
        # labels.
        #
        # ## Third Pass
        #
        # Enumerate the modified instructions and encode them for real this time!
        #
        # @param [IO, StringIO] output
        #   The output stream to write the encoded assembly instructions to.
        #
        # @return [Integer]
        #   The number of bytes written to the output stream.
        #
        # @raise [UnresolvedSymbolError]
        #   A symbol reference could not be resolved when assembling the program.
        #
        def assemble(output)
          assemble_first_pass!
          assemble_second_pass!
          return assemble_third_pass(output)
        end

        private

        #
        # Performs the first pass and calculates relative offsets for the
        # {SymbolRef}s within the program.
        #
        def assemble_first_pass!
          encoder  = self.encoder(NullOutput)
          location = 0

          each_instruction.with_index do |instruction,index|
            case instruction
            when Label
              label = instruction

              # record the label's location in the symbol table
              @symbol_table[label.name] = location
            else
              # update the location counter to point to the end of the encoded
              # assembly instruction
              location += encoder.write_instruction(instruction)

              # record the instructions index and operand index of each SymbolRef
              instruction.operands.each.with_index do |operand,operand_index|
                if operand.kind_of?(SymbolRef)
                  # record the SymbolRef's instruction index and operand index
                  @symbol_ref_indexes << [index, operand_index]

                  # record the SymbolRef's instruction location
                  @symbol_ref_table[index] = location

                  # assume there will only be one SymbolRef per-instruction
                  break
                end
              end
            end
          end

          # visit each SymbolRef operand and replace it with a RelativeOffset
          calculate_relative_offsets!
        end

        #
        # Performs the second pass and re-calculates the relative offsets
        # pointing to labels within the program.
        #
        def assemble_second_pass!
          encoder  = self.encoder(NullOutput)
          location = 0

          each_instruction.with_index do |instruction,index|
            case instruction
            when Label
              label = instruction

              # update the location of any labels
              @symbol_table[label.name] = location
            else
              location += encoder.write_instruction(instruction)

              # did the instruction previously contain a SymbolRef?
              if @symbol_ref_table.has_key?(index)
                # update the SymbolRef's instruction location
                @symbol_ref_table[index] = location
              end
            end
          end

          # revisit each RelativeOffset operand and update it's offset value
          calculate_relative_offsets!
        end

        #
        # Performs the third pass and writes the encoded assembly instructions to
        # the output stream.
        #
        # @param [IO, StringIO] output
        #   The output stream to write the encoded assembly instructions to.
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def assemble_third_pass(output)
          encoder = self.encoder(output)
          count   = 0

          each_instruction do |instruction|
            if instruction.kind_of?(Instruction)
              count += encoder.write_instruction(instruction)
            end
          end

          return count
        end

        #
        # Replaces all {SymbolRef} operands with {RelativeOffset} operands
        # containing the relative distance (in bytes) between the instruction
        # containing the {SymbolRef} and the label it's pointing to.
        #
        # @raise [UnresolvedSymbolError]
        #   A symbol reference's value could not be found in the symbol table.
        #
        def calculate_relative_offsets!
          @symbol_ref_indexes.each do |(index,operand_index)|
            # fetch the SymbolRef operand from the instruction's operands
            symbol_ref = @instructions[index].operands[operand_index]

            # fetch the location of the referenced symbol
            symbol_loc = @symbol_table.fetch(symbol_ref.name) do
              raise(UnresolvedSymbolError,"could not resolve symbol: #{symbol_ref.name}")
            end

            # fetch the location of the instruction containing the SymbolRef
            symbol_ref_loc = @symbol_ref_table[index]

            # calculate the relative offset between the SymbolRef and the Label
            rel_offset = relative_offset(symbol_loc - symbol_ref_loc)

            # replace the SymbolRef operand with a RelativeOffset operand
            replace_operand(index,operand_index,rel_offset)
          end
        end

        public

        #
        # Creates a new relative offset operand.
        #
        # @param [Integer] value
        #   The value for the relative offst.
        #
        # @return [RelativeOffset]
        #   The new relative offset operand object.
        #
        def relative_offset(value) = RelativeOffset.new(value)

        #
        # Dummy IO object that never writes anything and only returns the
        # number of bytes written. This object allows the {Assembler} to perform
        # a dry-run of encoding the instructions and calculate their locations
        # within the output.
        #
        module NullOutput
          #
          # Writes the string to the null output stream.
          #
          # @return [Integer]
          #   The number of bytes in the string.
          #
          def self.write(string) = string.bytesize

          #
          # Writes a single byte to the null output stream.
          #
          # @return [1]
          #   The number of bytes written.
          #
          def self.putc(byte) = 1
        end

        #
        # Creates a new encoder.
        #
        # @param [IO, StringIO, NullOutput] output
        #   The output that the encoder will write to. Defaults to {NullOutput}
        #   which does not write any bytes to the output but simply returns the
        #   number of bytes written.
        #
        # @return [Encoder]
        #   The new encoder object.
        #
        def encoder(output) = Encoder.new(output)

      end
    end
  end
end
