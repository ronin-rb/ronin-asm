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
        SIZE_SPECIFIERS = {
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
        # @param [Immediate] imm
        #   The immediate operand.
        #
        # @return [String]
        #   The formatted immediate operand.
        #
        def self.format_immediate(imm)
          "#{SIZE_SPECIFIERS[imm.width]} #{format_integer(imm.value)}"
        end

        #
        # Emits an instruction.
        #
        # @param [Instruction] insn
        #   The instruction.
        #
        # @return [String]
        #   The formatted instruction.
        #
        def self.format_instruction(insn)
          line = format_keyword(insn.name)

          unless insn.operands.empty?
            line << "\t" << format_operands(insn.operands)
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
