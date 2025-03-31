require 'ronin/asm/x86_64/immediate'
require 'ronin/asm/x86_64/registers'
require 'ronin/asm/x86_64/memory'
require 'ronin/asm/x86_64/relative_offset'
require 'ronin/asm/x86_64/memory_offset'
require 'ronin/asm/x86_64/opmask'
require 'ronin/asm/x86_64/broadcast'
require 'ronin/asm/x86_64/operands'

module Helpers
  module X86_64
    module Operands
      #
      # Immediate operands
      #
      def imm8(i=0)
        Ronin::ASM::X86_64::Immediate.new(0x11 * (i + 1), size: 1)
      end

      def imm16(i=0)
        Ronin::ASM::X86_64::Immediate.new(0x1111 * (i + 1), size: 2)
      end

      def imm32(i=0)
        Ronin::ASM::X86_64::Immediate.new(0x11111111 * (i + 1), size: 4)
      end

      def imm64(i=0)
        Ronin::ASM::X86_64::Immediate.new(0x1111111111111111 * (i + 1), size: 8)
      end

      #
      # Specific immediate operands
      #
      def imm8_1(i=0) = Ronin::ASM::X86_64::Immediate.new(1)
      def imm8_3(i=0) = Ronin::ASM::X86_64::Immediate.new(3)

      #
      # Register operands
      #
      def reg8(i=0)
        # NOTE: we start indexing 8bit registers at `bl` instead of `al` to
        # avoid accidentally matching instruction forms that require `al` be
        # the first register.
        case i
        when 0 then Ronin::ASM::X86_64::Registers::BL
        when 1 then Ronin::ASM::X86_64::Registers::CL
        when 2 then Ronin::ASM::X86_64::Registers::DL
        when 3 then Ronin::ASM::X86_64::Registers::SIL
        when 4 then Ronin::ASM::X86_64::Registers::DIL
        end
      end

      def reg16(i=0)
        # NOTE: we start indexing 8bit registers at `bx` instead of `ax` to
        # avoid accidentally matching instruction forms that require `ax` be
        # the first register.
        case i
        when 0 then Ronin::ASM::X86_64::Registers::BX
        when 1 then Ronin::ASM::X86_64::Registers::CX
        when 2 then Ronin::ASM::X86_64::Registers::DX
        when 3 then Ronin::ASM::X86_64::Registers::SI
        when 4 then Ronin::ASM::X86_64::Registers::DI
        end
      end

      def reg32(i=0)
        # NOTE: we start indexing 8bit registers at `ebx` instead of `eax` to
        # avoid accidentally matching instruction forms that require `eax` be
        # the first register.
        case i
        when 0 then Ronin::ASM::X86_64::Registers::EBX
        when 1 then Ronin::ASM::X86_64::Registers::ECX
        when 2 then Ronin::ASM::X86_64::Registers::EDX
        when 3 then Ronin::ASM::X86_64::Registers::ESI
        when 4 then Ronin::ASM::X86_64::Registers::EDI
        end
      end

      def reg64(i=0)
        # NOTE: we start indexing 8bit registers at `rbx` instead of `rax` to
        # avoid accidentally matching instruction forms that require `rax` be
        # the first register.
        case i
        when 0 then Ronin::ASM::X86_64::Registers::RBX
        when 1 then Ronin::ASM::X86_64::Registers::RCX
        when 2 then Ronin::ASM::X86_64::Registers::RDX
        when 3 then Ronin::ASM::X86_64::Registers::RSI
        when 4 then Ronin::ASM::X86_64::Registers::RDI
        end
      end

      def k(i=0)
        case i
        when 0 then Ronin::ASM::X86_64::Registers::K1
        when 1 then Ronin::ASM::X86_64::Registers::K2
        when 2 then Ronin::ASM::X86_64::Registers::K3
        when 3 then Ronin::ASM::X86_64::Registers::K4
        when 4 then Ronin::ASM::X86_64::Registers::K5
        end
      end

      def mmx(i=0)
        case i
        when 0 then Ronin::ASM::X86_64::Registers::MM0
        when 1 then Ronin::ASM::X86_64::Registers::MM1
        when 2 then Ronin::ASM::X86_64::Registers::MM2
        when 3 then Ronin::ASM::X86_64::Registers::MM3
        when 4 then Ronin::ASM::X86_64::Registers::MM4
        end
      end

      def xmm(i=0)
        case i
        when 0 then Ronin::ASM::X86_64::Registers::XMM0
        when 1 then Ronin::ASM::X86_64::Registers::XMM1
        when 2 then Ronin::ASM::X86_64::Registers::XMM2
        when 3 then Ronin::ASM::X86_64::Registers::XMM3
        when 4 then Ronin::ASM::X86_64::Registers::XMM4
        end
      end

      def ymm(i=0)
        case i
        when 0 then Ronin::ASM::X86_64::Registers::YMM0
        when 1 then Ronin::ASM::X86_64::Registers::YMM1
        when 2 then Ronin::ASM::X86_64::Registers::YMM2
        when 3 then Ronin::ASM::X86_64::Registers::YMM3
        when 4 then Ronin::ASM::X86_64::Registers::YMM4
        end
      end

      def zmm(i=0)
        case i
        when 0 then Ronin::ASM::X86_64::Registers::ZMM0
        when 1 then Ronin::ASM::X86_64::Registers::ZMM1
        when 2 then Ronin::ASM::X86_64::Registers::ZMM2
        when 3 then Ronin::ASM::X86_64::Registers::ZMM3
        when 4 then Ronin::ASM::X86_64::Registers::ZMM4
        end
      end

      def tmm(i=0)
        case i
        when 0 then Ronin::ASM::X86_64::Registers::TMM0
        when 1 then Ronin::ASM::X86_64::Registers::TMM1
        when 2 then Ronin::ASM::X86_64::Registers::TMM2
        when 3 then Ronin::ASM::X86_64::Registers::TMM3
        when 4 then Ronin::ASM::X86_64::Registers::TMM4
        end
      end

      #
      # Specific register operands
      #
      def al(i=0)   = Ronin::ASM::X86_64::Registers::AL
      def cl(i=0)   = Ronin::ASM::X86_64::Registers::CL
      def ax(i=0)   = Ronin::ASM::X86_64::Registers::AX
      def eax(i=0)  = Ronin::ASM::X86_64::Registers::EAX
      def r8l(i=0)  = Ronin::ASM::X86_64::Registers::R8B
      def r16l(i=0) = Ronin::ASM::X86_64::Registers::R16B
      def r32l(i=0) = Ronin::ASM::X86_64::Registers::R32B
      def rax(i=0)  = Ronin::ASM::X86_64::Registers::RAX
      def xmm0(i=0) = Ronin::ASM::X86_64::Registers::XMM0

      #
      # Memory operands
      #
      def mem(i=0)    = Ronin::ASM::X86_64::Memory.new(base: reg64(i))
      def mem8(i=0)   = Ronin::ASM::X86_64::Memory.new(base: reg64(i), size: 1)
      def mem16(i=0)  = Ronin::ASM::X86_64::Memory.new(base: reg64(i), size: 2)
      def mem32(i=0)  = Ronin::ASM::X86_64::Memory.new(base: reg64(i), size: 4)
      def mem64(i=0)  = Ronin::ASM::X86_64::Memory.new(base: reg64(i), size: 8)
      def mem128(i=0) = Ronin::ASM::X86_64::Memory.new(base: reg64(i), size: 16)
      def mem256(i=0) = Ronin::ASM::X86_64::Memory.new(base: reg64(i), size: 32)
      def mem512(i=0) = Ronin::ASM::X86_64::Memory.new(base: reg64(i), size: 64)

      def sibmem(i=0)
        Ronin::ASM::X86_64::Memory.new(
          base:  reg64(i),
          index: Ronin::ASM::X86_64::Registers::RSI,
          scale: 8
        )
      end

      #
      # Relative Offset operands
      #
      def rel8(i=0)  = Ronin::ASM::X86_64::RelativeOffset.new(8)
      def rel32(i=0) = Ronin::ASM::X86_64::RelativeOffset.new(0x11223344)

      #
      # Memory Offset operands
      #
      def moffset32(i=0) = Ronin::ASM::X86_64::MemoryOffset.new(0x11223344)
      def moffset64(i=0) = Ronin::ASM::X86_64::MemoryOffset.new(0x1122334455667788)

      #
      # Vector Indexed Memory operands.
      #
      def vm32x(i=0)
        Ronin::ASM::X86_64::Memory.new(
          base:  reg64(i),
          index: xmm(i),
          scale: 4
        )
      end

      def vm64x(i=0)
        Ronin::ASM::X86_64::Memory.new(
          base:  reg64(i),
          index: xmm(i),
          scale: 8,
          size:  8
        )
      end

      def vm32y(i=0)
        Ronin::ASM::X86_64::Memory.new(
          base:  reg64(i),
          index: ymm(i),
          scale: 4
        )
      end

      def vm64y(i=0)
        Ronin::ASM::X86_64::Memory.new(
          base:  reg64(i),
          index: ymm(i),
          scale: 8,
          size:  8
        )
      end

      def vm32z(i=0)
        Ronin::ASM::X86_64::Memory.new(
          base:  reg64(i),
          index: zmm(i),
          scale: 4
        )
      end

      def vm64z(i=0)
        Ronin::ASM::X86_64::Memory.new(
          base:  reg64(i),
          index: zmm(i),
          scale: 8,
          size: 8
        )
      end

      #
      # Opmask operands
      #
      def k_k(i=0)     = Ronin::ASM::X86_64::Opmask.new(k(i),k(i + 1))
      def xmm_k(i=0)   = Ronin::ASM::X86_64::Opmask.new(xmm(i),k)
      def xmm_k_z(i=0) = Ronin::ASM::X86_64::Opmask.new(xmm(i),k, zero: true)
      def ymm_k(i=0)   = Ronin::ASM::X86_64::Opmask.new(ymm(i),k)
      def ymm_k_z(i=0) = Ronin::ASM::X86_64::Opmask.new(ymm(i),k, zero: true)
      def zmm_k(i=0)   = Ronin::ASM::X86_64::Opmask.new(zmm(i),k)
      def zmm_k_z(i=0) = Ronin::ASM::X86_64::Opmask.new(zmm(i),k, zero: true)

      def mem16_k(i=0)  = Ronin::ASM::X86_64::Opmask.new(mem16(i),k)
      def mem32_k(i=0)  = Ronin::ASM::X86_64::Opmask.new(mem32(i),k)
      def mem64_k(i=0)  = Ronin::ASM::X86_64::Opmask.new(mem64(i),k)
      def mem128_k(i=0) = Ronin::ASM::X86_64::Opmask.new(mem128(i),k)
      def mem256_k(i=0) = Ronin::ASM::X86_64::Opmask.new(mem256(i),k)
      def mem512_k(i=0) = Ronin::ASM::X86_64::Opmask.new(mem512(i),k)

      def vm32x_k(i=0) = Ronin::ASM::X86_64::Opmask.new(vm32x(i),k)
      def vm64x_k(i=0) = Ronin::ASM::X86_64::Opmask.new(vm64x(i),k)
      def vm32y_k(i=0) = Ronin::ASM::X86_64::Opmask.new(vm32y(i),k)
      def vm64y_k(i=0) = Ronin::ASM::X86_64::Opmask.new(vm64y(i),k)
      def vm32z_k(i=0) = Ronin::ASM::X86_64::Opmask.new(vm32z(i),k)
      def vm64z_k(i=0) = Ronin::ASM::X86_64::Opmask.new(vm64z(i),k)

      #
      # Broadcast operands
      #
      def mem32_mem16_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem16(i), {1=>2})
      end

      def mem64_mem16_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem16(i), {1=>4})
      end

      def mem128_mem16_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem16(i), {1=>8})
      end

      def mem256_mem16_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem16(i), {1=>16})
      end

      def mem512_mem16_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem16(i), {1=>32})
      end

      def mem64_mem32_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem32(i), {1=>2})
      end

      def mem128_mem32_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem32(i), {1=>4})
      end

      def mem256_mem32_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem32(i), {1=>8})
      end

      def mem512_mem32_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem32(i), {1=>16})
      end

      def mem128_mem64_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem64(i), {1=>2})
      end

      def mem256_mem64_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem64(i), {1=>4})
      end

      def mem512_mem64_bcst(i=0)
        Ronin::ASM::X86_64::Broadcast.new(mem64(i), {1=>8})
      end

      #
      # SAE decorator operands
      #
      def er(i=0)  = Ronin::ASM::X86_64::Operands::RN_SAE
      def sae(i=0) = Ronin::ASM::X86_64::Operands::SAE
    end
  end
end
