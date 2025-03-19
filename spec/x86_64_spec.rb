require 'spec_helper'
require 'ronin/asm/x86_64'

require 'ronin/asm/program'

describe Ronin::ASM::X86_64 do
  subject { Ronin::ASM::Program.new(arch: :x86_64) }

  describe "SYNTAXES" do
    subject { described_class::SYNTAXES }

    it "must define the :att syntax" do
      expect(subject[:att]).to be(described_class::Syntax::ATT)
    end

    it "must define the :intel syntax" do
      expect(subject[:intel]).to be(described_class::Syntax::Intel)
    end
  end

  {
    al: described_class::Registers::AL,
    ah: described_class::Registers::AH,
    ax: described_class::Registers::AX,
    eax: described_class::Registers::EAX,
    rax: described_class::Registers::RAX,

    bl: described_class::Registers::BL,
    bh: described_class::Registers::BH,
    bx: described_class::Registers::BX,
    ebx: described_class::Registers::EBX,
    rbx: described_class::Registers::RBX,

    cl: described_class::Registers::CL,
    ch: described_class::Registers::CH,
    cx: described_class::Registers::CX,
    ecx: described_class::Registers::ECX,
    rcx: described_class::Registers::RCX,

    dl: described_class::Registers::DL,
    dh: described_class::Registers::DH,
    dx: described_class::Registers::DX,
    edx: described_class::Registers::EDX,
    rdx: described_class::Registers::RDX,

    sil: described_class::Registers::SIL,
    si: described_class::Registers::SI,
    esi: described_class::Registers::ESI,
    rsi: described_class::Registers::RSI,

    dil: described_class::Registers::DIL,
    di: described_class::Registers::DI,
    edi: described_class::Registers::EDI,
    rdi: described_class::Registers::RDI,

    r8b: described_class::Registers::R8B,
    r8w: described_class::Registers::R8W,
    r8d: described_class::Registers::R8D,
    r8: described_class::Registers::R8,

    r9b: described_class::Registers::R9B,
    r9w: described_class::Registers::R9W,
    r9d: described_class::Registers::R9D,
    r9: described_class::Registers::R9,

    r10b: described_class::Registers::R10B,
    r10w: described_class::Registers::R10W,
    r10d: described_class::Registers::R10D,
    r10: described_class::Registers::R10,

    r11b: described_class::Registers::R11B,
    r11w: described_class::Registers::R11W,
    r11d: described_class::Registers::R11D,
    r11: described_class::Registers::R11,

    r12b: described_class::Registers::R12B,
    r12w: described_class::Registers::R12W,
    r12d: described_class::Registers::R12D,
    r12: described_class::Registers::R12,

    r13b: described_class::Registers::R13B,
    r13w: described_class::Registers::R13W,
    r13d: described_class::Registers::R13D,
    r13: described_class::Registers::R13,

    r14b: described_class::Registers::R14B,
    r14w: described_class::Registers::R14W,
    r14d: described_class::Registers::R14D,
    r14: described_class::Registers::R14,

    r15b: described_class::Registers::R15B,
    r15w: described_class::Registers::R15W,
    r15d: described_class::Registers::R15D,
    r15: described_class::Registers::R15,

    bpl: described_class::Registers::BPL,
    bp: described_class::Registers::BP,
    ebp: described_class::Registers::EBP,
    rbp: described_class::Registers::RBP,

    spl: described_class::Registers::SPL,
    sp: described_class::Registers::SP,
    esp: described_class::Registers::ESP,
    rsp: described_class::Registers::RSP,

    eip: described_class::Registers::EIP,
    rip: described_class::Registers::RIP,

    cs: described_class::Registers::CS,
    ds: described_class::Registers::DS,
    es: described_class::Registers::ES,
    fs: described_class::Registers::FS,
    gs: described_class::Registers::GS,
    ss: described_class::Registers::SS,

    k0: described_class::Registers::K0,
    k1: described_class::Registers::K1,
    k2: described_class::Registers::K2,
    k3: described_class::Registers::K3,
    k4: described_class::Registers::K4,
    k5: described_class::Registers::K5,
    k6: described_class::Registers::K6,
    k7: described_class::Registers::K7,

    mm0: described_class::Registers::MM0,
    mm1: described_class::Registers::MM1,
    mm2: described_class::Registers::MM2,
    mm3: described_class::Registers::MM3,
    mm4: described_class::Registers::MM4,
    mm5: described_class::Registers::MM5,
    mm6: described_class::Registers::MM6,
    mm7: described_class::Registers::MM7,

    xmm0: described_class::Registers::XMM0,
    xmm1: described_class::Registers::XMM1,
    xmm2: described_class::Registers::XMM2,
    xmm3: described_class::Registers::XMM3,
    xmm4: described_class::Registers::XMM4,
    xmm5: described_class::Registers::XMM5,
    xmm6: described_class::Registers::XMM6,
    xmm7: described_class::Registers::XMM7,
    xmm8: described_class::Registers::XMM8,
    xmm9: described_class::Registers::XMM9,
    xmm10: described_class::Registers::XMM10,
    xmm11: described_class::Registers::XMM11,
    xmm12: described_class::Registers::XMM12,
    xmm13: described_class::Registers::XMM13,
    xmm14: described_class::Registers::XMM14,
    xmm15: described_class::Registers::XMM15,
    xmm16: described_class::Registers::XMM16,
    xmm17: described_class::Registers::XMM17,
    xmm18: described_class::Registers::XMM18,
    xmm19: described_class::Registers::XMM19,
    xmm20: described_class::Registers::XMM20,
    xmm21: described_class::Registers::XMM21,
    xmm22: described_class::Registers::XMM22,
    xmm23: described_class::Registers::XMM23,
    xmm24: described_class::Registers::XMM24,
    xmm25: described_class::Registers::XMM25,
    xmm26: described_class::Registers::XMM26,
    xmm27: described_class::Registers::XMM27,
    xmm28: described_class::Registers::XMM28,
    xmm29: described_class::Registers::XMM29,
    xmm30: described_class::Registers::XMM30,
    xmm31: described_class::Registers::XMM31,

    ymm0: described_class::Registers::YMM0,
    ymm1: described_class::Registers::YMM1,
    ymm2: described_class::Registers::YMM2,
    ymm3: described_class::Registers::YMM3,
    ymm4: described_class::Registers::YMM4,
    ymm5: described_class::Registers::YMM5,
    ymm6: described_class::Registers::YMM6,
    ymm7: described_class::Registers::YMM7,
    ymm8: described_class::Registers::YMM8,
    ymm9: described_class::Registers::YMM9,
    ymm10: described_class::Registers::YMM10,
    ymm11: described_class::Registers::YMM11,
    ymm12: described_class::Registers::YMM12,
    ymm13: described_class::Registers::YMM13,
    ymm14: described_class::Registers::YMM14,
    ymm15: described_class::Registers::YMM15,
    ymm16: described_class::Registers::YMM16,
    ymm17: described_class::Registers::YMM17,
    ymm18: described_class::Registers::YMM18,
    ymm19: described_class::Registers::YMM19,
    ymm20: described_class::Registers::YMM20,
    ymm21: described_class::Registers::YMM21,
    ymm22: described_class::Registers::YMM22,
    ymm23: described_class::Registers::YMM23,
    ymm24: described_class::Registers::YMM24,
    ymm25: described_class::Registers::YMM25,
    ymm26: described_class::Registers::YMM26,
    ymm27: described_class::Registers::YMM27,
    ymm28: described_class::Registers::YMM28,
    ymm29: described_class::Registers::YMM29,
    ymm30: described_class::Registers::YMM30,
    ymm31: described_class::Registers::YMM31,

    zmm0: described_class::Registers::ZMM0,
    zmm1: described_class::Registers::ZMM1,
    zmm2: described_class::Registers::ZMM2,
    zmm3: described_class::Registers::ZMM3,
    zmm4: described_class::Registers::ZMM4,
    zmm5: described_class::Registers::ZMM5,
    zmm6: described_class::Registers::ZMM6,
    zmm7: described_class::Registers::ZMM7,
    zmm8: described_class::Registers::ZMM8,
    zmm9: described_class::Registers::ZMM9,
    zmm10: described_class::Registers::ZMM10,
    zmm11: described_class::Registers::ZMM11,
    zmm12: described_class::Registers::ZMM12,
    zmm13: described_class::Registers::ZMM13,
    zmm14: described_class::Registers::ZMM14,
    zmm15: described_class::Registers::ZMM15,
    zmm16: described_class::Registers::ZMM16,
    zmm17: described_class::Registers::ZMM17,
    zmm18: described_class::Registers::ZMM18,
    zmm19: described_class::Registers::ZMM19,
    zmm20: described_class::Registers::ZMM20,
    zmm21: described_class::Registers::ZMM21,
    zmm22: described_class::Registers::ZMM22,
    zmm23: described_class::Registers::ZMM23,
    zmm24: described_class::Registers::ZMM24,
    zmm25: described_class::Registers::ZMM25,
    zmm26: described_class::Registers::ZMM26,
    zmm27: described_class::Registers::ZMM27,
    zmm28: described_class::Registers::ZMM28,
    zmm29: described_class::Registers::ZMM29,
    zmm30: described_class::Registers::ZMM30,
    zmm31: described_class::Registers::ZMM31,

    tmm0: described_class::Registers::TMM0,
    tmm1: described_class::Registers::TMM1,
    tmm2: described_class::Registers::TMM2,
    tmm3: described_class::Registers::TMM3,
    tmm4: described_class::Registers::TMM4,
    tmm5: described_class::Registers::TMM5,
    tmm6: described_class::Registers::TMM6,
    tmm7: described_class::Registers::TMM7
  }.each do |name,reg|
    describe "##{name}" do
      subject { super().send(name) }

      it "must return #{described_class}::Registers::#{name.upcase}" do
        expect(subject).to be(reg)
      end
    end
  end

  describe "#er" do
    subject { super().er }

    it "must return #{described_class}::Operands::ER" do
      expect(subject).to be(described_class::Operands::ER)
    end
  end

  describe "#sae" do
    subject { super().sae }

    it "must return #{described_class}::Operands::SAE" do
      expect(subject).to be(described_class::Operands::SAE)
    end
  end

  describe "#rel8" do
    let(:value) { 0x41 }

    subject { super().rel8(value) }

    it "must return a #{described_class}::RelativeOffset containing the value and size of 1" do
      expect(subject).to be_a(described_class::RelativeOffset)
      expect(subject.value).to eq(value)
      expect(subject.size).to eq(1)
    end
  end

  describe "#rel8" do
    let(:value) { 0x41 }

    subject { super().rel8(value) }

    it "must return a #{described_class}::RelativeOffset containing the value and size of 1" do
      expect(subject).to be_a(described_class::RelativeOffset)
      expect(subject.value).to eq(value)
      expect(subject.size).to eq(1)
    end
  end

  describe "#rel32" do
    let(:value) { 0x41 }

    subject { super().rel32(value) }

    it "must return a #{described_class}::RelativeOffset containing the value and size of 4" do
      expect(subject).to be_a(described_class::RelativeOffset)
      expect(subject.value).to eq(value)
      expect(subject.size).to eq(4)
    end
  end

  describe "#moffset32" do
    let(:value) { 0x41 }

    subject { super().moffset32(value) }

    it "must return a #{described_class}::MemoryOffset containing the value and size of 1" do
      expect(subject).to be_a(described_class::MemoryOffset)
      expect(subject.value).to eq(value)
      expect(subject.size).to eq(4)
    end
  end

  describe "#moffset64" do
    let(:value) { 0x41 }

    subject { super().moffset64(value) }

    it "must return a #{described_class}::MemoryOffset containing the value and size of 4" do
      expect(subject).to be_a(described_class::MemoryOffset)
      expect(subject.value).to eq(value)
      expect(subject.size).to eq(8)
    end
  end

  describe "#bcst" do
    let(:register) { described_class::Registers::RAX }
    let(:operand)  { described_class::Memory.new(base: register) }
    let(:ratio)    { {1=>4} }

    subject { super().bcst(operand,ratio) }

    it "must return a new #{described_class}::Broadcast containing the given operand and the ratio" do
      expect(subject).to be_a(described_class::Broadcast)
      expect(subject.operand).to be(operand)
      expect(subject.ratio).to eq(ratio)
    end

    context "when the operand has not yet been coerced" do
      let(:operand) { [register] }

      it "must implicitly coerce the operand before creating the #{described_class}::Broadcast object" do
        expect(subject.operand).to be_a(described_class::Memory)
        expect(subject.operand.base).to be(register)
      end
    end
  end

  describe "#opmask" do
    let(:register) { described_class::Registers::XMM0 }
    let(:operand)  { register }
    let(:k)        { described_class::Registers::K1 }

    subject { super().opmask(operand,k) }

    it "must return a new #{described_class}::Opmask containing the given operand and the k" do
      expect(subject).to be_a(described_class::Opmask)
      expect(subject.operand).to be(operand)
      expect(subject.k).to eq(k)
    end

    context "when the operand has not yet been coerced" do
      let(:operand) { [register] }

      it "must implicitly coerce the operand before creating the #{described_class}::Opmask object" do
        expect(subject.operand).to be_a(described_class::Memory)
        expect(subject.operand.base).to be(register)
      end
    end
  end

  describe "#interrupt" do
    let(:number) { 0x80 }

    before { subject.interrupt(number) }

    it "must add a new INT instruction with the given interrupt number" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::INT)
      expect(subject.instructions[-1].operands[0]).to be_a(described_class::Immediate)
      expect(subject.instructions[-1].operands[0].value).to eq(number)
    end
  end

  describe "#syscall" do
    before { subject.syscall }

    it "must add a new SYSCALL instruction" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::SYSCALL)
    end
  end

  describe "#stack_base" do
    it "must return #{described_class}::Registers::RBP" do
      expect(subject.stack_base).to be(described_class::Registers::RBP)
    end
  end

  describe "#stack_pointer" do
    it "must return #{described_class}::Registers::RSP" do
      expect(subject.stack_pointer).to be(described_class::Registers::RSP)
    end
  end

  describe "#stack_push" do
    let(:operand) { described_class::Registers::RAX }

    before { subject.stack_push(operand) }

    it "must add a new PUSH instruction with the given operand" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::PUSH)
      expect(subject.instructions[-1].operands[0]).to be(operand)
    end
  end

  describe "#stack_pop" do
    let(:operand) { described_class::Registers::RAX }

    before { subject.stack_pop(operand) }

    it "must add a new POP instruction with the given operand" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::POP)
      expect(subject.instructions[-1].operands[0]).to be(operand)
    end
  end

  describe "#register_clear" do
    let(:register) { described_class::Registers::RAX }

    before { subject.register_clear(register) }

    it "must add a new XOR instruction with both operands as the given register" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::XOR)
      expect(subject.instructions[-1].operands[0]).to be(register)
      expect(subject.instructions[-1].operands[1]).to be(register)
    end
  end

  describe "#register_set" do
    let(:register) { described_class::Registers::RAX }
    let(:value)    { 0x41 }

    before { subject.register_set(register,value) }

    it "must add a new MOV instruction with the given register and the value" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::MOV)
      expect(subject.instructions[-1].operands[0]).to be(register)
      expect(subject.instructions[-1].operands[1]).to be_a(described_class::Immediate)
      expect(subject.instructions[-1].operands[1].value).to eq(value)
    end
  end

  describe "#register_save" do
    let(:register) { described_class::Registers::RAX }

    before { subject.register_save(register) }

    it "must add a new PUSH instruction with the given register" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::PUSH)
      expect(subject.instructions[-1].operands[0]).to be(register)
    end
  end

  describe "#register_load" do
    let(:register) { described_class::Registers::RAX }

    before { subject.register_load(register) }

    it "must add a new POP instruction with the given register" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::POP)
      expect(subject.instructions[-1].operands[0]).to be(register)
    end
  end
end
