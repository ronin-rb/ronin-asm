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
    module Syntaxes
      #
      # Abstract base-class for all syntax classes.
      #
      class Syntax

        #
        # Formats a register.
        #
        # @param [Register] reg
        #
        # @return [String]
        #   The formatted register.
        #
        # @abstract
        #
        def self.format_register(reg)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats an integer.
        #
        # @param [Integer] int
        #   The integer value.
        #
        # @return [String]
        #   The formatted integer.
        #
        def self.format_integer(int)
          if int >= 0 then format("0x%x",int)
          else             format("-0x%x",int.abs)
          end
        end

        #
        # Formats an immediate operand.
        #
        # @param [Immediate] imm
        #   The immediate operand.
        #
        # @return [String]
        #   The formatted immediate operand.
        #
        # @abstract
        #
        def self.format_immediate(imm)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats a memory operand.
        #
        # @param [Memory] mem
        #   The memory operand.
        #
        # @return [String]
        #   The formatted memory operand.
        #
        # @abstract
        #
        def self.format_memory(mem)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats an operand.
        #
        # @param [Immediate, Memory, Register, SymbolRef] operand
        #   The operand.
        #
        # @return [String]
        #   The formatted operand.
        #
        def self.format_operand(operand)
          case operand
          when Immediate then format_immediate(operand)
          when Register  then format_register(operand)
          when Memory    then format_memory(operand)
          when SymbolRef then format_symbol_ref(operand)
          else
            raise(NotImplementedError,"cannot format unknown operand object: #{operand.inspect}")
          end
        end

        #
        # Formats multiple operands.
        #
        # @param [Array<Immediate, Memory, Register, SymbolRef>] ops
        #   The Array of operands.
        #
        # @return [String]
        #   The formatted operands.
        #
        def self.format_operands(ops)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats a reference to a symbol.
        #
        # @param [SymbolRef] symbol_ref
        #   The reference to a symbol.
        #
        # @return [String]
        #   The formatted symbol reference.
        #
        def self.format_symbol_ref(symbol_ref) = symbol_ref.to_s

        #
        # Formats a label.
        #
        # @param [Label, Symbol] label
        #   The label or label name.
        #
        # @return [String]
        #   The formatted label.
        #
        # @abstract
        #
        def self.format_label(label)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats an instruction.
        #
        # @param [Instruction] ins
        #   The instruction.
        #
        # @return [String]
        #   The formatted instruction.
        #
        # @abstract
        #
        def self.format_instruction(ins)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats a program.
        #
        # @param [Program] program
        #   The program.
        #
        # @return [String]
        #   The formatted program.
        #
        def self.format_program(program)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        # The output stream to write to.
        #
        # @return [IO, StringIO]
        attr_reader :output

        #
        # Initializes the syntax writer.
        #
        # @param [IO, StringIO] output
        #   The output stream to write Assembly syntax to.
        #
        def initialize(output)
          @output = output
        end

        #
        # Writes the assembly program to the file.
        #
        # @param [String] path
        #   The path to the output file.
        #
        # @param [Program] program
        #   The assembly program to format and write out.
        #
        def self.write(path,program)
          File.open(path,'w') do |file|
            new(file).write_program(program)
          end
        end

        #
        # Writes a section line to the output stream.
        #
        # @param [Symbol] name
        #   The section name.
        #
        def write_section(name)
          @output.puts self.class.format_section(name)
        end

        #
        # Writes a label declaration to the output stream.
        #
        # @param [Label, Symbol] label
        #   The label or label name.
        #
        def write_label(label, indent: nil)
          @output.puts "#{indent}#{self.class.format_label(label)}"
        end

        #
        # Writes an instruction line to the output stream.
        #
        # @param [Instruction] insn
        #
        # @param [String, nil] indent
        #   Optional indent string.
        #
        def write_instruction(insn, indent: nil)
          @output.puts "#{indent}#{self.class.format_instruction(insn)}"
        end

        #
        # Writes the program to the output stream.
        #
        # @param [Program] program
        #   The assembly program to format and write out.
        #
        def write_program(program)
          raise(NotImplementedError,"#{self.class}##{__method__} was not implemented")
        end

      end
    end
  end
end

require_relative '../register'
require_relative '../immediate'
require_relative '../memory'
require_relative '../instruction'
require_relative '../label'
require_relative '../symbol_ref'
