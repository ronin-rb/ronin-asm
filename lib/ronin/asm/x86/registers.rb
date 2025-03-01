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
        AL  = Register.new(:al, size: 1, number: 0, general: true)

        # The `ah` 8bit "accumulator" register.
        AH  = Register.new(:ah, size: 1, number: 4, general: true)

        # The `ax` 16bit "accumulator" register.
        AX  = Register.new(:ax, size: 2, number: 0, general: true)

        # The `eax` 32bit "accumulator" register.
        EAX = Register.new(:eax, size: 4, number: 0, general: true)

        # The `bl` 8bit "base" register.
        BL  = Register.new(:bl, size: 1, number: 3, general: true)

        # The `bh` 8bit "base" register.
        BH  = Register.new(:bh, size: 1, number: 7, general: true)

        # The `bx` 16bit "base" register.
        BX  = Register.new(:bx, size: 2, number: 3, general: true)

        # The `ebx` 32bit "base" register.
        EBX = Register.new(:ebx, size: 4, number: 3, general: true)

        # The `cl` 8bit "counter" register.
        CL  = Register.new(:cl, size: 1, number: 1, general: true)

        # The `ch` 8bit "counter" register.
        CH  = Register.new(:ch, size: 1, number: 5, general: true)

        # The `cx` 16bit "counter" register.
        CX  = Register.new(:cx, size: 2, number: 1, general: true)

        # The `ecx` 32bit "counter" register.
        ECX = Register.new(:ecx, size: 4, number: 1, general: true)

        # The `dl` 8bit "data" register.
        DL  = Register.new(:dl, size: 1, number: 2, general: true)

        # The `dh` 8bit "data" register.
        DH  = Register.new(:dh, size: 1, number: 6, general: true)

        # The `dx` 16bit "data" register.
        DX  = Register.new(:dx, size: 2, number: 2, general: true)

        # The `edx` 32bit "data" register.
        EDX = Register.new(:edx, size: 4, number: 2, general: true)

        # The `sil` 8bit "source" register.
        SIL = Register.new(:sil, size: 1, number: 6, general: true)

        # The `si` 16bit "source" register.
        SI  = Register.new(:si, size: 2, number: 6, general: true)

        # The `esi` 32bit "source" register.
        ESI = Register.new(:esi, size: 4, number: 6, general: true)

        # The `dil` 8bit "destination" register.
        DIL = Register.new(:dil, size: 1, number: 7, general: true)

        # The `di` 16bit "destination" register.
        DI  = Register.new(:di, size: 2, number: 7, general: true)

        # The `edi` 32bit "destination" register.
        EDI = Register.new(:edi, size: 4, number: 7, general: true)

        #
        # @group Stack Registers.
        #

        # The `spl` 8bit stack pointer register.
        SPL = Register.new(:sp, size: 1, number: 4, sp: true, general: true)

        # The `sp` 16bit stack pointer register.
        SP  = Register.new(:sp, size: 2, number: 4, sp: true, general: true)

        # The `esp` 32bit stack pointer register.
        ESP = Register.new(:esp, size: 4, number: 4, sp: true, general: true)

        # The `bpl` 8bit stack base pointer register.
        BPL = Register.new(:sp, size: 1, number: 5, bp: true, general: true)

        # The `bp` 16bit stack base pointer register.
        BP  = Register.new(:bp, size: 2, number: 5, bp: true, general: true)

        # The `ebp` 32bit stack base pointer register.
        EBP = Register.new(:ebp, size: 4, number: 5, bp: true, general: true)

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
      end
    end
  end
end
