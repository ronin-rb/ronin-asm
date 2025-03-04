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
      class Intel < Common

        # Data sizes and their identifiers
        WIDTHS = {
          1 => 'BYTE',
          2 => 'WORD',
          4 => 'DWORD',
          8 => 'QWORD'
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
        def self.format_register(reg) = reg.name.to_s

        #
        # Emits an immediate operand.
        #
        # @param [Immediate] op
        #   The operand.
        #
        # @return [String]
        #   The formatted immediate operand.
        #
        def self.format_immediate(op)
          "#{WIDTHS[op.width]} #{format_integer(op.value)}"
        end

        #
        # Emits a memory operand.
        #
        # @param [Memory] op
        #   The operand.
        #
        # @return [String]
        #   The formatted memory operand.
        #
        def self.format_memory(op)
          asm = format_register(op.base)

          if op.index
            asm << '+' << format_register(op.index)
            asm << '*' << format_integer(op.scale) if op.scale > 1
          end

          if op.displacement != 0
            sign = if op.displacement >= 0 then '+'
                   else                         '-'
                   end

            asm << sign << format_integer(op.displacement)
          end

          asm = "[#{asm}]"

          unless op.width == op.base.width
            asm = "#{WIDTHS[op.width]} #{asm}"
          end

          return asm
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
        def self.format_section(name) = "section .#{name}"

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
          "BITS #{program.word_size * 8}"
        end

      end
    end
  end
end
