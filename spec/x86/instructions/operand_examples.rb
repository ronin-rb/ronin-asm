require 'rspec'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/memory'
require 'ronin/asm/x86/relative_offset'
require 'ronin/asm/x86/memory_offset'
require 'ronin/asm/x86/opmask'
require 'ronin/asm/x86/broadcast'
require 'ronin/asm/x86/operands'

shared_examples_for "Ronin::ASM::X86 Operands" do
  #
  # Immediate operands
  #
  let(:imm8)  { Ronin::ASM::X86::Immediate.new(0x41) }
  let(:imm16) { Ronin::ASM::X86::Immediate.new(0x1122) }
  let(:imm32) { Ronin::ASM::X86::Immediate.new(0x11223344) }

  #
  # Specific immediate operands
  #
  let(:imm8_1) { Ronin::ASM::X86::Immediate.new(1) }
  let(:imm8_3) { Ronin::ASM::X86::Immediate.new(3) }

  #
  # Register operands
  #
  let(:reg8)  { Ronin::ASM::X86::Registers::CL }
  let(:reg16) { Ronin::ASM::X86::Registers::CX }
  let(:reg32) { Ronin::ASM::X86::Registers::ECX }
  let(:reg64) { Ronin::ASM::X86::Registers::MM1 }
  let(:k)     { Ronin::ASM::X86::Registers::K1 }
  let(:mmx)   { Ronin::ASM::X86::Registers::MM1 }
  let(:xmm)   { Ronin::ASM::X86::Registers::XMM1 }
  let(:ymm)   { Ronin::ASM::X86::Registers::YMM1 }
  let(:zmm)   { Ronin::ASM::X86::Registers::ZMM1 }

  #
  # Specific register operands
  #
  let(:al)    { Ronin::ASM::X86::Registers::AL }
  let(:cl)    { Ronin::ASM::X86::Registers::CL }
  let(:ax)    { Ronin::ASM::X86::Registers::AX }
  let(:eax)   { Ronin::ASM::X86::Registers::EAX }
  let(:xmm0)  { Ronin::ASM::X86::Registers::XMM0 }

  #
  # Memory operands
  #
  let(:mem)    { Ronin::ASM::X86::Memory.new(base: reg32) }
  let(:mem8)   { Ronin::ASM::X86::Memory.new(base: reg32, size: 1) }
  let(:mem16)  { Ronin::ASM::X86::Memory.new(base: reg32, size: 2) }
  let(:mem32)  { Ronin::ASM::X86::Memory.new(base: reg32, size: 4) }
  let(:mem64)  { Ronin::ASM::X86::Memory.new(base: reg32, size: 8) }
  let(:mem128) { Ronin::ASM::X86::Memory.new(base: reg32, size: 16) }
  let(:mem256) { Ronin::ASM::X86::Memory.new(base: reg32, size: 32) }
  let(:mem512) { Ronin::ASM::X86::Memory.new(base: reg32, size: 64) }

  #
  # Relative Offset operands
  #
  let(:rel8)  { Ronin::ASM::X86::RelativeOffset.new(8) }
  let(:rel32) { Ronin::ASM::X86::RelativeOffset.new(0x11223344) }

  #
  # Memory Offset operands
  #
  let(:moffset32) { Ronin::ASM::X86::MemoryOffset.new(0x11223344) }
  let(:moffset64) { Ronin::ASM::X86::MemoryOffset.new(0x1122334455667788) }

  #
  # Vector Indexed Memory operands.
  #
  let(:vm32x) { Ronin::ASM::X86::Memory.new(base: reg32, index: xmm, scale: 4) }
  let(:vm64x) { Ronin::ASM::X86::Memory.new(base: reg32, index: xmm, scale: 8, size: 8) }
  let(:vm32y) { Ronin::ASM::X86::Memory.new(base: reg32, index: ymm, scale: 4) }
  let(:vm64y) { Ronin::ASM::X86::Memory.new(base: reg32, index: ymm, scale: 8, size: 8) }
  let(:vm32z) { Ronin::ASM::X86::Memory.new(base: reg32, index: zmm, scale: 4) }
  let(:vm64z) { Ronin::ASM::X86::Memory.new(base: reg32, index: zmm, scale: 8, size: 8) }

  #
  # Opmask operands
  #
  let(:k_k)     { Ronin::ASM::X86::Opmask.new(k,Ronin::ASM::X86::Registers::K2) }
  let(:xmm_k)   { Ronin::ASM::X86::Opmask.new(xmm,k) }
  let(:xmm_k_z) { Ronin::ASM::X86::Opmask.new(xmm,k, zero: true) }
  let(:ymm_k)   { Ronin::ASM::X86::Opmask.new(ymm,k) }
  let(:ymm_k_z) { Ronin::ASM::X86::Opmask.new(ymm,k, zero: true) }
  let(:zmm_k)   { Ronin::ASM::X86::Opmask.new(zmm,k) }
  let(:zmm_k_z) { Ronin::ASM::X86::Opmask.new(zmm,k, zero: true) }

  let(:mem16_k)  { Ronin::ASM::X86::Opmask.new(mem16,k) }
  let(:mem32_k)  { Ronin::ASM::X86::Opmask.new(mem32,k) }
  let(:mem64_k)  { Ronin::ASM::X86::Opmask.new(mem64,k) }
  let(:mem128_k) { Ronin::ASM::X86::Opmask.new(mem128,k) }
  let(:mem256_k) { Ronin::ASM::X86::Opmask.new(mem256,k) }
  let(:mem512_k) { Ronin::ASM::X86::Opmask.new(mem512,k) }

  let(:vm32x_k) { Ronin::ASM::X86::Opmask.new(vm32x,k) }
  let(:vm64x_k) { Ronin::ASM::X86::Opmask.new(vm64x,k) }
  let(:vm32y_k) { Ronin::ASM::X86::Opmask.new(vm32y,k) }
  let(:vm64y_k) { Ronin::ASM::X86::Opmask.new(vm64y,k) }
  let(:vm32z_k) { Ronin::ASM::X86::Opmask.new(vm32z,k) }
  let(:vm64z_k) { Ronin::ASM::X86::Opmask.new(vm64z,k) }

  #
  # Broadcast operands
  #
  let(:mem32_mem16_bcst)  { Ronin::ASM::X86::Broadcast.new(mem16, {1=>2}) }
  let(:mem64_mem16_bcst)  { Ronin::ASM::X86::Broadcast.new(mem16, {1=>4}) }
  let(:mem128_mem16_bcst) { Ronin::ASM::X86::Broadcast.new(mem16, {1=>8}) }
  let(:mem256_mem16_bcst) { Ronin::ASM::X86::Broadcast.new(mem16, {1=>16}) }
  let(:mem512_mem16_bcst) { Ronin::ASM::X86::Broadcast.new(mem16, {1=>32}) }

  let(:mem64_mem32_bcst)  { Ronin::ASM::X86::Broadcast.new(mem32, {1=>2}) }
  let(:mem128_mem32_bcst) { Ronin::ASM::X86::Broadcast.new(mem32, {1=>4}) }
  let(:mem256_mem32_bcst) { Ronin::ASM::X86::Broadcast.new(mem32, {1=>8}) }
  let(:mem512_mem32_bcst) { Ronin::ASM::X86::Broadcast.new(mem32, {1=>16}) }

  let(:mem128_mem64_bcst) { Ronin::ASM::X86::Broadcast.new(mem64, {1=>2}) }
  let(:mem256_mem64_bcst) { Ronin::ASM::X86::Broadcast.new(mem64, {1=>4}) }
  let(:mem512_mem64_bcst) { Ronin::ASM::X86::Broadcast.new(mem64, {1=>8}) }

  #
  # Special operands
  #
  let(:er)  { Ronin::ASM::X86::Operands::ER }
  let(:sae) { Ronin::ASM::X86::Operands::SAE }
end
