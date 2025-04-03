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

require_relative '../x86/instruction_fixture_file'

module CodeGen
  module X86_64
    #
    # Represents an instruction fixture file within
    # `spec/x86_64/instructions/fixtures/`.
    #
    # @note
    #   All instruction fixture files use ATT syntax for compatibility with the
    #   GNU Assembler (GAS), since the GNU Assembler is the only Open Source
    #   assembler that supports nearly the *entire* x86-64 Instruction Set
    #   Architecture (ISA).
    #
    class InstructionFixtureFile < X86::InstructionFixtureFile

      template File.join(__dir__,'templates','instruction_fixture.s.erb')
      output_dir 'spec/x86_64/instructions/fixtures'

      #
      # Formats an operand for the instruction.
      #
      # @param [ISA::Operand] operand
      # @param [Integer] index
      # @return [String]
      #
      def format_operand(operand,index)
        case operand.type
        # x86-64 specific operand types
        when :imm64  then imm64_operand(index)
        when :r8l    then '%r8l'
        when :r16l   then '%r16l'
        when :r32l   then '%r32l'
        when :rax    then '%rax'
        when :r64    then reg64_operand(index)
        when :tmm    then tmm_operand(index)
        when :sibmem then sibmem_operand(index)
        when :rel32m then rel32m_operand(index)
        else              super(operand,index)
        end
      end

      #
      # Formats an 64bit immediate value based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def imm64_operand(index)
        format("$0x%.16x",0x1111111111111111 * (index + 1))
      end

      # 64bit register names sorted by operand index.
      #
      # @note
      #   The list of 64bit registers starts with `%rbx` instead of `%rax` to
      #   avoid accidentally matching other instruction forms where `%rax` is
      #   the first operand.
      REG64_OPERANDS = %w[%rbx %rcx %rdx %rsi %rdi]

      #
      # Returns an 64bit register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def reg64_operand(index) = REG64_OPERANDS.fetch(index)

      alias reg_operand reg64_operand

      #
      # Returns a TMM register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def tmm_operand(index) = "%tmm#{index}"

      #
      # Formats a sibmem (Scale Index Base) memory operand based on the operand
      # index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def sibmem_operand(index) = "(#{reg_operand(index)},%rsi,8)"

      alias rel32m_operand mem_operand

    end
  end
end
