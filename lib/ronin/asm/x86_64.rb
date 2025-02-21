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
        rax: Register.new(:rax, width: 8, general: true),
        rbx: Register.new(:rbx, width: 8, general: true),
        rcx: Register.new(:rcx, width: 8, general: true),
        rdx: Register.new(:rdx, width: 8, general: true),

        rsi: Register.new(:rsi, width: 8, general: true),
        rdi: Register.new(:rdi, width: 8, general: true),

        rsp: Register.new(:rsp, width: 8, general: true),
        rbp: Register.new(:rbp, width: 8, general: true),

        r8b: Register.new(:r8b, width: 1, general: true),
        r8w: Register.new(:r8w, width: 2, general: true),
        r8d: Register.new(:r8d, width: 4, general: true),
        r8:  Register.new(:r8, width: 8, general: true),

        r9b: Register.new(:r9b, width: 1, general: true),
        r9w: Register.new(:r9w, width: 2, general: true),
        r9d: Register.new(:r9d, width: 4, general: true),
        r9:  Register.new(:r9, width: 8, general: true),

        r10b: Register.new(:r10b, width: 1, general: true),
        r10w: Register.new(:r10w, width: 2, general: true),
        r10d: Register.new(:r10d, width: 4, general: true),
        r10:  Register.new(:r10, width: 8, general: true),

        r11b: Register.new(:r11b, width: 1, general: true),
        r11w: Register.new(:r11w, width: 2, general: true),
        r11d: Register.new(:r11d, width: 4, general: true),
        r11:  Register.new(:r11, width: 8, general: true),

        r12b: Register.new(:r12b, width: 1, general: true),
        r12w: Register.new(:r12w, width: 2, general: true),
        r12d: Register.new(:r12d, width: 4, general: true),
        r12:  Register.new(:r12, width: 8, general: true),

        r13b: Register.new(:r13b, width: 1, general: true),
        r13w: Register.new(:r13w, width: 2, general: true),
        r13d: Register.new(:r13d, width: 4, general: true),
        r13:  Register.new(:r13, width: 8, general: true),

        r14b: Register.new(:r14b, width: 1, general: true),
        r14w: Register.new(:r14w, width: 2, general: true),
        r14d: Register.new(:r14d, width: 4, general: true),
        r14:  Register.new(:r14, width: 8, general: true),

        r15b: Register.new(:r15b, width: 1, general: true),
        r15w: Register.new(:r15w, width: 2, general: true),
        r15d: Register.new(:r15d, width: 4, general: true),
        r15:  Register.new(:r15, width: 8, general: true),

        rip: Register.new(:rip, width: 8, general: true)
      )

      #
      # Generates the instruction to invoke a syscall.
      #
      def syscall; instruction(:syscall); end
    end
  end
end
