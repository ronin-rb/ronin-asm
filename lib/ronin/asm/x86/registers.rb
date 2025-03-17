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
    module X86
      #
      # x86 register constants.
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

        # The `bl` 8bit "base" register.
        BL  = Register.new(:bl, size: 1, number: 3, general_purpose: true)

        # The `bh` 8bit "base" register.
        BH  = Register.new(:bh, size: 1, number: 7, general_purpose: true)

        # The `bx` 16bit "base" register.
        BX  = Register.new(:bx, size: 2, number: 3, general_purpose: true)

        # The `ebx` 32bit "base" register.
        EBX = Register.new(:ebx, size: 4, number: 3, general_purpose: true)

        # The `cl` 8bit "counter" register.
        CL  = Register.new(:cl, size: 1, number: 1, general_purpose: true)

        # The `ch` 8bit "counter" register.
        CH  = Register.new(:ch, size: 1, number: 5, general_purpose: true)

        # The `cx` 16bit "counter" register.
        CX  = Register.new(:cx, size: 2, number: 1, general_purpose: true)

        # The `ecx` 32bit "counter" register.
        ECX = Register.new(:ecx, size: 4, number: 1, general_purpose: true)

        # The `dl` 8bit "data" register.
        DL  = Register.new(:dl, size: 1, number: 2, general_purpose: true)

        # The `dh` 8bit "data" register.
        DH  = Register.new(:dh, size: 1, number: 6, general_purpose: true)

        # The `dx` 16bit "data" register.
        DX  = Register.new(:dx, size: 2, number: 2, general_purpose: true)

        # The `edx` 32bit "data" register.
        EDX = Register.new(:edx, size: 4, number: 2, general_purpose: true)

        # The `sil` 8bit "source" register.
        SIL = Register.new(:sil, size: 1, number: 6, general_purpose: true)

        # The `si` 16bit "source" register.
        SI  = Register.new(:si, size: 2, number: 6, general_purpose: true)

        # The `esi` 32bit "source" register.
        ESI = Register.new(:esi, size: 4, number: 6, general_purpose: true)

        # The `dil` 8bit "destination" register.
        DIL = Register.new(:dil, size: 1, number: 7, general_purpose: true)

        # The `di` 16bit "destination" register.
        DI  = Register.new(:di, size: 2, number: 7, general_purpose: true)

        # The `edi` 32bit "destination" register.
        EDI = Register.new(:edi, size: 4, number: 7, general_purpose: true)

        #
        # @group Stack Registers.
        #

        # The `spl` 8bit stack pointer register.
        SPL = Register.new(:sp, size: 1, number: 4, sp: true, general_purpose: true)

        # The `sp` 16bit stack pointer register.
        SP  = Register.new(:sp, size: 2, number: 4, sp: true, general_purpose: true)

        # The `esp` 32bit stack pointer register.
        ESP = Register.new(:esp, size: 4, number: 4, sp: true, general_purpose: true)

        # The `bpl` 8bit stack base pointer register.
        BPL = Register.new(:sp, size: 1, number: 5, bp: true, general_purpose: true)

        # The `bp` 16bit stack base pointer register.
        BP  = Register.new(:bp, size: 2, number: 5, bp: true, general_purpose: true)

        # The `ebp` 32bit stack base pointer register.
        EBP = Register.new(:ebp, size: 4, number: 5, bp: true, general_purpose: true)

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
        MM0 = Register.new(:mm0, size: 8, number: 0, type: :mm)
        MM1 = Register.new(:mm1, size: 8, number: 1, type: :mm)
        MM2 = Register.new(:mm2, size: 8, number: 2, type: :mm)
        MM3 = Register.new(:mm3, size: 8, number: 3, type: :mm)
        MM4 = Register.new(:mm4, size: 8, number: 4, type: :mm)
        MM5 = Register.new(:mm5, size: 8, number: 5, type: :mm)
        MM6 = Register.new(:mm6, size: 8, number: 6, type: :mm)
        MM7 = Register.new(:mm7, size: 8, number: 7, type: :mm)

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
      end
    end
  end
end
