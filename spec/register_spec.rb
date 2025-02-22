require 'spec_helper'
require 'ronin/asm/register'

describe Ronin::ASM::Register do
  let(:register) { described_class.new(:eax, width: 4) }

  subject { register }

  describe "#type" do
    context "when #width is 1" do
      let(:width) { 1 }

      subject { described_class.new(:eax, width: width) }

      it "must return :reg8" do
        expect(subject.type).to eq(:reg8)
      end
    end

    context "when #width is 2" do
      let(:width) { 2 }

      subject { described_class.new(:eax, width: width) }

      it "must return :reg16" do
        expect(subject.type).to eq(:reg16)
      end
    end

    context "when #width is 4" do
      let(:width) { 4 }

      subject { described_class.new(:eax, width: width) }

      it "must return :reg32" do
        expect(subject.type).to eq(:reg32)
      end
    end

    context "when #width is 8" do
      let(:width) { 8 }

      subject { described_class.new(:eax, width: width) }

      it "must return :reg64" do
        expect(subject.type).to eq(:reg64)
      end
    end
  end

  describe "#+" do
    context "when given an Ronin::ASM::Memory" do
      let(:operand) do
        Ronin::ASM::Memory.new(nil,10,register,2)
      end

      subject { register + operand }

      it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

      it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

      it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

    it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

    it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

    it { expect(subject.base).to be_nil }
    it { expect(subject.displacement).to eq(0) }

    it "must set the index" do
      expect(subject.index).to eq(register)
    end

    it "must set the scale" do
      expect(subject.scale).to eq(scale)
    end
  end

  describe "#to_s" do
    it "must return the register name" do
      expect(subject.to_s).to eq(subject.name.to_s)
    end
  end
end
