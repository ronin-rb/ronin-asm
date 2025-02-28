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

require_relative 'x86_64/immediate'
require_relative 'x86_64/registers'
require_relative 'x86_64/memory'
require_relative 'x86_64/memory_offset'
require_relative 'x86_64/relative_offset'

require 'set'

module Ronin
  module ASM
    #
    # Contains x86-64 Architecture information.
    #
    module X86_64
      # Default word size
      WORD_SIZE = 8

      # x86-64 registers
      REGISTERS = Set[
        Registers::AL,
        Registers::AH,
        Registers::AX,
        Registers::EAX,
        Registers::RAX,

        Registers::BL,
        Registers::BH,
        Registers::BX,
        Registers::EBX,
        Registers::RBX,

        Registers::CL,
        Registers::CH,
        Registers::CX,
        Registers::ECX,
        Registers::RCX,

        Registers::DL,
        Registers::DH,
        Registers::DX,
        Registers::EDX,
        Registers::RDX,

        Registers::SIL,
        Registers::SI,
        Registers::ESI,
        Registers::RSI,

        Registers::DIL,
        Registers::DI,
        Registers::EDI,
        Registers::RDI,

        Registers::R8B,
        Registers::R8W,
        Registers::R8D,
        Registers::R8,

        Registers::R9B,
        Registers::R9W,
        Registers::R9D,
        Registers::R9,

        Registers::R10B,
        Registers::R10W,
        Registers::R10D,
        Registers::R10,

        Registers::R11B,
        Registers::R11W,
        Registers::R11D,
        Registers::R11,

        Registers::R12B,
        Registers::R12W,
        Registers::R12D,
        Registers::R12,

        Registers::R13B,
        Registers::R13W,
        Registers::R13D,
        Registers::R13,

        Registers::R14B,
        Registers::R14W,
        Registers::R14D,
        Registers::R14,

        Registers::R15B,
        Registers::R15W,
        Registers::R15D,
        Registers::R15,

        Registers::SPL,
        Registers::SP,
        Registers::ESP,
        Registers::RSP,

        Registers::BPL,
        Registers::BP,
        Registers::EBP,
        Registers::RBP,

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

      # The `rax` 64bit "accumulator" register.
      def rax = Registers::RAX

      # The `bl` 8bit "base" register.
      def bl = Registers::BL

      # The `bh` 8bit "base" register.
      def bh = Registers::BH

      # The `bx` 16bit "base" register.
      def bx = Registers::BX

      # The `ebx` 32bit "base" register.
      def ebx = Registers::EBX

      # The `rbx` 64bit "accumulator" register.
      def rbx = Registers::RBX

      # The `cl` 8bit "counter" register.
      def cl = Registers::CL

      # The `ch` 8bit "counter" register.
      def ch = Registers::CH

      # The `cx` 16bit "counter" register.
      def cx = Registers::CX

      # The `ecx` 32bit "counter" register.
      def ecx = Registers::ECX

      # The `rcx` 64bit "accumulator" register.
      def rcx = Registers::RCX

      # The `dl` 8bit "data" register.
      def dl = Registers::DL

      # The `dh` 8bit "data" register.
      def dh = Registers::DH

      # The `dx` 16bit "data" register.
      def dx = Registers::DX

      # The `edx` 32bit "data" register.
      def edx = Registers::EDX

      # The `rdx` 64bit "accumulator" register.
      def rdx = Registers::RDX

      # The `sil` 8bit "source" register.
      def sil = Registers::SIL

      # The `si` 16bit "source" register.
      def si = Registers::SI

      # The `esi` 32bit "source" register.
      def esi = Registers::ESI

      # The `rsi` 64bit "source" register.
      def rsi = Registers::RSI

      # The `dil` 8bit "destination" register.
      def dil = Registers::DIL

      # The `di` 16bit "destination" register.
      def di = Registers::DI

      # The `edi` 32bit "destination" register.
      def edi = Registers::EDI

      # The `rdi` 64bit "destination" register.
      def rdi = Registers::RDI

      def r8b = Registers::R8B
      def r8w = Registers::R8W
      def r8d = Registers::R8D
      def r8 = Registers::R8

      def r9b = Registers::R9B
      def r9w = Registers::R9W
      def r9d = Registers::R9D
      def r9 = Registers::R9

      def r10b = Registers::R10B
      def r10w = Registers::R10W
      def r10d = Registers::R10D
      def r10 = Registers::R10

      def r11b = Registers::R11B
      def r11w = Registers::R11W
      def r11d = Registers::R11D
      def r11 = Registers::R11

      def r12b = Registers::R12B
      def r12w = Registers::R12W
      def r12d = Registers::R12D
      def r12 = Registers::R12

      def r13b = Registers::R13B
      def r13w = Registers::R13W
      def r13d = Registers::R13D
      def r13 = Registers::R13

      def r14b = Registers::R14B
      def r14w = Registers::R14W
      def r14d = Registers::R14D
      def r14 = Registers::R14

      def r15b = Registers::R15B
      def r15w = Registers::R15W
      def r15d = Registers::R15D
      def r15 = Registers::R15

      # The `rsp` 64bit stack pointer register.
      def rsp = Registers::RSP

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

      # The `rbp` 64bit stack base pointer register.
      def rbp = Registers::RBP

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
      def xmm8 = Registers::XMM8
      def xmm9 = Registers::XMM9
      def xmm10 = Registers::XMM10
      def xmm11 = Registers::XMM11
      def xmm12 = Registers::XMM12
      def xmm13 = Registers::XMM13
      def xmm14 = Registers::XMM14
      def xmm15 = Registers::XMM15

      def ymm0 = Registers::YMM0
      def ymm1 = Registers::YMM1
      def ymm2 = Registers::YMM2
      def ymm3 = Registers::YMM3
      def ymm4 = Registers::YMM4
      def ymm5 = Registers::YMM5
      def ymm6 = Registers::YMM6
      def ymm7 = Registers::YMM7
      def ymm8 = Registers::YMM8
      def ymm9 = Registers::YMM9
      def ymm10 = Registers::YMM10
      def ymm11 = Registers::YMM11
      def ymm12 = Registers::YMM12
      def ymm13 = Registers::YMM13
      def ymm14 = Registers::YMM14
      def ymm15 = Registers::YMM15
      def ymm16 = Registers::YMM16
      def ymm17 = Registers::YMM17
      def ymm18 = Registers::YMM18
      def ymm19 = Registers::YMM19
      def ymm20 = Registers::YMM20
      def ymm21 = Registers::YMM21
      def ymm22 = Registers::YMM22
      def ymm23 = Registers::YMM23
      def ymm24 = Registers::YMM24
      def ymm25 = Registers::YMM25
      def ymm26 = Registers::YMM26
      def ymm27 = Registers::YMM27
      def ymm28 = Registers::YMM28
      def ymm29 = Registers::YMM29
      def ymm30 = Registers::YMM30
      def ymm31 = Registers::YMM31

      def zmm0 = Registers::ZMM0
      def zmm1 = Registers::ZMM1
      def zmm2 = Registers::ZMM2
      def zmm3 = Registers::ZMM3
      def zmm4 = Registers::ZMM4
      def zmm5 = Registers::ZMM5
      def zmm6 = Registers::ZMM6
      def zmm7 = Registers::ZMM7
      def zmm8 = Registers::ZMM8
      def zmm9 = Registers::ZMM9
      def zmm10 = Registers::ZMM10
      def zmm11 = Registers::ZMM11
      def zmm12 = Registers::ZMM12
      def zmm13 = Registers::ZMM13
      def zmm14 = Registers::ZMM14
      def zmm15 = Registers::ZMM15
      def zmm16 = Registers::ZMM16
      def zmm17 = Registers::ZMM17
      def zmm18 = Registers::ZMM18
      def zmm19 = Registers::ZMM19
      def zmm20 = Registers::ZMM20
      def zmm21 = Registers::ZMM21
      def zmm22 = Registers::ZMM22
      def zmm23 = Registers::ZMM23
      def zmm24 = Registers::ZMM24
      def zmm25 = Registers::ZMM25
      def zmm26 = Registers::ZMM26
      def zmm27 = Registers::ZMM27
      def zmm28 = Registers::ZMM28
      def zmm29 = Registers::ZMM29
      def zmm30 = Registers::ZMM30
      def zmm31 = Registers::ZMM31

      #
      # @group Internal Methods
      #

      #
      # The Stack Base Pointer register.
      #
      # @see #rbp
      #
      def stack_base = Registers::RBP

      #
      # The Stack Pointer register.
      #
      # @see #rsp
      #
      def stack_pointer = Registers::RSP

      #
      # Generates the instruction to invoke a syscall.
      #
      def syscall = instruction(:syscall)
    end
  end
end
