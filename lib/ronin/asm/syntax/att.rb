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

require_relative 'common'

module Ronin
  module ASM
    module Syntax
      #
      # Handles emitting Assembly source code in ATT syntax.
      #
      class ATT < Common

        # Data sizes and their instruction mnemonics
        INSTRUCTION_SUFFIXES = {
          8 => 'q',
          4 => 'l',
          2 => 'w',
          1 => 'b',
          nil => ''
        }

        #
        # Emits a register.
        #
        # @param [Register] reg
        #   The register.
        #
        # @return [String]
        #   The register name.
        #
        def self.format_register(reg) = "%#{reg.name}"

        #
        # Emits an immediate operand.
        #
        # @param [Immediate] op
        #   The operand.
        #
        # @return [String]
        #   The formatted immediate operand.
        #
        def self.format_immediate(op) = "$#{format_integer(op.value)}"

        #
        # Emits multiple operands.
        #
        # @param [Array<Immediate, Memory, Register, Symbol>] ops
        #   The Array of operands.
        #
        # @return [String]
        #   The formatted operands.
        #
        def self.format_operands(ops)
          if ops.length > 1
            [*ops[1..-1], ops[0]].map { |op| format_operand(op) }.join(",\t")
          else
            super(ops)
          end
        end

        #
        # Emits an instruction.
        #
        # @param [Instruction] ins
        #   The instruction.
        #
        # @return [String]
        #   The formatted instruction.
        #
        def self.format_instruction(ins)
          line = format_keyword(ins.name)

          unless ins.operands.empty?
            unless (ins.operands.length == 1 && ins.operand_width == 1)
              line << INSTRUCTION_SUFFIXES[ins.operand_width]
            end

            line << "\t" << format_operands(ins.operands)
          end

          return line
        end

        #
        # Emits a section name.
        #
        # @param [Symbol] name
        #   The section name.
        #
        # @return [String]
        #   The formatted section name.
        #
        # @since 0.2.0
        #
        def self.format_section(name) = ".#{name}"

        #
        # Emits the program's prologue.
        #
        # @param [Program] program
        #   The program.
        #
        # @return [String]
        #   The formatted prologue.
        #
        # @since 0.2.0
        #
        def self.format_prologue(program)
          ".code#{program.word_size * 8}"
        end

      end
    end
  end
end
