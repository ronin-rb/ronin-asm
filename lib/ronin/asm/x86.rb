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
require_relative 'x86/operands'
require_relative 'x86/memory'
require_relative 'x86/symbol_ref'
require_relative 'x86/relative_offset'
require_relative 'x86/memory_offset'
require_relative 'x86/broadcast'
require_relative 'x86/opmask'
require_relative 'x86/instructions'
require_relative 'x86/syntax'
require_relative 'x86/encoder'
require_relative 'x86/assembler'

require 'set'

module Ronin
  module ASM
    #
    # Contains x86 architecture information.
    #
    module X86
      include Instructions

      # Supported Assembly syntaxs
      SYNTAXES = {
        att:   Syntax::ATT,
        intel: Syntax::Intel
      }

      #
      # @group Register Methods
      #

      # The `al` 8bit "accumulator" register.
      #
      # @return [Register]
      def al = Registers::AL

      # The `ah` 8bit "accumulator" register.
      #
      # @return [Register]
      def ah = Registers::AH

      # The `ax` 16bit "accumulator" register.
      #
      # @return [Register]
      def ax = Registers::AX

      # The `eax` 32bit "accumulator" register.
      #
      # @return [Register]
      def eax = Registers::EAX

      # The `bl` 8bit "base" register.
      #
      # @return [Register]
      def bl = Registers::BL

      # The `bh` 8bit "base" register.
      #
      # @return [Register]
      def bh = Registers::BH

      # The `bx` 16bit "base" register.
      #
      # @return [Register]
      def bx = Registers::BX

      # The `ebx` 32bit "base" register.
      #
      # @return [Register]
      def ebx = Registers::EBX

      # The `cl` 8bit "counter" register.
      #
      # @return [Register]
      def cl = Registers::CL

      # The `ch` 8bit "counter" register.
      #
      # @return [Register]
      def ch = Registers::CH

      # The `cx` 16bit "counter" register.
      #
      # @return [Register]
      def cx = Registers::CX

      # The `ecx` 32bit "counter" register.
      #
      # @return [Register]
      def ecx = Registers::ECX

      # The `dl` 8bit "data" register.
      #
      # @return [Register]
      def dl = Registers::DL

      # The `dh` 8bit "data" register.
      #
      # @return [Register]
      def dh = Registers::DH

      # The `dx` 16bit "data" register.
      #
      # @return [Register]
      def dx = Registers::DX

      # The `edx` 32bit "data" register.
      #
      # @return [Register]
      def edx = Registers::EDX

      # The `sil` 8bit "source" register.
      #
      # @return [Register]
      def sil = Registers::SIL

      # The `si` 16bit "source" register.
      #
      # @return [Register]
      def si = Registers::SI

      # The `esi` 32bit "source" register.
      #
      # @return [Register]
      def esi = Registers::ESI

      # The `dil` 8bit "destination" register.
      #
      # @return [Register]
      def dil = Registers::DIL

      # The `di` 16bit "destination" register.
      #
      # @return [Register]
      def di = Registers::DI

      # The `edi` 32bit "destination" register.
      #
      # @return [Register]
      def edi = Registers::EDI

      # The `bpl` 8bit stack base pointer register.
      #
      # @return [Register]
      def bpl = Registers::BPL

      # The `bp` 16bit stack base pointer register.
      #
      # @return [Register]
      def bp = Registers::BP

      # The `ebp` 32bit stack base pointer register.
      #
      # @return [Register]
      def ebp = Registers::EBP

      # The `spl` 8bit stack pointer register.
      #
      # @return [Register]
      def spl = Registers::SPL

      # The `sp` 16bit stack pointer register.
      #
      # @return [Register]
      def sp = Registers::SP

      # The `esp` 32bit stack pointer register.
      #
      # @return [Register]
      def esp = Registers::ESP

      # The `cs` 16bit Code Segment register.
      #
      # @return [Register]
      def cs = Registers::CS

      # The `ds` 16bit Data Segment register.
      #
      # @return [Register]
      def ds = Registers::DS

      # The `es` 16bit Extra Segment register.
      #
      # @return [Register]
      def es = Registers::ES

      # The `fs` 16bit F Segment register.
      #
      # @return [Register]
      def fs = Registers::FS

      # The `gs` 16bit G Segment register.
      #
      # @return [Register]
      def gs = Registers::GS

      # The `ss` 16bit Stack Segment register.
      #
      # @return [Register]
      def ss = Registers::SS

      # The `k0` 64bit opmask register.
      #
      # @return [Register]
      def k0 = Registers::K0

      # The `k1` 64bit opmask register.
      #
      # @return [Register]
      def k1 = Registers::K1

      # The `k2` 64bit opmask register.
      #
      # @return [Register]
      def k2 = Registers::K2

      # The `k3` 64bit opmask register.
      #
      # @return [Register]
      def k3 = Registers::K3

      # The `k4` 64bit opmask register.
      #
      # @return [Register]
      def k4 = Registers::K4

      # The `k5` 64bit opmask register.
      #
      # @return [Register]
      def k5 = Registers::K5

      # The `k6` 64bit opmask register.
      #
      # @return [Register]
      def k6 = Registers::K6

      # The `k7` 64bit opmask register.
      #
      # @return [Register]
      def k7 = Registers::K7

      # The `mm0` 64bit MMX register.
      #
      # @return [Register]
      def mm0 = Registers::MM0

      # The `mm1` 64bit MMX register.
      #
      # @return [Register]
      def mm1 = Registers::MM1

      # The `mm2` 64bit MMX register.
      #
      # @return [Register]
      def mm2 = Registers::MM2

      # The `mm3` 64bit MMX register.
      #
      # @return [Register]
      def mm3 = Registers::MM3

      # The `mm4` 64bit MMX register.
      #
      # @return [Register]
      def mm4 = Registers::MM4

      # The `mm5` 64bit MMX register.
      #
      # @return [Register]
      def mm5 = Registers::MM5

      # The `mm6` 64bit MMX register.
      #
      # @return [Register]
      def mm6 = Registers::MM6

      # The `mm7` 64bit MMX register.
      #
      # @return [Register]
      def mm7 = Registers::MM7

      # The `xmm0` 128bit XMM register.
      #
      # @return [Register]
      def xmm0 = Registers::XMM0

      # The `xmm1` 128bit XMM register.
      #
      # @return [Register]
      def xmm1 = Registers::XMM1

      # The `xmm2` 128bit XMM register.
      #
      # @return [Register]
      def xmm2 = Registers::XMM2

      # The `xmm3` 128bit XMM register.
      #
      # @return [Register]
      def xmm3 = Registers::XMM3

      # The `xmm4` 128bit XMM register.
      #
      # @return [Register]
      def xmm4 = Registers::XMM4

      # The `xmm5` 128bit XMM register.
      #
      # @return [Register]
      def xmm5 = Registers::XMM5

      # The `xmm6` 128bit XMM register.
      #
      # @return [Register]
      def xmm6 = Registers::XMM6

      # The `xmm7` 128bit XMM register.
      #
      # @return [Register]
      def xmm7 = Registers::XMM7

      # The `ymm0` 256bit YMM register.
      #
      # @return [Register]
      def ymm0 = Registers::YMM0

      # The `ymm1` 256bit YMM register.
      #
      # @return [Register]
      def ymm1 = Registers::YMM1

      # The `ymm2` 256bit YMM register.
      #
      # @return [Register]
      def ymm2 = Registers::YMM2

      # The `ymm3` 256bit YMM register.
      #
      # @return [Register]
      def ymm3 = Registers::YMM3

      # The `ymm4` 256bit YMM register.
      #
      # @return [Register]
      def ymm4 = Registers::YMM4

      # The `ymm5` 256bit YMM register.
      #
      # @return [Register]
      def ymm5 = Registers::YMM5

      # The `ymm6` 256bit YMM register.
      #
      # @return [Register]
      def ymm6 = Registers::YMM6

      # The `ymm7` 256bit YMM register.
      #
      # @return [Register]
      def ymm7 = Registers::YMM7

      # The `zmm0` 512bit ZMM register.
      #
      # @return [Register]
      def zmm0 = Registers::ZMM0

      # The `zmm1` 512bit ZMM register.
      #
      # @return [Register]
      def zmm1 = Registers::ZMM1

      # The `zmm2` 512bit ZMM register.
      #
      # @return [Register]
      def zmm2 = Registers::ZMM2

      # The `zmm3` 512bit ZMM register.
      #
      # @return [Register]
      def zmm3 = Registers::ZMM3

      # The `zmm4` 512bit ZMM register.
      #
      # @return [Register]
      def zmm4 = Registers::ZMM4

      # The `zmm5` 512bit ZMM register.
      #
      # @return [Register]
      def zmm5 = Registers::ZMM5

      # The `zmm6` 512bit ZMM register.
      #
      # @return [Register]
      def zmm6 = Registers::ZMM6

      # The `zmm7` 512bit ZMM register.
      #
      # @return [Register]
      def zmm7 = Registers::ZMM7

      #
      # Rounding Control Operand Methods
      #

      #
      # The `{rn-sae}` decorator operand.
      #
      # @return [ER]
      #
      # @example
      #   vaddpd zmm1, zmm2, zmm3, rn_sae
      #
      # @since 1.0.0
      #
      def rn_sae = Operands::RN_SAE

      #
      # The `{rd-sae}` decorator operand.
      #
      # @return [ER]
      #
      # @example
      #   vaddpd zmm1, zmm2, zmm3, rd_sae
      #
      # @since 1.0.0
      #
      def rd_sae = Operands::RD_SAE

      #
      # The `{ru-sae}` decorator operand.
      #
      # @return [ER]
      #
      # @example
      #   vaddpd zmm1, zmm2, zmm3, ru_sae
      #
      # @since 1.0.0
      #
      def ru_sae = Operands::RU_SAE

      #
      # The `{rz-sae}` decorator operand.
      #
      # @return [ER]
      #
      # @example
      #   vaddpd zmm1, zmm2, zmm3, rz_sae
      #
      # @since 1.0.0
      #
      def rz_sae = Operands::RZ_SAE

      #
      # The `{sae}` operand.
      #
      # @return [SAE]
      #
      # @example
      #   vcomisd xmm1, xmm2, sae
      #
      # @since 1.0.0
      #
      def sae = Operands::SAE

      #
      # @group Type Methods
      #

      #
      # Creates an operand of size 128bits (16 bytes).
      #
      # @param [Memory, Integer] operand
      #   The value of the operand.
      #
      # @return [Memory, Immediate]
      #   The new operand.
      #
      # @example
      #   oword(0x41)
      #   oword([eax])
      #
      # @since 1.0.0
      #
      def oword(operand) = coerce_operand(operand).change_size(16)

      #
      # Creates an operand of size 256bits (32 bytes).
      #
      # @param [Memory, Integer] operand
      #   The value of the operand.
      #
      # @return [Memory, Immediate]
      #   The new operand.
      #
      # @example
      #   yword(0x41)
      #   yword([eax])
      #
      # @since 1.0.0
      #
      def yword(operand) = coerce_operand(operand).change_size(32)

      #
      # Creates an operand of size 512bits (64 bytes).
      #
      # @param [Memory, Integer] operand
      #   The value of the operand.
      #
      # @return [Memory, Immediate]
      #   The new operand.
      #
      # @example
      #   zword(0x41)
      #   zword([eax])
      #
      # @since 1.0.0
      #
      def zword(operand) = coerce_operand(operand).change_size(64)

      #
      # Explicitly creates an 8bit relative offset.
      #
      # @param [Integer] value
      # @return [RelativeOffset]
      # @since 1.0.0
      #
      def rel8(value) = RelativeOffset.new(value, size: 1)

      #
      # Explicitly creates an 32bit relative offset.
      #
      # @param [Integer] value
      # @return [RelativeOffset]
      # @since 1.0.0
      #
      def rel32(value) = RelativeOffset.new(value, size: 4)

      #
      # Explicitly creates an 32bit memory offset.
      #
      # @param [Integer] value
      # @return [MemoryOffset]
      # @since 1.0.0
      #
      def moffset32(value) = MemoryOffset.new(value, size: 4)

      #
      # Explicitly creates an 64bit memory offset.
      #
      # @param [Integer] value
      # @return [MemoryOffset]
      # @since 1.0.0
      #
      def moffset64(value) = MemoryOffset.new(value, size: 8)

      #
      # @group Operand Decorator Methods
      #

      #
      # Broadcasts the memory operand to a vector register's lanes.
      #
      # @param [Memory, Array] operand
      #   The memory operand.
      #
      # @param [{1=>2}, {1=>4}, {1=>8}, {1=>16}, {1=>32}] ratio
      #   The broadcast ratio.
      #
      # @return [Broadcast]
      #   The broadcasted operand.
      #
      # @example
      #   vcvtpd2qq ymm0, bcst(qword([ebx]), {1=>4})
      #
      # @since 1.0.0
      #
      def bcst(operand,ratio)
        Broadcast.new(coerce_operand(operand),ratio)
      end

      #
      # Adds an opmask or write mask to another register.
      #
      # @param [Register, Memory] operand
      #   The register or memory to apply the opmask to.
      #
      # @param [Register] k
      #   The opmask register ({#k1} - {#k7}).
      #
      # @param [Hash{Symbol => Object}] kwargs
      #   Additional keyword arguments.
      #
      # @option kwargs [Boolean] :zero (false)
      #   Enables zero masking. Otherwise merge masking is enabled by default.
      #
      # @return [Opmask]
      #   The opmask operand.
      #
      # @raise [ArgumentError]
      #   * A non-register was given as the `register` argument.
      #   * A non-opmask register was given as the `k` argument.
      #
      # @example
      #   vaddpd opmask(xmm1, k1, zero: true), xmm2, xmm3
      #
      # @since 1.0.0
      #
      def opmask(operand,k,**kwargs)
        Opmask.new(coerce_operand(operand),k,**kwargs)
      end

      #
      # @group Internal Methods
      #

      #
      # Generates the instruction to trigger an interrupt.
      #
      # @param [Integer] number
      #   The interrupt number.
      #
      # @api private
      #
      def interrupt(number) = int(number)

      #
      # Generates the instruction to invoke a syscall.
      #
      # @api private
      #
      def syscall = interrupt(0x80)

      #
      # The Stack Base Pointer register.
      #
      # @return [Register]
      #
      # @api private
      #
      # @see #ebp
      #
      def stack_base = Registers::EBP

      #
      # The Stack Pointer register.
      #
      # @return [Register]
      #
      # @api private
      #
      # @see #esp
      #
      def stack_pointer = Registers::ESP

      #
      # Generates the instruction to push a value onto the Stack.
      #
      # @param [Immediate, Memory, Register, Integer, SymbolRef] op
      #   The value.
      #
      # @api private
      #
      def stack_push(op) = push(op)

      #
      # Generates the instruction to pop a value off of the Stack.
      #
      # @param [Register] op
      #   The register operand to store the value.
      #
      # @api private
      #
      def stack_pop(op) = pop(op)

      #
      # Generates the instruction to clear a register.
      #
      # @param [Register] register
      #   The register to clear.
      #
      # @api private
      #
      def register_clear(register) = xor(register,register)

      #
      # Generates the instruction to set a register.
      #
      # @param [Register] register
      #   The register to set.
      #
      # @param [Immediate, Memory, Register, Integer, SymbolRef] value
      #   The value to set.
      #
      # @api private
      #
      def register_set(register,value) = mov(register,value)

      #
      # Generates the instruction to save a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      # @api private
      #
      def register_save(register) = stack_push(register)

      #
      # Generates the instruction to restore a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      # @api private
      #
      def register_load(register) = stack_pop(register)
    end
  end
end
