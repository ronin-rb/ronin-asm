require 'spec_helper'
require 'ronin/asm/memory'

require 'ronin/asm/register'

describe Ronin::ASM::Memory do
  let(:register) { Ronin::ASM::Register.new(:eax, width: 4) }

  describe "#initialize" do
    it { expect(subject.base).to         be_nil }
    it { expect(subject.displacement).to eq(0)  }
    it { expect(subject.index).to        be_nil }
    it { expect(subject.scale).to        eq(1)  }

    it "must only accept nil and a Register for base" do
      expect {
        described_class.new(Object.new)
      }.to raise_error(ArgumentError)
    end

    it "must only accept Integers for displacement" do
      expect {
        described_class.new(register,2.0)
      }.to raise_error(ArgumentError)
    end

    it "must only accept nil and a Register for index" do
      expect {
        described_class.new(register,0,Object.new)
      }.to raise_error(ArgumentError)
    end

    it "must only accept Integers for displacement" do
      expect {
        described_class.new(register,0,nil,2.0)
      }.to raise_error(ArgumentError)
    end

  end

  describe "#+" do
    let(:operand) { described_class.new(register,4,register,2) }

    subject { operand + 4 }

    it "must add to displacement" do
      expect(subject.displacement).to eq(8)
    end

    it "must not change base, index or scale" do
      expect(subject.base).to  eq(operand.base)
      expect(subject.index).to eq(operand.index)
      expect(subject.scale).to eq(operand.scale)
    end
  end

  describe "#-" do
    let(:operand) { described_class.new(register,4,register,2) }

    subject { operand - 2 }

    it "must subtract from displacement" do
      expect(subject.displacement).to eq(2)
    end

    it "must not change base, index or scale" do
      expect(subject.base).to  eq(operand.base)
      expect(subject.index).to eq(operand.index)
      expect(subject.scale).to eq(operand.scale)
    end
  end

  describe "#width" do
    subject { described_class.new(register,10) }

    it "must return the width of base" do
      expect(subject.width).to eq(register.width)
    end
  end
end
