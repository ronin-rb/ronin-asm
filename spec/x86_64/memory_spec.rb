require 'spec_helper'
require 'ronin/asm/x86_64/memory'

require 'ronin/asm/x86_64/registers'

describe Ronin::ASM::X86_64::Memory do
  let(:register) { Ronin::ASM::X86_64::Registers::EAX }

  subject { described_class.new(base: register) }

  it "must inherit from Ronin::ASM::X86::Memory" do
    expect(described_class).to be < Ronin::ASM::X86::Memory
  end

  it "must also include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end

  describe "#initialize" do
    context "when no keyword arguments" do
      subject { described_class.new }

      it { expect(subject.base).to         be_nil }
      it { expect(subject.displacement).to eq(0)  }
      it { expect(subject.index).to        be_nil }
      it { expect(subject.scale).to        eq(1)  }
    end

    context "when a base value is given" do
      it "must set #base" do
        expect(subject.base).to eq(register)
      end

      it "must set #width to the base's #width" do
        expect(subject.width).to eq(subject.base.width)
      end
    end

    context "when a width value is given" do
      let(:width) { 2 }

      subject { described_class.new(base: register, width: width) }

      it "must set #width to the given width value" do
        expect(subject.width).to eq(width)
      end
    end

    context "when a non-nil and non-Register value is given for the base" do
      it "must only accept nil and a Register for base" do
        expect {
          described_class.new(base: Object.new)
        }.to raise_error(ArgumentError,"base must be a Register or nil")
      end
    end

    context "when a non-Integer value is given for the displacement" do
      it "must only accept Integers for displacement" do
        expect {
          described_class.new(base: register, displacement: 2.0)
        }.to raise_error(ArgumentError,"displacement must be an Integer")
      end
    end

    context "when a non-nil and non-Register value is given for the index" do
      it "must only accept nil and a Register for index" do
        expect {
          described_class.new(base: register, index: Object.new)
        }.to raise_error(ArgumentError,"index must be a Register or nil")
      end
    end

    context "when a non-Integer value is given for the scale" do
      it "must only accept Integers for scale" do
        expect {
          described_class.new(base: register, scale: 2.0)
        }.to raise_error(ArgumentError,"scale must be an Integer")
      end
    end
  end

  describe "#type" do
    context "when the #width is 1" do
      let(:width) { 1 }

      subject { described_class.new(base: register, width: width) }

      it "must return :mem8" do
        expect(subject.type).to be(:mem8)
      end
    end

    context "when the #width is 2" do
      let(:width) { 2 }

      subject { described_class.new(base: register, width: width) }

      it "must return :mem16" do
        expect(subject.type).to be(:mem16)
      end
    end

    context "when the #width is 4" do
      let(:width) { 4 }

      subject { described_class.new(base: register, width: width) }

      it "must return :mem32" do
        expect(subject.type).to be(:mem32)
      end
    end

    context "when the #width is 8" do
      let(:width) { 8 }

      subject { described_class.new(base: register, width: width) }

      it "must return :mem64" do
        expect(subject.type).to be(:mem64)
      end
    end
  end

  describe "#mem8?" do
    context "when the #width is 1" do
      let(:width) { 1 }

      subject { described_class.new(base: register, width: width) }

      it "must return true" do
        expect(subject.mem8?).to be(true)
      end
    end

    context "when the #type is not 1" do
      let(:width) { 8 }

      subject { described_class.new(base: register, width: width) }

      it "must return false" do
        expect(subject.mem8?).to be(false)
      end
    end
  end

  describe "#mem16?" do
    context "when the #width is 2" do
      let(:width) { 2 }

      subject { described_class.new(base: register, width: width) }

      it "must return true" do
        expect(subject.mem16?).to be(true)
      end
    end

    context "when the #type is not 2" do
      let(:width) { 8 }

      subject { described_class.new(base: register, width: width) }

      it "must return false" do
        expect(subject.mem16?).to be(false)
      end
    end
  end

  describe "#mem32?" do
    context "when the #width is 4" do
      let(:width) { 4 }

      subject { described_class.new(base: register, width: width) }

      it "must return true" do
        expect(subject.mem32?).to be(true)
      end
    end

    context "when the #type is not 4" do
      let(:width) { 8 }

      subject { described_class.new(base: register, width: width) }

      it "must return false" do
        expect(subject.mem32?).to be(false)
      end
    end
  end

  describe "#mem64?" do
    context "when the #width is 8" do
      let(:width) { 8 }

      subject { described_class.new(base: register, width: width) }

      it "must return true" do
        expect(subject.mem64?).to be(true)
      end
    end

    context "when the #type is not 8" do
      let(:width) { 1 }

      subject { described_class.new(base: register, width: width) }

      it "must return false" do
        expect(subject.mem64?).to be(false)
      end
    end
  end

  describe "#+" do
    let(:operand) do
      described_class.new(
        base: register,
        displacement: 4,
        index: register,
        scale: 2
      )
    end

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
    let(:operand) do
      described_class.new(
        base: register,
        displacement: 4,
        index: register,
        scale: 2
      )
    end

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
end
