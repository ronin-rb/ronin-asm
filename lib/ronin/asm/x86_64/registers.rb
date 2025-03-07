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
        SPL = Register.new(:sp, width: 1, number: 4, sp: true, general: true)

        # The `sp` 16bit stack pointer register.
        SP  = Register.new(:sp, width: 2, number: 4, sp: true, general: true)

        # The `esp` 32bit stack pointer register.
        ESP = Register.new(:esp, width: 4, number: 4, sp: true, general: true)

        # The `rsp` 64bit stack pointer register.
        RSP =  Register.new(:rsp, width: 8, number: 4, sp: true, general: true)

        # The `bpl` 8bit stack base pointer register.
        BPL = Register.new(:sp, width: 1, number: 5, bp: true, general: true)

        # The `bp` 16bit stack base pointer register.
        BP  = Register.new(:bp, width: 2, number: 5, bp: true, general: true)

        # The `ebp` 32bit stack base pointer register.
        EBP = Register.new(:ebp, width: 4, number: 5, bp: true, general: true)

        # The `rbp` 64bit stack base pointer register.
        RBP =  Register.new(:rbp, width: 8, number: 5, bp: true, general: true)

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

        #
        # @group 64bit K opmask registers.
        #
        K0 = Register.new(:k0, width: 8, number: 0, type: :k)
        K1 = Register.new(:k1, width: 8, number: 1, type: :k)
        K2 = Register.new(:k2, width: 8, number: 2, type: :k)
        K3 = Register.new(:k3, width: 8, number: 3, type: :k)
        K4 = Register.new(:k4, width: 8, number: 4, type: :k)
        K5 = Register.new(:k5, width: 8, number: 5, type: :k)
        K6 = Register.new(:k6, width: 8, number: 6, type: :k)
        K7 = Register.new(:k7, width: 8, number: 7, type: :k)

        #
        # @group 64bit MMX Registers
        #
        MM0 = Register.new(:mmx0, width: 8, number: 0, type: :mm)
        MM1 = Register.new(:mmx1, width: 8, number: 1, type: :mm)
        MM2 = Register.new(:mmx2, width: 8, number: 2, type: :mm)
        MM3 = Register.new(:mmx3, width: 8, number: 3, type: :mm)
        MM4 = Register.new(:mmx4, width: 8, number: 4, type: :mm)
        MM5 = Register.new(:mmx5, width: 8, number: 5, type: :mm)
        MM6 = Register.new(:mmx6, width: 8, number: 6, type: :mm)
        MM7 = Register.new(:mmx7, width: 8, number: 7, type: :mm)

        #
        # @group 128bit XMM Registers
        #
        XMM0  = Register.new(:xmm0, width: 16, number: 0, type: :xmm)
        XMM1  = Register.new(:xmm1, width: 16, number: 1, type: :xmm)
        XMM2  = Register.new(:xmm2, width: 16, number: 2, type: :xmm)
        XMM3  = Register.new(:xmm3, width: 16, number: 3, type: :xmm)
        XMM4  = Register.new(:xmm4, width: 16, number: 4, type: :xmm)
        XMM5  = Register.new(:xmm5, width: 16, number: 5, type: :xmm)
        XMM6  = Register.new(:xmm6, width: 16, number: 6, type: :xmm)
        XMM7  = Register.new(:xmm7, width: 16, number: 7, type: :xmm)
        XMM8  = Register.new(:xmm8, width: 16, number: 8, type: :xmm)
        XMM9  = Register.new(:xmm9, width: 16, number: 9, type: :xmm)
        XMM10 = Register.new(:xmm10, width: 16, number: 10, type: :xmm)
        XMM11 = Register.new(:xmm11, width: 16, number: 11, type: :xmm)
        XMM12 = Register.new(:xmm12, width: 16, number: 12, type: :xmm)
        XMM13 = Register.new(:xmm13, width: 16, number: 13, type: :xmm)
        XMM14 = Register.new(:xmm14, width: 16, number: 14, type: :xmm)
        XMM15 = Register.new(:xmm15, width: 16, number: 15, type: :xmm)
        XMM16 = Register.new(:xmm16, width: 16, number: 16, type: :xmm)
        XMM17 = Register.new(:xmm17, width: 16, number: 17, type: :xmm)
        XMM18 = Register.new(:xmm18, width: 16, number: 18, type: :xmm)
        XMM19 = Register.new(:xmm19, width: 16, number: 19, type: :xmm)
        XMM20 = Register.new(:xmm20, width: 16, number: 20, type: :xmm)
        XMM21 = Register.new(:xmm21, width: 16, number: 21, type: :xmm)
        XMM22 = Register.new(:xmm22, width: 16, number: 22, type: :xmm)
        XMM23 = Register.new(:xmm23, width: 16, number: 23, type: :xmm)
        XMM24 = Register.new(:xmm24, width: 16, number: 24, type: :xmm)
        XMM25 = Register.new(:xmm25, width: 16, number: 25, type: :xmm)
        XMM26 = Register.new(:xmm26, width: 16, number: 26, type: :xmm)
        XMM27 = Register.new(:xmm27, width: 16, number: 27, type: :xmm)
        XMM28 = Register.new(:xmm28, width: 16, number: 28, type: :xmm)
        XMM29 = Register.new(:xmm29, width: 16, number: 29, type: :xmm)
        XMM30 = Register.new(:xmm30, width: 16, number: 30, type: :xmm)
        XMM31 = Register.new(:xmm31, width: 16, number: 31, type: :xmm)

        #
        # @group 256bit YMM Registers
        #
        YMM0  = Register.new(:ymm0, width: 32, number: 0, type: :ymm)
        YMM1  = Register.new(:ymm1, width: 32, number: 1, type: :ymm)
        YMM2  = Register.new(:ymm2, width: 32, number: 2, type: :ymm)
        YMM3  = Register.new(:ymm3, width: 32, number: 3, type: :ymm)
        YMM4  = Register.new(:ymm4, width: 32, number: 4, type: :ymm)
        YMM5  = Register.new(:ymm5, width: 32, number: 5, type: :ymm)
        YMM6  = Register.new(:ymm6, width: 32, number: 6, type: :ymm)
        YMM7  = Register.new(:ymm7, width: 32, number: 7, type: :ymm)
        YMM8  = Register.new(:ymm8, width: 32, number: 8, type: :ymm)
        YMM9  = Register.new(:ymm9, width: 32, number: 9, type: :ymm)
        YMM10  = Register.new(:ymm10, width: 32, number: 10, type: :ymm)
        YMM11  = Register.new(:ymm11, width: 32, number: 11, type: :ymm)
        YMM12  = Register.new(:ymm12, width: 32, number: 12, type: :ymm)
        YMM13  = Register.new(:ymm13, width: 32, number: 13, type: :ymm)
        YMM14  = Register.new(:ymm14, width: 32, number: 14, type: :ymm)
        YMM15  = Register.new(:ymm15, width: 32, number: 15, type: :ymm)
        YMM16  = Register.new(:ymm16, width: 32, number: 16, type: :ymm)
        YMM17  = Register.new(:ymm17, width: 32, number: 17, type: :ymm)
        YMM18  = Register.new(:ymm18, width: 32, number: 18, type: :ymm)
        YMM19  = Register.new(:ymm19, width: 32, number: 19, type: :ymm)
        YMM20  = Register.new(:ymm20, width: 32, number: 20, type: :ymm)
        YMM21  = Register.new(:ymm21, width: 32, number: 21, type: :ymm)
        YMM22  = Register.new(:ymm22, width: 32, number: 22, type: :ymm)
        YMM23  = Register.new(:ymm23, width: 32, number: 23, type: :ymm)
        YMM24  = Register.new(:ymm24, width: 32, number: 24, type: :ymm)
        YMM25  = Register.new(:ymm25, width: 32, number: 25, type: :ymm)
        YMM26  = Register.new(:ymm26, width: 32, number: 26, type: :ymm)
        YMM27  = Register.new(:ymm27, width: 32, number: 27, type: :ymm)
        YMM28  = Register.new(:ymm28, width: 32, number: 28, type: :ymm)
        YMM29  = Register.new(:ymm29, width: 32, number: 29, type: :ymm)
        YMM30  = Register.new(:ymm30, width: 32, number: 30, type: :ymm)
        YMM31  = Register.new(:ymm31, width: 32, number: 31, type: :ymm)

        #
        # @group 512bit ZMM Registers
        #
        ZMM0  = Register.new(:zmm0, width: 64, number: 0, type: :zmm)
        ZMM1  = Register.new(:zmm1, width: 64, number: 1, type: :zmm)
        ZMM2  = Register.new(:zmm2, width: 64, number: 2, type: :zmm)
        ZMM3  = Register.new(:zmm3, width: 64, number: 3, type: :zmm)
        ZMM4  = Register.new(:zmm4, width: 64, number: 4, type: :zmm)
        ZMM5  = Register.new(:zmm5, width: 64, number: 5, type: :zmm)
        ZMM6  = Register.new(:zmm6, width: 64, number: 6, type: :zmm)
        ZMM7  = Register.new(:zmm7, width: 64, number: 7, type: :zmm)
        ZMM8  = Register.new(:zmm8, width: 64, number: 8, type: :zmm)
        ZMM9  = Register.new(:zmm9, width: 64, number: 9, type: :zmm)
        ZMM10  = Register.new(:zmm10, width: 64, number: 10, type: :zmm)
        ZMM11  = Register.new(:zmm11, width: 64, number: 11, type: :zmm)
        ZMM12  = Register.new(:zmm12, width: 64, number: 12, type: :zmm)
        ZMM13  = Register.new(:zmm13, width: 64, number: 13, type: :zmm)
        ZMM14  = Register.new(:zmm14, width: 64, number: 14, type: :zmm)
        ZMM15  = Register.new(:zmm15, width: 64, number: 15, type: :zmm)
        ZMM16  = Register.new(:zmm16, width: 64, number: 16, type: :zmm)
        ZMM17  = Register.new(:zmm17, width: 64, number: 17, type: :zmm)
        ZMM18  = Register.new(:zmm18, width: 64, number: 18, type: :zmm)
        ZMM19  = Register.new(:zmm19, width: 64, number: 19, type: :zmm)
        ZMM20  = Register.new(:zmm20, width: 64, number: 20, type: :zmm)
        ZMM21  = Register.new(:zmm21, width: 64, number: 21, type: :zmm)
        ZMM22  = Register.new(:zmm22, width: 64, number: 22, type: :zmm)
        ZMM23  = Register.new(:zmm23, width: 64, number: 23, type: :zmm)
        ZMM24  = Register.new(:zmm24, width: 64, number: 24, type: :zmm)
        ZMM25  = Register.new(:zmm25, width: 64, number: 25, type: :zmm)
        ZMM26  = Register.new(:zmm26, width: 64, number: 26, type: :zmm)
        ZMM27  = Register.new(:zmm27, width: 64, number: 27, type: :zmm)
        ZMM28  = Register.new(:zmm28, width: 64, number: 28, type: :zmm)
        ZMM29  = Register.new(:zmm29, width: 64, number: 29, type: :zmm)
        ZMM30  = Register.new(:zmm30, width: 64, number: 30, type: :zmm)
        ZMM31  = Register.new(:zmm31, width: 64, number: 31, type: :zmm)
      end
    end
  end
end
