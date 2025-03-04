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

require_relative 'x86/immediate'
require_relative 'x86/registers'
require_relative 'x86/memory'
require_relative 'x86/relative_offset'
require_relative 'x86/memory_offset'

require 'set'

module Ronin
  module ASM
    #
    # Contains x86 architecture information.
    #
    module X86
      # Default word size
      WORD_SIZE = 4

      # X86 registers
      REGISTERS = Set[
        Registers::AL,
        Registers::AH,
        Registers::AX,
        Registers::EAX,

        Registers::BL,
        Registers::BH,
        Registers::BX,
        Registers::EBX,

        Registers::CL,
        Registers::CH,
        Registers::CX,
        Registers::ECX,

        Registers::DL,
        Registers::DH,
        Registers::DX,
        Registers::EDX,

        Registers::SIL,
        Registers::SI,
        Registers::ESI,

        Registers::DIL,
        Registers::DI,
        Registers::EDI,

        Registers::BPL,
        Registers::BP,
        Registers::EBP,

        Registers::SPL,
        Registers::SP,
        Registers::ESP,

        Registers::CS,
        Registers::DS,
        Registers::ES,
        Registers::FS,
        Registers::GS,
        Registers::SS
      ]

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

      def k0 = Registers::K0
      def k1 = Registers::K1
      def k2 = Registers::K2
      def k3 = Registers::K3
      def k4 = Registers::K4
      def k5 = Registers::K5
      def k6 = Registers::K6
      def k7 = Registers::K7

      def mm0 = Registers::MM0
      def mm1 = Registers::MM1
      def mm2 = Registers::MM2
      def mm3 = Registers::MM3
      def mm4 = Registers::MM4
      def mm5 = Registers::MM5
      def mm6 = Registers::MM6
      def mm7 = Registers::MM7

      def xmm0 = Registers::XMM0
      def xmm1 = Registers::XMM1
      def xmm2 = Registers::XMM2
      def xmm3 = Registers::XMM3
      def xmm4 = Registers::XMM4
      def xmm5 = Registers::XMM5
      def xmm6 = Registers::XMM6
      def xmm7 = Registers::XMM7

      def ymm0 = Registers::YMM0
      def ymm1 = Registers::YMM1
      def ymm2 = Registers::YMM2
      def ymm3 = Registers::YMM3
      def ymm4 = Registers::YMM4
      def ymm5 = Registers::YMM5
      def ymm6 = Registers::YMM6
      def ymm7 = Registers::YMM7

      def zmm0 = Registers::ZMM0
      def zmm1 = Registers::ZMM1
      def zmm2 = Registers::ZMM2
      def zmm3 = Registers::ZMM3
      def zmm4 = Registers::ZMM4
      def zmm5 = Registers::ZMM5
      def zmm6 = Registers::ZMM6
      def zmm7 = Registers::ZMM7

      #
      # @group Type Methods
      #

      #
      # Explicitly creates an 8bit relative offset.
      #
      # @param [Integer] value
      # @return [RelativeOffset]
      # @since 1.0.0
      #
      def rel8(value) = RelativeOffset.new(value, width: 1)

      #
      # Explicitly creates an 32bit relative offset.
      #
      # @param [Integer] value
      # @return [RelativeOffset]
      # @since 1.0.0
      #
      def rel32(value) = RelativeOffset.new(value, width: 4)

      #
      # Explicitly creates an 32bit memory offset.
      #
      # @param [Integer] value
      # @return [MemoryOffset]
      # @since 1.0.0
      #
      def moffset32(value) = MemoryOffset.new(value, width: 4)

      #
      # Explicitly creates an 64bit memory offset.
      #
      # @param [Integer] value
      # @return [MemoryOffset]
      # @since 1.0.0
      #
      def moffset64(value) = MemoryOffset.new(value, width: 8)

      #
      # @group Internal Methods
      #

      #
      # Generates the instruction to trigger an interrupt.
      #
      # @param [Integer] number
      #   The interrupt number.
      #
      def interrupt(number) = instruction(:int,number)

      #
      # Generates the instruction to invoke a syscall.
      #
      def syscall = interrupt(0x80)

      #
      # The Stack Base Pointer register.
      #
      # @see #ebp
      #
      def stack_base = Registers::EBP

      #
      # The Stack Pointer register.
      #
      # @see #esp
      #
      def stack_pointer = Registers::ESP

      #
      # Generates the instruction to push a value onto the Stack.
      #
      # @param [Immediate, Memory, Register, Integer, Symbol] op
      #   The value.
      #
      def stack_push(op) = instruction(:push,op)

      #
      # Generates the instruction to pop a value off of the Stack.
      #
      # @param [Register] op
      #   The register operand to store the value.
      #
      def stack_pop(op) = instruction(:pop,op)

      #
      # Generates the instruction to clear a register.
      #
      # @param [Register] register
      #   The register to clear.
      #
      def register_clear(register) = instruction(:xor,register,register)

      #
      # Generates the instruction to set a register.
      #
      # @param [Register] register
      #   The register to set.
      #
      # @param [Immediate, Memory, Register, Integer, Symbol] value
      #   The value to set.
      #
      def register_set(register,value) = instruction(:mov,register,value)

      #
      # Generates the instruction to save a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      def register_save(register) = stack_push(register)

      #
      # Generates the instruction to restore a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      def register_load(register) = stack_pop(register)
    end
  end
end
