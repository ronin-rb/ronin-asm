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

require_relative 'x86'
require_relative 'x86_64/registers'

module Ronin
  module ASM
    #
    # Contains x86-64 Architecture information.
    #
    module X86_64
      include X86

      # Default word size
      WORD_SIZE = 8

      # x86-64 registers
      REGISTERS = X86::REGISTERS.merge(
        rax: Registers::RAX,
        rbx: Registers::RBX,
        rcx: Registers::RCX,
        rdx: Registers::RDX,

        rsi: Registers::RSI,
        rdi: Registers::RDI,

        r8b: Registers::R8B,
        r8w: Registers::R8W,
        r8d: Registers::R8D,
        r8:  Registers::R8,

        r9b: Registers::R9B,
        r9w: Registers::R9W,
        r9d: Registers::R9D,
        r9:  Registers::R9,

        r10b: Registers::R10B,
        r10w: Registers::R10W,
        r10d: Registers::R10D,
        r10:  Registers::R10,

        r11b: Registers::R11B,
        r11w: Registers::R11W,
        r11d: Registers::R11D,
        r11:  Registers::R11,

        r12b: Registers::R12B,
        r12w: Registers::R12W,
        r12d: Registers::R12D,
        r12:  Registers::R12,

        r13b: Registers::R13B,
        r13w: Registers::R13W,
        r13d: Registers::R13D,
        r13:  Registers::R13,

        r14b: Registers::R14B,
        r14w: Registers::R14W,
        r14d: Registers::R14D,
        r14:  Registers::R14,

        r15b: Registers::R15B,
        r15w: Registers::R15W,
        r15d: Registers::R15D,
        r15:  Registers::R15,

        rsp: Registers::RSP,
        rbp: Registers::RBP
      )

      #
      # @group Register Methods
      #

      # The `rax` 64bit "accumulator" register.
      def rax = Registers::RAX

      # The `rbx` 64bit "accumulator" register.
      def rbx = Registers::RBX

      # The `rcx` 64bit "accumulator" register.
      def rcx = Registers::RCX

      # The `rdx` 64bit "accumulator" register.
      def rdx = Registers::RDX

      # The `rsi` 64bit "source" register.
      def rsi = Registers::RSI

      # The `rdi` 64bit "destination" register.
      def rdi = Registers::RDI

      def r8b = Registers::R8B
      def r8w = Registers::R8W
      def r8d = Registers::R8D
      def r8 = Registers::R8

      def r9b = Registers::R9B
      def r9w = Registers::R9W
      def r9d = Registers::R9D
      def r9 = Registers::R9

      def r10b = Registers::R10B
      def r10w = Registers::R10W
      def r10d = Registers::R10D
      def r10 = Registers::R10

      def r11b = Registers::R11B
      def r11w = Registers::R11W
      def r11d = Registers::R11D
      def r11 = Registers::R11

      def r12b = Registers::R12B
      def r12w = Registers::R12W
      def r12d = Registers::R12D
      def r12 = Registers::R12

      def r13b = Registers::R13B
      def r13w = Registers::R13W
      def r13d = Registers::R13D
      def r13 = Registers::R13

      def r14b = Registers::R14B
      def r14w = Registers::R14W
      def r14d = Registers::R14D
      def r14 = Registers::R14

      def r15b = Registers::R15B
      def r15w = Registers::R15W
      def r15d = Registers::R15D
      def r15 = Registers::R15

      # The `rsp` 64bit stack pointer register.
      def rsp = Registers::RSP

      # The `rbp` 64bit stack base pointer register.
      def rbp = Registers::RBP

      #
      # @group Internal Methods
      #

      #
      # The Stack Base Pointer register.
      #
      # @see rbp
      #
      def stack_base; rbp; end

      #
      # The Stack Pointer register.
      #
      # @see rsp
      #
      def stack_pointer; rsp; end

      #
      # Generates the instruction to invoke a syscall.
      #
      def syscall; instruction(:syscall); end
    end
  end
end
