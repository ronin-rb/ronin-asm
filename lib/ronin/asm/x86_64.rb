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
require_relative 'x86_64/operands'
require_relative 'x86_64/memory'
require_relative 'x86_64/symbol_ref'
require_relative 'x86_64/memory_offset'
require_relative 'x86_64/relative_offset'
require_relative 'x86_64/broadcast'
require_relative 'x86_64/opmask'
require_relative 'x86_64/instructions'
require_relative 'x86_64/syntax'
require_relative 'x86_64/encoder'
require_relative 'x86_64/assembler'

require_relative 'x86_64/linux'
require_relative 'x86_64/freebsd'
require_relative 'x86_64/netbsd'
require_relative 'x86_64/openbsd'
require_relative 'x86_64/macos'

require 'set'

module Ronin
  module ASM
    #
    # Contains x86-64 architecture information.
    #
    module X86_64
      include Instructions

      # Supported Assembly syntaxs
      SYNTAXES = {
        att:   Syntax::ATT,
        intel: Syntax::Intel
      }

      # Supported OSes.
      OSES = {
        linux:   Linux,
        freebsd: FreeBSD,
        netbsd:  NetBSD,
        openbsd: OpenBSD,
        macos:   MacOS
      }

      #
      # @!group Register Methods
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

      # The `rax` 64bit "accumulator" register.
      #
      # @return [Register]
      def rax = Registers::RAX

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

      # The `rbx` 64bit "accumulator" register.
      #
      # @return [Register]
      def rbx = Registers::RBX

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

      # The `rcx` 64bit "accumulator" register.
      #
      # @return [Register]
      def rcx = Registers::RCX

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

      # The `rdx` 64bit "accumulator" register.
      #
      # @return [Register]
      def rdx = Registers::RDX

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

      # The `rsi` 64bit "source" register.
      #
      # @return [Register]
      def rsi = Registers::RSI

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

      # The `rdi` 64bit "destination" register.
      #
      # @return [Register]
      def rdi = Registers::RDI

      # The `r8b` 8bit register.
      #
      # @return [Register]
      def r8b = Registers::R8B

      # The `r8w` 16bit register.
      #
      # @return [Register]
      def r8w = Registers::R8W

      # The `r8d` 32bit register.
      #
      # @return [Register]
      def r8d = Registers::R8D

      # The `r8` 64bit register.
      #
      # @return [Register]
      def r8 = Registers::R8

      # The `r9b` 8bit register.
      #
      # @return [Register]
      def r9b = Registers::R9B

      # The `r9w` 16bit register.
      #
      # @return [Register]
      def r9w = Registers::R9W

      # The `r9d` 32bit register.
      #
      # @return [Register]
      def r9d = Registers::R9D

      # The `r9` 64bit register.
      #
      # @return [Register]
      def r9 = Registers::R9

      # The `r10b` 8bit register.
      #
      # @return [Register]
      def r10b = Registers::R10B

      # The `r10w` 16bit register.
      #
      # @return [Register]
      def r10w = Registers::R10W

      # The `r10d` 32bit register.
      #
      # @return [Register]
      def r10d = Registers::R10D

      # The `r10` 64bit register.
      #
      # @return [Register]
      def r10 = Registers::R10

      # The `r11b` 8bit register.
      #
      # @return [Register]
      def r11b = Registers::R11B

      # The `r11w` 16bit register.
      #
      # @return [Register]
      def r11w = Registers::R11W

      # The `r11d` 32bit register.
      #
      # @return [Register]
      def r11d = Registers::R11D

      # The `r11` 64bit register.
      #
      # @return [Register]
      def r11 = Registers::R11

      # The `r12b` 8bit register.
      #
      # @return [Register]
      def r12b = Registers::R12B

      # The `r12w` 16bit register.
      #
      # @return [Register]
      def r12w = Registers::R12W

      # The `r12d` 32bit register.
      #
      # @return [Register]
      def r12d = Registers::R12D

      # The `r12` 64bit register.
      #
      # @return [Register]
      def r12 = Registers::R12

      # The `r13b` 8bit register.
      #
      # @return [Register]
      def r13b = Registers::R13B

      # The `r13w` 16bit register.
      #
      # @return [Register]
      def r13w = Registers::R13W

      # The `r13d` 32bit register.
      #
      # @return [Register]
      def r13d = Registers::R13D

      # The `r13` 64bit register.
      #
      # @return [Register]
      def r13 = Registers::R13

      # The `r14b` 8bit register.
      #
      # @return [Register]
      def r14b = Registers::R14B

      # The `r14w` 16bit register.
      #
      # @return [Register]
      def r14w = Registers::R14W

      # The `r14d` 32bit register.
      #
      # @return [Register]
      def r14d = Registers::R14D

      # The `r14` 64bit register.
      #
      # @return [Register]
      def r14 = Registers::R14

      # The `r15b` 8bit register.
      #
      # @return [Register]
      def r15b = Registers::R15B

      # The `r15w` 16bit register.
      #
      # @return [Register]
      def r15w = Registers::R15W

      # The `r15d` 32bit register.
      #
      # @return [Register]
      def r15d = Registers::R15D

      # The `r15` 64bit register.
      #
      # @return [Register]
      def r15 = Registers::R15

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

      # The `rbp` 64bit stack base pointer register.
      #
      # @return [Register]
      def rbp = Registers::RBP

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

      # The `rsp` 64bit stack pointer register.
      #
      # @return [Register]
      def rsp = Registers::RSP

      # The `eip` 32bit instruction pointer register used for RIP-relative
      # addressing.
      #
      # @return [Register]
      def eip = Registers::EIP

      # The `rip` 64bit instruction pointer register used for RIP-relative
      # addressing.
      #
      # @return [Register]
      def rip = Registers::RIP

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
      # @since 1.0.0
      def k0 = Registers::K0

      # The `k1` 64bit opmask register.
      #
      # @return [Register]
      # @since 1.0.0
      def k1 = Registers::K1

      # The `k2` 64bit opmask register.
      #
      # @return [Register]
      # @since 1.0.0
      def k2 = Registers::K2

      # The `k3` 64bit opmask register.
      #
      # @return [Register]
      # @since 1.0.0
      def k3 = Registers::K3

      # The `k4` 64bit opmask register.
      #
      # @return [Register]
      # @since 1.0.0
      def k4 = Registers::K4

      # The `k5` 64bit opmask register.
      #
      # @return [Register]
      # @since 1.0.0
      def k5 = Registers::K5

      # The `k6` 64bit opmask register.
      #
      # @return [Register]
      # @since 1.0.0
      def k6 = Registers::K6

      # The `k7` 64bit opmask register.
      #
      # @return [Register]
      # @since 1.0.0
      def k7 = Registers::K7

      # The `mm0` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm0 = Registers::MM0

      # The `mm1` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm1 = Registers::MM1

      # The `mm2` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm2 = Registers::MM2

      # The `mm3` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm3 = Registers::MM3

      # The `mm4` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm4 = Registers::MM4

      # The `mm5` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm5 = Registers::MM5

      # The `mm6` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm6 = Registers::MM6

      # The `mm7` 64bit MMX register.
      #
      # @return [Register]
      # @since 1.0.0
      def mm7 = Registers::MM7

      # The `xmm0` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm0 = Registers::XMM0

      # The `xmm1` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm1 = Registers::XMM1

      # The `xmm2` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm2 = Registers::XMM2

      # The `xmm3` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm3 = Registers::XMM3

      # The `xmm4` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm4 = Registers::XMM4

      # The `xmm5` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm5 = Registers::XMM5

      # The `xmm6` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm6 = Registers::XMM6

      # The `xmm7` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm7 = Registers::XMM7

      # The `xmm8` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm8 = Registers::XMM8

      # The `xmm9` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm9 = Registers::XMM9

      # The `xmm10` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm10 = Registers::XMM10

      # The `xmm11` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm11 = Registers::XMM11

      # The `xmm12` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm12 = Registers::XMM12

      # The `xmm13` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm13 = Registers::XMM13

      # The `xmm14` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm14 = Registers::XMM14

      # The `xmm15` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm15 = Registers::XMM15

      # The `xmm16` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm16 = Registers::XMM16

      # The `xmm17` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm17 = Registers::XMM17

      # The `xmm18` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm18 = Registers::XMM18

      # The `xmm19` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm19 = Registers::XMM19

      # The `xmm20` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm20 = Registers::XMM20

      # The `xmm21` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm21 = Registers::XMM21

      # The `xmm22` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm22 = Registers::XMM22

      # The `xmm23` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm23 = Registers::XMM23

      # The `xmm24` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm24 = Registers::XMM24

      # The `xmm25` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm25 = Registers::XMM25

      # The `xmm26` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm26 = Registers::XMM26

      # The `xmm27` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm27 = Registers::XMM27

      # The `xmm28` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm28 = Registers::XMM28

      # The `xmm29` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm29 = Registers::XMM29

      # The `xmm30` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm30 = Registers::XMM30

      # The `xmm31` 128bit XMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def xmm31 = Registers::XMM31

      # The `ymm0` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm0 = Registers::YMM0

      # The `ymm1` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm1 = Registers::YMM1

      # The `ymm2` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm2 = Registers::YMM2

      # The `ymm3` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm3 = Registers::YMM3

      # The `ymm4` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm4 = Registers::YMM4

      # The `ymm5` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm5 = Registers::YMM5

      # The `ymm6` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm6 = Registers::YMM6

      # The `ymm7` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm7 = Registers::YMM7

      # The `ymm8` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm8 = Registers::YMM8

      # The `ymm9` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm9 = Registers::YMM9

      # The `ymm10` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm10 = Registers::YMM10

      # The `ymm11` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm11 = Registers::YMM11

      # The `ymm12` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm12 = Registers::YMM12

      # The `ymm13` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm13 = Registers::YMM13

      # The `ymm14` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm14 = Registers::YMM14

      # The `ymm15` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm15 = Registers::YMM15

      # The `ymm16` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm16 = Registers::YMM16

      # The `ymm17` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm17 = Registers::YMM17

      # The `ymm18` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm18 = Registers::YMM18

      # The `ymm19` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm19 = Registers::YMM19

      # The `ymm20` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm20 = Registers::YMM20

      # The `ymm21` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm21 = Registers::YMM21

      # The `ymm22` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm22 = Registers::YMM22

      # The `ymm23` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm23 = Registers::YMM23

      # The `ymm24` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm24 = Registers::YMM24

      # The `ymm25` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm25 = Registers::YMM25

      # The `ymm26` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm26 = Registers::YMM26

      # The `ymm27` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm27 = Registers::YMM27

      # The `ymm28` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm28 = Registers::YMM28

      # The `ymm29` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm29 = Registers::YMM29

      # The `ymm30` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm30 = Registers::YMM30

      # The `ymm31` 256bit YMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def ymm31 = Registers::YMM31

      # The `zmm0` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm0 = Registers::ZMM0

      # The `zmm1` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm1 = Registers::ZMM1

      # The `zmm2` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm2 = Registers::ZMM2

      # The `zmm3` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm3 = Registers::ZMM3

      # The `zmm4` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm4 = Registers::ZMM4

      # The `zmm5` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm5 = Registers::ZMM5

      # The `zmm6` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm6 = Registers::ZMM6

      # The `zmm7` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm7 = Registers::ZMM7

      # The `zmm8` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm8 = Registers::ZMM8

      # The `zmm9` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm9 = Registers::ZMM9

      # The `zmm10` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm10 = Registers::ZMM10

      # The `zmm11` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm11 = Registers::ZMM11

      # The `zmm12` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm12 = Registers::ZMM12

      # The `zmm13` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm13 = Registers::ZMM13

      # The `zmm14` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm14 = Registers::ZMM14

      # The `zmm15` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm15 = Registers::ZMM15

      # The `zmm16` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm16 = Registers::ZMM16

      # The `zmm17` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm17 = Registers::ZMM17

      # The `zmm18` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm18 = Registers::ZMM18

      # The `zmm19` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm19 = Registers::ZMM19

      # The `zmm20` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm20 = Registers::ZMM20

      # The `zmm21` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm21 = Registers::ZMM21

      # The `zmm22` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm22 = Registers::ZMM22

      # The `zmm23` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm23 = Registers::ZMM23

      # The `zmm24` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm24 = Registers::ZMM24

      # The `zmm25` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm25 = Registers::ZMM25

      # The `zmm26` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm26 = Registers::ZMM26

      # The `zmm27` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm27 = Registers::ZMM27

      # The `zmm28` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm28 = Registers::ZMM28

      # The `zmm29` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm29 = Registers::ZMM29

      # The `zmm30` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm30 = Registers::ZMM30

      # The `zmm31` 512bit ZMM register.
      #
      # @return [Register]
      # @since 1.0.0
      def zmm31 = Registers::ZMM31

      # The `tmm0` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm0 = Registers::TMM0

      # The `tmm1` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm1 = Registers::TMM1

      # The `tmm2` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm2 = Registers::TMM2

      # The `tmm3` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm3 = Registers::TMM3

      # The `tmm4` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm4 = Registers::TMM4

      # The `tmm5` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm5 = Registers::TMM5

      # The `tmm6` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm6 = Registers::TMM6

      # The `tmm7` 1024bit (16x16x32bits) Tile register.
      #
      # @return [Register]
      # @since 1.0.0
      def tmm7 = Registers::TMM7

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
      # @!group Type Methods
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
      #   oword([rax])
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
      #   yword([rax])
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
      #   zword([rax])
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
      # @!group Operand Decorator Methods
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
      #   vcvtpd2qq ymm0, bcst(qword([rbx]), {1=>4})
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
      #   The register to apply the opmask to.
      #
      # @param [Register] k
      #   The opmask register.
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
      # @!group Internal Methods
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
      # The Stack Base Pointer register.
      #
      # @return [Register]
      #
      # @api private
      #
      # @see #rbp
      #
      def stack_base = Registers::RBP

      #
      # The Stack Pointer register.
      #
      # @return [Register]
      #
      # @api private
      #
      # @see #rsp
      #
      def stack_pointer = Registers::RSP

      #
      # Generates the instruction to push a value onto the Stack.
      #
      # @param [Immediate, Memory, Register, Integer, LabelRef] op
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
      def clear_register(register) = xor(register,register)

      #
      # Generates the instruction to set a register.
      #
      # @param [Register] register
      #   The register to set.
      #
      # @param [Immediate, Memory, Register, Integer, LabelRef] value
      #   The value to set.
      #
      # @api private
      #
      def set_register(register,value) = mov(register,value)

      #
      # Generates the instruction to save a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      # @api private
      #
      def save_register(register) = stack_push(register)

      #
      # Generates the instruction to restore a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      # @api private
      #
      def load_register(register) = stack_pop(register)
    end
  end
end
