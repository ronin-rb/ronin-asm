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
require_relative 'ip_register'

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
        AL  = Register.new(:al, size: 1, number: 0, general_purpose: true)

        # The `ah` 8bit "accumulator" register.
        AH  = Register.new(:ah, size: 1, number: 4, general_purpose: true)

        # The `ax` 16bit "accumulator" register.
        AX  = Register.new(:ax, size: 2, number: 0, general_purpose: true)

        # The `eax` 32bit "accumulator" register.
        EAX = Register.new(:eax, size: 4, number: 0, general_purpose: true)

        # The `rax` 64bit "accumulator" register.
        RAX =  Register.new(:rax, size: 8, number: 0, general_purpose: true)

        # The `bl` 8bit "base" register.
        BL  = Register.new(:bl, size: 1, number: 3, general_purpose: true)

        # The `bh` 8bit "base" register.
        BH  = Register.new(:bh, size: 1, number: 7, general_purpose: true)

        # The `bx` 16bit "base" register.
        BX  = Register.new(:bx, size: 2, number: 3, general_purpose: true)

        # The `ebx` 32bit "base" register.
        EBX = Register.new(:ebx, size: 4, number: 3, general_purpose: true)

        # The `rbx` 64bit "accumulator" register.
        RBX =  Register.new(:rbx, size: 8, number: 3, general_purpose: true)

        # The `cl` 8bit "counter" register.
        CL  = Register.new(:cl, size: 1, number: 1, general_purpose: true)

        # The `ch` 8bit "counter" register.
        CH  = Register.new(:ch, size: 1, number: 5, general_purpose: true)

        # The `cx` 16bit "counter" register.
        CX  = Register.new(:cx, size: 2, number: 1, general_purpose: true)

        # The `ecx` 32bit "counter" register.
        ECX = Register.new(:ecx, size: 4, number: 1, general_purpose: true)

        # The `rcx` 64bit "accumulator" register.
        RCX =  Register.new(:rcx, size: 8, number: 1, general_purpose: true)

        # The `dl` 8bit "data" register.
        DL  = Register.new(:dl, size: 1, number: 2, general_purpose: true)

        # The `dh` 8bit "data" register.
        DH  = Register.new(:dh, size: 1, number: 6, general_purpose: true)

        # The `dx` 16bit "data" register.
        DX  = Register.new(:dx, size: 2, number: 2, general_purpose: true)

        # The `edx` 32bit "data" register.
        EDX = Register.new(:edx, size: 4, number: 2, general_purpose: true)

        # The `rdx` 64bit "accumulator" register.
        RDX =  Register.new(:rdx, size: 8, number: 2, general_purpose: true)

        # The `sil` 8bit "source" register.
        SIL = Register.new(:sil, size: 1, number: 6, general_purpose: true)

        # The `si` 16bit "source" register.
        SI  = Register.new(:si, size: 2, number: 6, general_purpose: true)

        # The `esi` 32bit "source" register.
        ESI = Register.new(:esi, size: 4, number: 6, general_purpose: true)

        # The `rsi` 64bit "source" register.
        RSI =  Register.new(:rsi, size: 8, number: 6, general_purpose: true)

        # The `dil` 8bit "destination" register.
        DIL = Register.new(:dil, size: 1, number: 7, general_purpose: true)

        # The `di` 16bit "destination" register.
        DI  = Register.new(:di, size: 2, number: 7, general_purpose: true)

        # The `edi` 32bit "destination" register.
        EDI = Register.new(:edi, size: 4, number: 7, general_purpose: true)

        # The `rdi` 64bit "destination" register.
        RDI =  Register.new(:rdi, size: 8, number: 7, general_purpose: true)

        #
        # @group Extended Registers
        #

        R8B =  Register.new(:r8b, size: 1, number: 8, general_purpose: true)
        R8W =  Register.new(:r8w, size: 2, number: 8, general_purpose: true)
        R8D =  Register.new(:r8d, size: 4, number: 8, general_purpose: true)
        R8  =  Register.new(:r8, size: 8, number: 8, general_purpose: true)

        R9B =  Register.new(:r9b, size: 1, number: 9, general_purpose: true)
        R9W =  Register.new(:r9w, size: 2, number: 9, general_purpose: true)
        R9D =  Register.new(:r9d, size: 4, number: 9, general_purpose: true)
        R9  =  Register.new(:r9, size: 8, number: 9, general_purpose: true)

        R10B =  Register.new(:r10b, size: 1, number: 10, general_purpose: true)
        R10W =  Register.new(:r10w, size: 2, number: 10, general_purpose: true)
        R10D =  Register.new(:r10d, size: 4, number: 10, general_purpose: true)
        R10  =  Register.new(:r10, size: 8, number: 10, general_purpose: true)

        R11B =  Register.new(:r11b, size: 1, number: 11, general_purpose: true)
        R11W =  Register.new(:r11w, size: 2, number: 11, general_purpose: true)
        R11D =  Register.new(:r11d, size: 4, number: 11, general_purpose: true)
        R11  =  Register.new(:r11, size: 8, number: 11, general_purpose: true)

        R12B =  Register.new(:r12b, size: 1, number: 12, general_purpose: true)
        R12W =  Register.new(:r12w, size: 2, number: 12, general_purpose: true)
        R12D =  Register.new(:r12d, size: 4, number: 12, general_purpose: true)
        R12  =  Register.new(:r12, size: 8, number: 12, general_purpose: true)

        R13B =  Register.new(:r13b, size: 1, number: 13, general_purpose: true)
        R13W =  Register.new(:r13w, size: 2, number: 13, general_purpose: true)
        R13D =  Register.new(:r13d, size: 4, number: 13, general_purpose: true)
        R13  =  Register.new(:r13, size: 8, number: 13, general_purpose: true)

        R14B =  Register.new(:r14b, size: 1, number: 14, general_purpose: true)
        R14W =  Register.new(:r14w, size: 2, number: 14, general_purpose: true)
        R14D =  Register.new(:r14d, size: 4, number: 14, general_purpose: true)
        R14  =  Register.new(:r14, size: 8, number: 14, general_purpose: true)

        R15B =  Register.new(:r15b, size: 1, number: 15, general_purpose: true)
        R15W =  Register.new(:r15w, size: 2, number: 15, general_purpose: true)
        R15D =  Register.new(:r15d, size: 4, number: 15, general_purpose: true)
        R15  =  Register.new(:r15, size: 8, number: 15, general_purpose: true)

        #
        # @group Stack Registers.
        #

        # The `spl` 8bit stack pointer register.
        SPL = Register.new(:sp, size: 1, number: 4, stack_pointer: true, general_purpose: true)

        # The `sp` 16bit stack pointer register.
        SP  = Register.new(:sp, size: 2, number: 4, stack_pointer: true, general_purpose: true)

        # The `esp` 32bit stack pointer register.
        ESP = Register.new(:esp, size: 4, number: 4, stack_pointer: true, general_purpose: true)

        # The `rsp` 64bit stack pointer register.
        RSP =  Register.new(:rsp, size: 8, number: 4, stack_pointer: true, general_purpose: true)

        # The `bpl` 8bit stack base pointer register.
        BPL = Register.new(:sp, size: 1, number: 5, base_pointer: true, general_purpose: true)

        # The `bp` 16bit stack base pointer register.
        BP  = Register.new(:bp, size: 2, number: 5, base_pointer: true, general_purpose: true)

        # The `ebp` 32bit stack base pointer register.
        EBP = Register.new(:ebp, size: 4, number: 5, base_pointer: true, general_purpose: true)

        # The `rbp` 64bit stack base pointer register.
        RBP =  Register.new(:rbp, size: 8, number: 5, base_pointer: true, general_purpose: true)

        #
        # @group Instruction Pointer Registers
        #

        # The `eip` 32bit instruction pointer register used for RIP-relative
        # addressing with 32bit instructions.
        EIP = IPRegister.new(:rip, size: 4, type: :eip)

        # The `rip` 64bit instruction pointer register used for RIP-relative
        # addressing.
        RIP = IPRegister.new(:rip, size: 8, type: :rip)

        #
        # @group Segment Registers
        #

        # The `cs` 16bit Code Segment register.
        CS = Register.new(:cs, size: 2, number: 1)

        # The `ds` 16bit Data Segment register.
        DS = Register.new(:ds, size: 2, number: 3)

        # The `es` 16bit Extra Segment register.
        ES =  Register.new(:es, size: 2, number: 0)

        # The `fs` 16bit F Segment register.
        FS =  Register.new(:fs, size: 2, number: 4)

        # The `gs` 16bit G Segment register.
        GS = Register.new(:gs, size: 2, number: 5)

        # The `ss` 16bit Stack Segment register.
        SS = Register.new(:ss, size: 2, number: 2)

        #
        # @group 64bit K opmask registers.
        #
        K0 = Register.new(:k0, size: 8, number: 0, type: :k)
        K1 = Register.new(:k1, size: 8, number: 1, type: :k)
        K2 = Register.new(:k2, size: 8, number: 2, type: :k)
        K3 = Register.new(:k3, size: 8, number: 3, type: :k)
        K4 = Register.new(:k4, size: 8, number: 4, type: :k)
        K5 = Register.new(:k5, size: 8, number: 5, type: :k)
        K6 = Register.new(:k6, size: 8, number: 6, type: :k)
        K7 = Register.new(:k7, size: 8, number: 7, type: :k)

        #
        # @group 64bit MMX Registers
        #
        MM0 = Register.new(:mmx0, size: 8, number: 0, type: :mmx)
        MM1 = Register.new(:mmx1, size: 8, number: 1, type: :mmx)
        MM2 = Register.new(:mmx2, size: 8, number: 2, type: :mmx)
        MM3 = Register.new(:mmx3, size: 8, number: 3, type: :mmx)
        MM4 = Register.new(:mmx4, size: 8, number: 4, type: :mmx)
        MM5 = Register.new(:mmx5, size: 8, number: 5, type: :mmx)
        MM6 = Register.new(:mmx6, size: 8, number: 6, type: :mmx)
        MM7 = Register.new(:mmx7, size: 8, number: 7, type: :mmx)

        #
        # @group 128bit XMM Registers
        #
        XMM0  = Register.new(:xmm0, size: 16, number: 0, type: :xmm)
        XMM1  = Register.new(:xmm1, size: 16, number: 1, type: :xmm)
        XMM2  = Register.new(:xmm2, size: 16, number: 2, type: :xmm)
        XMM3  = Register.new(:xmm3, size: 16, number: 3, type: :xmm)
        XMM4  = Register.new(:xmm4, size: 16, number: 4, type: :xmm)
        XMM5  = Register.new(:xmm5, size: 16, number: 5, type: :xmm)
        XMM6  = Register.new(:xmm6, size: 16, number: 6, type: :xmm)
        XMM7  = Register.new(:xmm7, size: 16, number: 7, type: :xmm)
        XMM8  = Register.new(:xmm8, size: 16, number: 8, type: :xmm)
        XMM9  = Register.new(:xmm9, size: 16, number: 9, type: :xmm)
        XMM10 = Register.new(:xmm10, size: 16, number: 10, type: :xmm)
        XMM11 = Register.new(:xmm11, size: 16, number: 11, type: :xmm)
        XMM12 = Register.new(:xmm12, size: 16, number: 12, type: :xmm)
        XMM13 = Register.new(:xmm13, size: 16, number: 13, type: :xmm)
        XMM14 = Register.new(:xmm14, size: 16, number: 14, type: :xmm)
        XMM15 = Register.new(:xmm15, size: 16, number: 15, type: :xmm)
        XMM16 = Register.new(:xmm16, size: 16, number: 16, type: :xmm)
        XMM17 = Register.new(:xmm17, size: 16, number: 17, type: :xmm)
        XMM18 = Register.new(:xmm18, size: 16, number: 18, type: :xmm)
        XMM19 = Register.new(:xmm19, size: 16, number: 19, type: :xmm)
        XMM20 = Register.new(:xmm20, size: 16, number: 20, type: :xmm)
        XMM21 = Register.new(:xmm21, size: 16, number: 21, type: :xmm)
        XMM22 = Register.new(:xmm22, size: 16, number: 22, type: :xmm)
        XMM23 = Register.new(:xmm23, size: 16, number: 23, type: :xmm)
        XMM24 = Register.new(:xmm24, size: 16, number: 24, type: :xmm)
        XMM25 = Register.new(:xmm25, size: 16, number: 25, type: :xmm)
        XMM26 = Register.new(:xmm26, size: 16, number: 26, type: :xmm)
        XMM27 = Register.new(:xmm27, size: 16, number: 27, type: :xmm)
        XMM28 = Register.new(:xmm28, size: 16, number: 28, type: :xmm)
        XMM29 = Register.new(:xmm29, size: 16, number: 29, type: :xmm)
        XMM30 = Register.new(:xmm30, size: 16, number: 30, type: :xmm)
        XMM31 = Register.new(:xmm31, size: 16, number: 31, type: :xmm)

        #
        # @group 256bit YMM Registers
        #
        YMM0  = Register.new(:ymm0, size: 32, number: 0, type: :ymm)
        YMM1  = Register.new(:ymm1, size: 32, number: 1, type: :ymm)
        YMM2  = Register.new(:ymm2, size: 32, number: 2, type: :ymm)
        YMM3  = Register.new(:ymm3, size: 32, number: 3, type: :ymm)
        YMM4  = Register.new(:ymm4, size: 32, number: 4, type: :ymm)
        YMM5  = Register.new(:ymm5, size: 32, number: 5, type: :ymm)
        YMM6  = Register.new(:ymm6, size: 32, number: 6, type: :ymm)
        YMM7  = Register.new(:ymm7, size: 32, number: 7, type: :ymm)
        YMM8  = Register.new(:ymm8, size: 32, number: 8, type: :ymm)
        YMM9  = Register.new(:ymm9, size: 32, number: 9, type: :ymm)
        YMM10  = Register.new(:ymm10, size: 32, number: 10, type: :ymm)
        YMM11  = Register.new(:ymm11, size: 32, number: 11, type: :ymm)
        YMM12  = Register.new(:ymm12, size: 32, number: 12, type: :ymm)
        YMM13  = Register.new(:ymm13, size: 32, number: 13, type: :ymm)
        YMM14  = Register.new(:ymm14, size: 32, number: 14, type: :ymm)
        YMM15  = Register.new(:ymm15, size: 32, number: 15, type: :ymm)
        YMM16  = Register.new(:ymm16, size: 32, number: 16, type: :ymm)
        YMM17  = Register.new(:ymm17, size: 32, number: 17, type: :ymm)
        YMM18  = Register.new(:ymm18, size: 32, number: 18, type: :ymm)
        YMM19  = Register.new(:ymm19, size: 32, number: 19, type: :ymm)
        YMM20  = Register.new(:ymm20, size: 32, number: 20, type: :ymm)
        YMM21  = Register.new(:ymm21, size: 32, number: 21, type: :ymm)
        YMM22  = Register.new(:ymm22, size: 32, number: 22, type: :ymm)
        YMM23  = Register.new(:ymm23, size: 32, number: 23, type: :ymm)
        YMM24  = Register.new(:ymm24, size: 32, number: 24, type: :ymm)
        YMM25  = Register.new(:ymm25, size: 32, number: 25, type: :ymm)
        YMM26  = Register.new(:ymm26, size: 32, number: 26, type: :ymm)
        YMM27  = Register.new(:ymm27, size: 32, number: 27, type: :ymm)
        YMM28  = Register.new(:ymm28, size: 32, number: 28, type: :ymm)
        YMM29  = Register.new(:ymm29, size: 32, number: 29, type: :ymm)
        YMM30  = Register.new(:ymm30, size: 32, number: 30, type: :ymm)
        YMM31  = Register.new(:ymm31, size: 32, number: 31, type: :ymm)

        #
        # @group 512bit ZMM Registers
        #
        ZMM0  = Register.new(:zmm0, size: 64, number: 0, type: :zmm)
        ZMM1  = Register.new(:zmm1, size: 64, number: 1, type: :zmm)
        ZMM2  = Register.new(:zmm2, size: 64, number: 2, type: :zmm)
        ZMM3  = Register.new(:zmm3, size: 64, number: 3, type: :zmm)
        ZMM4  = Register.new(:zmm4, size: 64, number: 4, type: :zmm)
        ZMM5  = Register.new(:zmm5, size: 64, number: 5, type: :zmm)
        ZMM6  = Register.new(:zmm6, size: 64, number: 6, type: :zmm)
        ZMM7  = Register.new(:zmm7, size: 64, number: 7, type: :zmm)
        ZMM8  = Register.new(:zmm8, size: 64, number: 8, type: :zmm)
        ZMM9  = Register.new(:zmm9, size: 64, number: 9, type: :zmm)
        ZMM10  = Register.new(:zmm10, size: 64, number: 10, type: :zmm)
        ZMM11  = Register.new(:zmm11, size: 64, number: 11, type: :zmm)
        ZMM12  = Register.new(:zmm12, size: 64, number: 12, type: :zmm)
        ZMM13  = Register.new(:zmm13, size: 64, number: 13, type: :zmm)
        ZMM14  = Register.new(:zmm14, size: 64, number: 14, type: :zmm)
        ZMM15  = Register.new(:zmm15, size: 64, number: 15, type: :zmm)
        ZMM16  = Register.new(:zmm16, size: 64, number: 16, type: :zmm)
        ZMM17  = Register.new(:zmm17, size: 64, number: 17, type: :zmm)
        ZMM18  = Register.new(:zmm18, size: 64, number: 18, type: :zmm)
        ZMM19  = Register.new(:zmm19, size: 64, number: 19, type: :zmm)
        ZMM20  = Register.new(:zmm20, size: 64, number: 20, type: :zmm)
        ZMM21  = Register.new(:zmm21, size: 64, number: 21, type: :zmm)
        ZMM22  = Register.new(:zmm22, size: 64, number: 22, type: :zmm)
        ZMM23  = Register.new(:zmm23, size: 64, number: 23, type: :zmm)
        ZMM24  = Register.new(:zmm24, size: 64, number: 24, type: :zmm)
        ZMM25  = Register.new(:zmm25, size: 64, number: 25, type: :zmm)
        ZMM26  = Register.new(:zmm26, size: 64, number: 26, type: :zmm)
        ZMM27  = Register.new(:zmm27, size: 64, number: 27, type: :zmm)
        ZMM28  = Register.new(:zmm28, size: 64, number: 28, type: :zmm)
        ZMM29  = Register.new(:zmm29, size: 64, number: 29, type: :zmm)
        ZMM30  = Register.new(:zmm30, size: 64, number: 30, type: :zmm)
        ZMM31  = Register.new(:zmm31, size: 64, number: 31, type: :zmm)

        #
        # @group 1024bit (16x16x32bits) Tile Registers
        #
        TMM0 = Register.new(:tmm0, size: 1024, number: 0, type: :tmm)
        TMM1 = Register.new(:tmm1, size: 1024, number: 1, type: :tmm)
        TMM2 = Register.new(:tmm2, size: 1024, number: 2, type: :tmm)
        TMM3 = Register.new(:tmm3, size: 1024, number: 3, type: :tmm)
        TMM4 = Register.new(:tmm4, size: 1024, number: 4, type: :tmm)
        TMM5 = Register.new(:tmm5, size: 1024, number: 5, type: :tmm)
        TMM6 = Register.new(:tmm6, size: 1024, number: 6, type: :tmm)
        TMM7 = Register.new(:tmm7, size: 1024, number: 7, type: :tmm)
      end
    end
  end
end
