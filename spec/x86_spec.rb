require 'spec_helper'
require 'ronin/asm/x86'

require 'ronin/asm/program'

describe Ronin::ASM::X86 do
  subject { Ronin::ASM::Program.new(arch: :x86) }

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
    al:  described_class::Registers::AL,
    ah:  described_class::Registers::AH,
    ax:  described_class::Registers::AX,
    eax: described_class::Registers::EAX,

    bl:  described_class::Registers::BL,
    bh:  described_class::Registers::BH,
    bx:  described_class::Registers::BX,
    ebx: described_class::Registers::EBX,

    cl:  described_class::Registers::CL,
    ch:  described_class::Registers::CH,
    cx:  described_class::Registers::CX,
    ecx: described_class::Registers::ECX,

    dl:  described_class::Registers::DL,
    dh:  described_class::Registers::DH,
    dx:  described_class::Registers::DX,
    edx: described_class::Registers::EDX,

    sil: described_class::Registers::SIL,
    si:  described_class::Registers::SI,
    esi: described_class::Registers::ESI,

    dil: described_class::Registers::DIL,
    di:  described_class::Registers::DI,
    edi: described_class::Registers::EDI,

    bpl: described_class::Registers::BPL,
    bp:  described_class::Registers::BP,
    ebp: described_class::Registers::EBP,

    spl: described_class::Registers::SPL,
    sp:  described_class::Registers::SP,
    esp: described_class::Registers::ESP,

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

    ymm0: described_class::Registers::YMM0,
    ymm1: described_class::Registers::YMM1,
    ymm2: described_class::Registers::YMM2,
    ymm3: described_class::Registers::YMM3,
    ymm4: described_class::Registers::YMM4,
    ymm5: described_class::Registers::YMM5,
    ymm6: described_class::Registers::YMM6,
    ymm7: described_class::Registers::YMM7,

    zmm0: described_class::Registers::ZMM0,
    zmm1: described_class::Registers::ZMM1,
    zmm2: described_class::Registers::ZMM2,
    zmm3: described_class::Registers::ZMM3,
    zmm4: described_class::Registers::ZMM4,
    zmm5: described_class::Registers::ZMM5,
    zmm6: described_class::Registers::ZMM6,
    zmm7: described_class::Registers::ZMM7
  }.each do |name,reg|
    describe "##{name}" do
      subject { super().send(name) }

      it "must return #{described_class}::Registers::#{name.upcase}" do
        expect(subject).to be(reg)
      end
    end
  end

  describe "#rn_sae" do
    subject { super().rn_sae }

    it "must return #{described_class}::Operands::RN_SAE" do
      expect(subject).to be(described_class::Operands::RN_SAE)
    end
  end

  describe "#rd_sae" do
    subject { super().rd_sae }

    it "must return #{described_class}::Operands::RD_SAE" do
      expect(subject).to be(described_class::Operands::RD_SAE)
    end
  end

  describe "#ru_sae" do
    subject { super().ru_sae }

    it "must return #{described_class}::Operands::RU_SAE" do
      expect(subject).to be(described_class::Operands::RU_SAE)
    end
  end

  describe "#rz_sae" do
    subject { super().rz_sae }

    it "must return #{described_class}::Operands::RZ_SAE" do
      expect(subject).to be(described_class::Operands::RZ_SAE)
    end
  end

  describe "#sae" do
    subject { super().sae }

    it "must return #{described_class}::Operands::SAE" do
      expect(subject).to be(described_class::Operands::SAE)
    end
  end

  describe "#oword" do
    context "when given an Integer" do
      it "must return a Ronin::ASM::X86::Immediate" do
        expect(subject.oword(1)).to be_kind_of(Ronin::ASM::X86::Immediate)
      end

      it "must have size of 16" do
        expect(subject.oword(1).size).to eq(16)
      end
    end

    context "when given a Memory object" do
      let(:register) do
        Ronin::ASM::X86::Register.new(:eax, size: 4, type: :reg32)
      end
      let(:memory) do
        Ronin::ASM::X86::Memory.new(base: register)
      end

      it "must return a new Ronin::ASM::X86::Memory object" do
        new_memory = subject.oword(memory)

        expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
        expect(new_memory).to_not be(memory)
      end

      it "must have a size of 16" do
        expect(subject.oword(memory).size).to eq(16)
      end
    end
  end

  describe "#yword" do
    context "when given an Integer" do
      it "must return a Ronin::ASM::X86::Immediate" do
        expect(subject.yword(1)).to be_kind_of(Ronin::ASM::X86::Immediate)
      end

      it "must have size of 32" do
        expect(subject.yword(1).size).to eq(32)
      end
    end

    context "when given a Memory object" do
      let(:register) do
        Ronin::ASM::X86::Register.new(:eax, size: 4, type: :reg32)
      end
      let(:memory) do
        Ronin::ASM::X86::Memory.new(base: register)
      end

      it "must return a new Ronin::ASM::X86::Memory object" do
        new_memory = subject.yword(memory)

        expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
        expect(new_memory).to_not be(memory)
      end

      it "must have a size of 32" do
        expect(subject.yword(memory).size).to eq(32)
      end
    end
  end

  describe "#zword" do
    context "when given an Integer" do
      it "must return a Ronin::ASM::X86::Immediate" do
        expect(subject.zword(1)).to be_kind_of(Ronin::ASM::X86::Immediate)
      end

      it "must have size of 64" do
        expect(subject.zword(1).size).to eq(64)
      end
    end

    context "when given a Memory object" do
      let(:register) do
        Ronin::ASM::X86::Register.new(:eax, size: 4, type: :reg32)
      end
      let(:memory) do
        Ronin::ASM::X86::Memory.new(base: register)
      end

      it "must return a new Ronin::ASM::X86::Memory object" do
        new_memory = subject.zword(memory)

        expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
        expect(new_memory).to_not be(memory)
      end

      it "must have a size of 64" do
        expect(subject.zword(memory).size).to eq(64)
      end
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
    let(:register) { described_class::Registers::EAX }
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

    it "must call #interrupt with 0x80" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::INT)
      expect(subject.instructions[-1].operands[0]).to be_a(described_class::Immediate)
      expect(subject.instructions[-1].operands[0].value).to eq(0x80)
    end
  end

  describe "#stack_base" do
    it "must return #{described_class}::Registers::EBP" do
      expect(subject.stack_base).to be(described_class::Registers::EBP)
    end
  end

  describe "#stack_pointer" do
    it "must return #{described_class}::Registers::ESP" do
      expect(subject.stack_pointer).to be(described_class::Registers::ESP)
    end
  end

  describe "#stack_push" do
    let(:operand) { described_class::Registers::EAX }

    before { subject.stack_push(operand) }

    it "must add a new PUSH instruction with the given operand" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::PUSH)
      expect(subject.instructions[-1].operands[0]).to be(operand)
    end
  end

  describe "#stack_pop" do
    let(:operand) { described_class::Registers::EAX }

    before { subject.stack_pop(operand) }

    it "must add a new POP instruction with the given operand" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::POP)
      expect(subject.instructions[-1].operands[0]).to be(operand)
    end
  end

  describe "#register_clear" do
    let(:register) { described_class::Registers::EAX }

    before { subject.register_clear(register) }

    it "must add a new XOR instruction with both operands as the given register" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::XOR)
      expect(subject.instructions[-1].operands[0]).to be(register)
      expect(subject.instructions[-1].operands[1]).to be(register)
    end
  end

  describe "#register_set" do
    let(:register) { described_class::Registers::EAX }
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
    let(:register) { described_class::Registers::EAX }

    before { subject.register_save(register) }

    it "must add a new PUSH instruction with the given register" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::PUSH)
      expect(subject.instructions[-1].operands[0]).to be(register)
    end
  end

  describe "#register_load" do
    let(:register) { described_class::Registers::EAX }

    before { subject.register_load(register) }

    it "must add a new POP instruction with the given register" do
      expect(subject.instructions[-1]).to be_a(described_class::Instructions::POP)
      expect(subject.instructions[-1].operands[0]).to be(register)
    end
  end
end
