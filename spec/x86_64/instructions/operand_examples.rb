require 'rspec'

require 'ronin/asm/x86_64/immediate'
require 'ronin/asm/x86_64/registers'
require 'ronin/asm/x86_64/memory'
require 'ronin/asm/x86_64/relative_offset'
require 'ronin/asm/x86_64/memory_offset'
require 'ronin/asm/x86_64/opmask'
require 'ronin/asm/x86_64/broadcast'
require 'ronin/asm/x86_64/operands'

shared_examples_for "Ronin::ASM::X86_64 Operands" do
  #
  # Immediate operands
  #
  let(:imm8)  { Ronin::ASM::X86_64::Immediate.new(0x41) }
  let(:imm16) { Ronin::ASM::X86_64::Immediate.new(0x1122) }
  let(:imm32) { Ronin::ASM::X86_64::Immediate.new(0x11223344) }
  let(:imm64) { Ronin::ASM::X86_64::Immediate.new(0x1122334455667788) }

  #
  # Specific immediate operands
  #
  let(:imm8_1) { Ronin::ASM::X86_64::Immediate.new(1) }
  let(:imm8_3) { Ronin::ASM::X86_64::Immediate.new(3) }

  #
  # Register operands
  #
  let(:reg8)  { Ronin::ASM::X86_64::Registers::CL }
  let(:reg16) { Ronin::ASM::X86_64::Registers::CX }
  let(:reg32) { Ronin::ASM::X86_64::Registers::ECX }
  let(:reg64) { Ronin::ASM::X86_64::Registers::RCX }
  let(:k)     { Ronin::ASM::X86_64::Registers::K1 }
  let(:mmx)   { Ronin::ASM::X86_64::Registers::MM1 }
  let(:xmm)   { Ronin::ASM::X86_64::Registers::XMM1 }
  let(:ymm)   { Ronin::ASM::X86_64::Registers::YMM1 }
  let(:zmm)   { Ronin::ASM::X86_64::Registers::ZMM1 }
  let(:tmm)   { Ronin::ASM::X86_64::Registers::TMM1 }

  #
  # Specific register operands
  #
  let(:al)    { Ronin::ASM::X86_64::Registers::AL }
  let(:cl)    { Ronin::ASM::X86_64::Registers::CL }
  let(:ax)    { Ronin::ASM::X86_64::Registers::AX }
  let(:eax)   { Ronin::ASM::X86_64::Registers::EAX }
  let(:r8l)   { Ronin::ASM::X86_64::Registers::R8B }
  let(:r16l)  { Ronin::ASM::X86_64::Registers::R16B }
  let(:r32l)  { Ronin::ASM::X86_64::Registers::R32B }
  let(:rax)   { Ronin::ASM::X86_64::Registers::RAX }
  let(:xmm0)  { Ronin::ASM::X86_64::Registers::XMM0 }

  #
  # Memory operands
  #
  let(:mem)    { Ronin::ASM::X86_64::Memory.new(base: reg64) }
  let(:mem8)   { Ronin::ASM::X86_64::Memory.new(base: reg64, size: 1) }
  let(:mem16)  { Ronin::ASM::X86_64::Memory.new(base: reg64, size: 2) }
  let(:mem32)  { Ronin::ASM::X86_64::Memory.new(base: reg64, size: 4) }
  let(:mem64)  { Ronin::ASM::X86_64::Memory.new(base: reg64, size: 8) }
  let(:mem128) { Ronin::ASM::X86_64::Memory.new(base: reg64, size: 16) }
  let(:mem256) { Ronin::ASM::X86_64::Memory.new(base: reg64, size: 32) }
  let(:mem512) { Ronin::ASM::X86_64::Memory.new(base: reg64, size: 64) }

  let(:sibmem) do
    Ronin::ASM::X86_64::Memory.new(
      base:  reg64,
      index: Ronin::ASM::X86_64::Registers::RSI,
      scale: 4,
      size:  32
    )
  end

  #
  # Relative Offset operands
  #
  let(:rel8)  { Ronin::ASM::X86_64::RelativeOffset.new(8) }
  let(:rel32) { Ronin::ASM::X86_64::RelativeOffset.new(0x11223344) }

  #
  # Memory Offset operands
  #
  let(:moffset32) { Ronin::ASM::X86_64::MemoryOffset.new(0x11223344) }
  let(:moffset64) { Ronin::ASM::X86_64::MemoryOffset.new(0x1122334455667788) }

  #
  # Vector Indexed Memory operands.
  #
  let(:vm32x) { Ronin::ASM::X86_64::Memory.new(base: reg32, index: xmm, scale: 4) }
  let(:vm64x) { Ronin::ASM::X86_64::Memory.new(base: reg32, index: xmm, scale: 8, size: 8) }
  let(:vm32y) { Ronin::ASM::X86_64::Memory.new(base: reg32, index: ymm, scale: 4) }
  let(:vm64y) { Ronin::ASM::X86_64::Memory.new(base: reg32, index: ymm, scale: 8, size: 8) }
  let(:vm32z) { Ronin::ASM::X86_64::Memory.new(base: reg32, index: zmm, scale: 4) }
  let(:vm64z) { Ronin::ASM::X86_64::Memory.new(base: reg32, index: zmm, scale: 8, size: 8) }

  #
  # Opmask operands
  #
  let(:k_k)     { Ronin::ASM::X86_64::Opmask.new(k,Ronin::ASM::X86_64::Registers::K2) }
  let(:xmm_k)   { Ronin::ASM::X86_64::Opmask.new(xmm,k) }
  let(:xmm_k_z) { Ronin::ASM::X86_64::Opmask.new(xmm,k, zero: true) }
  let(:ymm_k)   { Ronin::ASM::X86_64::Opmask.new(ymm,k) }
  let(:ymm_k_z) { Ronin::ASM::X86_64::Opmask.new(ymm,k, zero: true) }
  let(:zmm_k)   { Ronin::ASM::X86_64::Opmask.new(zmm,k) }
  let(:zmm_k_z) { Ronin::ASM::X86_64::Opmask.new(zmm,k, zero: true) }

  let(:mem16_k)  { Ronin::ASM::X86_64::Opmask.new(mem16,k) }
  let(:mem32_k)  { Ronin::ASM::X86_64::Opmask.new(mem32,k) }
  let(:mem64_k)  { Ronin::ASM::X86_64::Opmask.new(mem64,k) }
  let(:mem128_k) { Ronin::ASM::X86_64::Opmask.new(mem128,k) }
  let(:mem256_k) { Ronin::ASM::X86_64::Opmask.new(mem256,k) }
  let(:mem512_k) { Ronin::ASM::X86_64::Opmask.new(mem512,k) }

  let(:vm32x_k) { Ronin::ASM::X86_64::Opmask.new(vm32x,k) }
  let(:vm64x_k) { Ronin::ASM::X86_64::Opmask.new(vm64x,k) }
  let(:vm32y_k) { Ronin::ASM::X86_64::Opmask.new(vm32y,k) }
  let(:vm64y_k) { Ronin::ASM::X86_64::Opmask.new(vm64y,k) }
  let(:vm32z_k) { Ronin::ASM::X86_64::Opmask.new(vm32z,k) }
  let(:vm64z_k) { Ronin::ASM::X86_64::Opmask.new(vm64z,k) }

  #
  # Broadcast operands
  #
  let(:mem32_mem16_bcst)  { Ronin::ASM::X86_64::Broadcast.new(mem16, {1=>2}) }
  let(:mem64_mem16_bcst)  { Ronin::ASM::X86_64::Broadcast.new(mem16, {1=>4}) }
  let(:mem128_mem16_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem16, {1=>8}) }
  let(:mem256_mem16_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem16, {1=>16}) }
  let(:mem512_mem16_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem16, {1=>32}) }

  let(:mem64_mem32_bcst)  { Ronin::ASM::X86_64::Broadcast.new(mem32, {1=>2}) }
  let(:mem128_mem32_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem32, {1=>4}) }
  let(:mem256_mem32_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem32, {1=>8}) }
  let(:mem512_mem32_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem32, {1=>16}) }

  let(:mem128_mem64_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem64, {1=>2}) }
  let(:mem256_mem64_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem64, {1=>4}) }
  let(:mem512_mem64_bcst) { Ronin::ASM::X86_64::Broadcast.new(mem64, {1=>8}) }

  #
  # Special operands
  #
  let(:er)  { Ronin::ASM::X86_64::Operands::ER }
  let(:sae) { Ronin::ASM::X86_64::Operands::SAE }
end
