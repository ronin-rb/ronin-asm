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

require_relative 'register'

module Ronin
  module ASM
    module X86_64
      #
      # x86-64 register constants.
      #
      # @since 1.0.0
      #
      module Registers
        #
        # @group General Purpose Registers
        #

        # The `al` 8bit "accumulator" register.
        AL  = Register.new(:al, width: 1, number: 0, general: true)

        # The `ah` 8bit "accumulator" register.
        AH  = Register.new(:ah, width: 1, number: 4, general: true)

        # The `ax` 16bit "accumulator" register.
        AX  = Register.new(:ax, width: 2, number: 0, general: true)

        # The `eax` 32bit "accumulator" register.
        EAX = Register.new(:eax, width: 4, number: 0, general: true)

        # The `rax` 64bit "accumulator" register.
        RAX =  Register.new(:rax, width: 8, number: 0, general: true)

        # The `bl` 8bit "base" register.
        BL  = Register.new(:bl, width: 1, number: 3, general: true)

        # The `bh` 8bit "base" register.
        BH  = Register.new(:bh, width: 1, number: 7, general: true)

        # The `bx` 16bit "base" register.
        BX  = Register.new(:bx, width: 2, number: 3, general: true)

        # The `ebx` 32bit "base" register.
        EBX = Register.new(:ebx, width: 4, number: 3, general: true)

        # The `rbx` 64bit "accumulator" register.
        RBX =  Register.new(:rbx, width: 8, number: 3, general: true)

        # The `cl` 8bit "counter" register.
        CL  = Register.new(:cl, width: 1, number: 1, general: true)

        # The `ch` 8bit "counter" register.
        CH  = Register.new(:ch, width: 1, number: 5, general: true)

        # The `cx` 16bit "counter" register.
        CX  = Register.new(:cx, width: 2, number: 1, general: true)

        # The `ecx` 32bit "counter" register.
        ECX = Register.new(:ecx, width: 4, number: 1, general: true)

        # The `rcx` 64bit "accumulator" register.
        RCX =  Register.new(:rcx, width: 8, number: 1, general: true)

        # The `dl` 8bit "data" register.
        DL  = Register.new(:dl, width: 1, number: 2, general: true)

        # The `dh` 8bit "data" register.
        DH  = Register.new(:dh, width: 1, number: 6, general: true)

        # The `dx` 16bit "data" register.
        DX  = Register.new(:dx, width: 2, number: 2, general: true)

        # The `edx` 32bit "data" register.
        EDX = Register.new(:edx, width: 4, number: 2, general: true)

        # The `rdx` 64bit "accumulator" register.
        RDX =  Register.new(:rdx, width: 8, number: 2, general: true)

        # The `sil` 8bit "source" register.
        SIL = Register.new(:sil, width: 1, number: 6, general: true)

        # The `si` 16bit "source" register.
        SI  = Register.new(:si, width: 2, number: 6, general: true)

        # The `esi` 32bit "source" register.
        ESI = Register.new(:esi, width: 4, number: 6, general: true)

        # The `rsi` 64bit "source" register.
        RSI =  Register.new(:rsi, width: 8, number: 6, general: true)

        # The `dil` 8bit "destination" register.
        DIL = Register.new(:dil, width: 1, number: 7, general: true)

        # The `di` 16bit "destination" register.
        DI  = Register.new(:di, width: 2, number: 7, general: true)

        # The `edi` 32bit "destination" register.
        EDI = Register.new(:edi, width: 4, number: 7, general: true)

        # The `rdi` 64bit "destination" register.
        RDI =  Register.new(:rdi, width: 8, number: 7, general: true)

        #
        # @group Extended Registers
        #

        R8B =  Register.new(:r8b, width: 1, number: 8, general: true)
        R8W =  Register.new(:r8w, width: 2, number: 8, general: true)
        R8D =  Register.new(:r8d, width: 4, number: 8, general: true)
        R8  =  Register.new(:r8, width: 8, number: 8, general: true)

        R9B =  Register.new(:r9b, width: 1, number: 9, general: true)
        R9W =  Register.new(:r9w, width: 2, number: 9, general: true)
        R9D =  Register.new(:r9d, width: 4, number: 9, general: true)
        R9  =  Register.new(:r9, width: 8, number: 9, general: true)

        R10B =  Register.new(:r10b, width: 1, number: 10, general: true)
        R10W =  Register.new(:r10w, width: 2, number: 10, general: true)
        R10D =  Register.new(:r10d, width: 4, number: 10, general: true)
        R10  =  Register.new(:r10, width: 8, number: 10, general: true)

        R11B =  Register.new(:r11b, width: 1, number: 11, general: true)
        R11W =  Register.new(:r11w, width: 2, number: 11, general: true)
        R11D =  Register.new(:r11d, width: 4, number: 11, general: true)
        R11  =  Register.new(:r11, width: 8, number: 11, general: true)

        R12B =  Register.new(:r12b, width: 1, number: 12, general: true)
        R12W =  Register.new(:r12w, width: 2, number: 12, general: true)
        R12D =  Register.new(:r12d, width: 4, number: 12, general: true)
        R12  =  Register.new(:r12, width: 8, number: 12, general: true)

        R13B =  Register.new(:r13b, width: 1, number: 13, general: true)
        R13W =  Register.new(:r13w, width: 2, number: 13, general: true)
        R13D =  Register.new(:r13d, width: 4, number: 13, general: true)
        R13  =  Register.new(:r13, width: 8, number: 13, general: true)

        R14B =  Register.new(:r14b, width: 1, number: 14, general: true)
        R14W =  Register.new(:r14w, width: 2, number: 14, general: true)
        R14D =  Register.new(:r14d, width: 4, number: 14, general: true)
        R14  =  Register.new(:r14, width: 8, number: 14, general: true)

        R15B =  Register.new(:r15b, width: 1, number: 15, general: true)
        R15W =  Register.new(:r15w, width: 2, number: 15, general: true)
        R15D =  Register.new(:r15d, width: 4, number: 15, general: true)
        R15  =  Register.new(:r15, width: 8, number: 15, general: true)

        #
        # @group Stack Registers.
        #

        # The `spl` 8bit stack pointer register.
        SPL = Register.new(:sp, width: 1, number: 4)

        # The `sp` 16bit stack pointer register.
        SP  = Register.new(:sp, width: 2, number: 4)

        # The `esp` 32bit stack pointer register.
        ESP = Register.new(:esp, width: 4, number: 4)

        # The `rsp` 64bit stack pointer register.
        RSP =  Register.new(:rsp, width: 8, number: 4)

        # The `bpl` 8bit stack base pointer register.
        BPL = Register.new(:sp, width: 1, number: 5)

        # The `bp` 16bit stack base pointer register.
        BP  = Register.new(:bp, width: 2, number: 5)

        # The `ebp` 32bit stack base pointer register.
        EBP = Register.new(:ebp, width: 4, number: 5)

        # The `rbp` 64bit stack base pointer register.
        RBP =  Register.new(:rbp, width: 8, number: 5)

        #
        # @group Segment Registers
        #

        # The `cs` 16bit Code Segment register.
        CS = Register.new(:cs, width: 2, number: 1)

        # The `ds` 16bit Data Segment register.
        DS = Register.new(:ds, width: 2, number: 3)

        # The `es` 16bit Extra Segment register.
        ES =  Register.new(:es, width: 2, number: 0)

        # The `fs` 16bit F Segment register.
        FS =  Register.new(:fs, width: 2, number: 4)

        # The `gs` 16bit G Segment register.
        GS = Register.new(:gs, width: 2, number: 5)

        # The `ss` 16bit Stack Segment register.
        SS = Register.new(:ss, width: 2, number: 2)
      end
    end
  end
end
