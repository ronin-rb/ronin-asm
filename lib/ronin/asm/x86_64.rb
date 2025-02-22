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
    # Contains x86-64 architecture information.
    #
    module X86_64
      include X86

      # Default word size
      WORD_SIZE = 8

      # AMD64 registers
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
      # Generates the instruction to invoke a syscall.
      #
      def syscall; instruction(:syscall); end
    end
  end
end
