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

module Ronin
  module ASM
    #
    # Base class for all architecture specific assembler classes.
    #
    # @abstract
    #
    # @api private
    #
    # @since 1.0.0
    #
    class Assembler

      # The program to assemble.
      #
      # @return [Program]
      attr_reader :program

      # The original instructions to assemble.
      #
      # @return [Array<Instruction, Label>]
      attr_reader :instructions

      # The sparse array of instruction indexes and the modified instructions.
      #
      # @return [Hash{Integer => Instruction}]
      attr_reader :modified_instructions

      #
      # Initializes the assembler.
      #
      # @param [Program] program
      #   The program to assemble.
      #
      def initialize(program)
        @program = program

        @instructions = program.instructions
        @modified_instructions = {}
      end

      #
      # Assembles the {#program}'s instructions then writes the encoded
      # instructions to the output stream.
      #
      # @param [Program] program
      #   The program to assemble.
      #
      # @param [IO, StringIO] output
      #   The output stream to write the encoded assembly instructions to.
      #
      # @return [Integer]
      #   The number of bytes written to the output stream.
      #
      # @see #assemble
      #
      def self.assemble(program,output)
        new(program).assemble(output)
      end

      #
      # Assembles the {#program}'s instructions then writes the encoded
      # instructions to the output stream.
      #
      # @param [IO, StringIO] output
      #   The output stream to write the encoded assembly instructions to.
      #
      # @return [Integer]
      #   The number of bytes written to the output stream.
      #
      # @abstract
      #
      def assemble(output)
        raise(NotImplementedError,"#{self.class}#assemble was not implemented")
      end

      #
      # Enumerates over each instruction.
      #
      # @yield [instruction]
      #   The given block will be passed each instruction.
      #
      # @yieldparam [Instruction] instruction
      #   An instruction from the program or a new instruction replaced by the
      #   assembler.
      #
      # @return [Enumerator]
      #   If no block is given an Enumerator object will be returned.
      #
      def each_instruction
        return enum_for(__method__) unless block_given?

        @instructions.each.with_index do |instruction,index|
          # modified instructions take precedence over original instructions
          yield @modified_instructions.fetch(index,instruction)
        end
      end

      #
      # Replaces an operand within an instruction.
      #
      # @param [Integer] index
      #   The instruction index.
      #
      # @param [Integer] operand_index
      #   The index of operand to replace within {Instruction#operands}.
      #
      # @param [Operand] new_operand
      #   The new operand object.
      #
      # @raise [ArgumentError]
      #   An invalid instruction index or operand index was given.
      #
      def replace_operand(index,operand_index,new_operand)
        if (instruction = @modified_instructions[index])
          unless instruction.operands[operand_index]
            raise(ArgumentError,"invalid operand index: #{operand_index.inspect}")
          end

          # update the operands in place since we've already created a new
          # instruction object with a new operands Array.
          instruction.operands[operand_index] = new_operand
        elsif (instruction = @instructions[index])
          unless instruction.operands[operand_index]
            raise(ArgumentError,"invalid operand index: #{operand_index.inspect}")
          end

          # duplicate the operands so we can modify them
          new_operands = instruction.operands.dup

          # replace the operand
          new_operands[operand_index] = new_operand

          # create a copy of the instruction with the new operands
          new_instruction = instruction.class.new(*new_operands)

          # replace the instruction
          replace_instruction(index,new_instruction)
        else
          raise(ArgumentError,"invalid instruction index: #{index.inspect}")
        end
      end

      #
      # Replaces the instruction at the given index.
      #
      # @param [Integer] index
      #   The instruction index.
      #
      # @param [Instruction] instruction
      #   The instruction object.
      #
      def replace_instruction(index,instruction)
        # add the instruction to the @modified_instructions sparse array
        @modified_instructions[index] = instruction
      end

      #
      # Creates a new encoder for the assembler.
      #
      # @param [IO, StringIO] output
      #   The output stream to write the encoded assembly instructions to.
      #
      # @return [Encoder]
      #
      # @abstract
      #
      def encoder(output)
        raise(NotImplementedError,"#{self.class}#encoder was not implemented")
      end

    end
  end
end
