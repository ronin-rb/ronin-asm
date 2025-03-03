require 'spec_helper'
require 'ronin/asm/x86_64/register'

describe Ronin::ASM::X86_64::Register do
  let(:name)     { :rax }
  let(:number)   { 0 }
  let(:width)    { 8 }
  let(:type)     { :reg64 }
  let(:register) do
    described_class.new(name, number: number, width: width, type: type)
  end

  subject { register }

  it "must inherit from Ronin::ASM::X86::Register" do
    expect(described_class).to be < Ronin::ASM::X86::Register
  end

  it "must also include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end

  describe "#+" do
    context "when given an Ronin::ASM::X86_64::Memory" do
      let(:operand) do
        Ronin::ASM::X86_64::Memory.new(displacement: 10, index: register, scale: 2)
      end

      subject { register + operand }

      it { expect(subject).to be_kind_of(Ronin::ASM::X86_64::Memory) }

      it "must set the base" do
        expect(subject.base).to eq(register)
      end

      it "must preserve the displacement, index and scale" do
        expect(subject.displacement).to eq(operand.displacement)
        expect(subject.index).to        eq(operand.index)
        expect(subject.scale).to        eq(operand.scale)
      end
    end

    context "when given a Register" do
      subject { register + register }

      it { expect(subject).to be_kind_of(Ronin::ASM::X86_64::Memory) }

      it "must set the base" do
        expect(subject.base).to eq(register)
      end

      it { expect(subject.displacement).to eq(0) }

      it "must set the index" do
        expect(subject.index).to eq(register)
      end
    end

    context "when given an Integer" do
      let(:displacement) { 10 }

      subject { register + displacement }

      it { expect(subject).to be_kind_of(Ronin::ASM::X86_64::Memory) }

      it "must set the base" do
        expect(subject.base).to eq(register)
      end

      it "must set the displacement" do
        expect(subject.displacement).to eq(displacement)
      end
    end

    context "otherwise" do
      it "must raise a TypeError" do
        expect {
          register + Object.new
        }.to raise_error(TypeError)
      end
    end
  end

  describe "#-" do
    let(:displacement) { 10 }

    subject { register - displacement }

    it { expect(subject).to be_kind_of(Ronin::ASM::X86_64::Memory) }

    it "must set the base" do
      expect(subject.base).to eq(register)
    end

    it "must set a negative displacement" do
      expect(subject.displacement).to eq(-displacement)
    end
  end

  describe "#*" do
    let(:scale) { 2 }

    subject { register * scale }

    it { expect(subject).to be_kind_of(Ronin::ASM::X86_64::Memory) }

    it { expect(subject.base).to be_nil }
    it { expect(subject.displacement).to eq(0) }

    it "must set the index" do
      expect(subject.index).to eq(register)
    end

    it "must set the scale" do
      expect(subject.scale).to eq(scale)
    end
  end
end
