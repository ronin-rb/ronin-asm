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

require_relative 'x86/registers'

module Ronin
  module ASM
    #
    # Contains X86 Architecture information.
    #
    module X86
      # Default word size
      WORD_SIZE = 4

      # X86 registers
      REGISTERS = {
        al:  Registers::AL,
        ah:  Registers::AH,
        ax:  Registers::AX,
        eax: Registers::EAX,

        bl:  Registers::BL,
        bh:  Registers::BH,
        bx:  Registers::BX,
        ebx: Registers::EBX,

        cl:  Registers::CL,
        ch:  Registers::CH,
        cx:  Registers::CX,
        ecx: Registers::ECX,

        dl:  Registers::DL,
        dh:  Registers::DH,
        dx:  Registers::DX,
        edx: Registers::EDX,

        sil: Registers::SIL,
        si:  Registers::SI,
        esi: Registers::ESI,

        dil: Registers::DIL,
        di:  Registers::DI,
        edi: Registers::EDI,

        bpl: Registers::BPL,
        bp:  Registers::BP,
        ebp: Registers::EBP,

        spl: Registers::SPL,
        sp:  Registers::SP,
        esp: Registers::ESP,

        cs: Registers::CS,
        ds: Registers::DS,
        es: Registers::ES,
        fs: Registers::FS,
        gs: Registers::GS,
        ss: Registers::SS
      }

      #
      # @group Register Methods
      #

      # The `al` 8bit "accumulator" register.
      def al = Registers::AL

      # The `ah` 8bit "accumulator" register.
      def ah = Registers::AH

      # The `ax` 16bit "accumulator" register.
      def ax = Registers::AX

      # The `eax` 32bit "accumulator" register.
      def eax = Registers::EAX

      # The `bl` 8bit "base" register.
      def bl = Registers::BL

      # The `bh` 8bit "base" register.
      def bh = Registers::BH

      # The `bx` 16bit "base" register.
      def bx = Registers::BX

      # The `ebx` 32bit "base" register.
      def ebx = Registers::EBX

      # The `cl` 8bit "counter" register.
      def cl = Registers::CL

      # The `ch` 8bit "counter" register.
      def ch = Registers::CH

      # The `cx` 16bit "counter" register.
      def cx = Registers::CX

      # The `ecx` 32bit "counter" register.
      def ecx = Registers::ECX

      # The `dl` 8bit "data" register.
      def dl = Registers::DL

      # The `dh` 8bit "data" register.
      def dh = Registers::DH

      # The `dx` 16bit "data" register.
      def dx = Registers::DX

      # The `edx` 32bit "data" register.
      def edx = Registers::EDX

      # The `sil` 8bit "source" register.
      def sil = Registers::SIL

      # The `si` 16bit "source" register.
      def si = Registers::SI

      # The `esi` 32bit "source" register.
      def esi = Registers::ESI

      # The `dil` 8bit "destination" register.
      def dil = Registers::DIL

      # The `di` 16bit "destination" register.
      def di = Registers::DI

      # The `edi` 32bit "destination" register.
      def edi = Registers::EDI

      # The `bpl` 8bit stack base pointer register.
      def bpl = Registers::BPL

      # The `bp` 16bit stack base pointer register.
      def bp = Registers::BP

      # The `ebp` 32bit stack base pointer register.
      def ebp = Registers::EBP

      # The `spl` 8bit stack pointer register.
      def spl = Registers::SPL

      # The `sp` 16bit stack pointer register.
      def sp = Registers::SP

      # The `esp` 32bit stack pointer register.
      def esp = Registers::ESP

      # The `cs` 16bit Code Segment register.
      def cs = Registers::CS

      # The `ds` 16bit Data Segment register.
      def ds = Registers::DS

      # The `es` 16bit Extra Segment register.
      def es = Registers::ES

      # The `fs` 16bit F Segment register.
      def fs = Registers::FS

      # The `gs` 16bit G Segment register.
      def gs = Registers::GS

      # The `ss` 16bit Stack Segment register.
      def ss = Registers::SS

      #
      # @group Internal Methods
      #

      #
      # Generates the instruction to trigger an interrupt.
      #
      # @param [Integer] number
      #   The interrupt number.
      #
      def interrupt(number); instruction(:int,number); end

      #
      # Generates the instruction to invoke a syscall.
      #
      def syscall; interrupt(0x80); end

      #
      # The Stack Base Pointer register.
      #
      # @see #ebp
      #
      def stack_base; Registers::EBP; end

      #
      # The Stack Pointer register.
      #
      # @see #esp
      #
      def stack_pointer; Registers::ESP; end

      #
      # Generates the instruction to push a value onto the Stack.
      #
      # @param [Immediate, Memory, Register, Integer, Symbol] op
      #   The value.
      #
      def stack_push(op); instruction(:push,op); end

      #
      # Generates the instruction to pop a value off of the Stack.
      #
      # @param [Register] op
      #   The register operand to store the value.
      #
      def stack_pop(op); instruction(:pop,op); end

      #
      # Generates the instruction to clear a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      def register_clear(name)
        instruction(:xor,register(name),register(name))
      end

      #
      # Generates the instruction to set a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      # @param [Immediate, Memory, Register, Integer, Symbol] value
      #   The value to set.
      #
      def register_set(name,value)
        instruction(:mov,register(name),value)
      end

      #
      # Generates the instruction to save a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      def register_save(name)
        stack_push(register(name))
      end

      #
      # Generates the instruction to restore a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      def register_load(name)
        stack_pop(register(name))
      end
    end
  end
end
