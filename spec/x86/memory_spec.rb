require 'spec_helper'
require 'ronin/asm/x86/memory'

require 'ronin/asm/x86/registers'

describe Ronin::ASM::X86::Memory do
  let(:register) { Ronin::ASM::X86::Registers::EAX }

  subject { described_class.new(base: register) }

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

  describe ".[]" do
    subject { described_class }

    context "when given one argument" do
      context "and it's already a #{described_class}" do
        let(:memory) do
          described_class.new(base: register, displacement: 42)
        end
        let(:arguments) { [memory] }

        it "must return the #{described_class} object" do
          expect(subject[*arguments]).to be(memory)
        end
      end

      context "but it's a Register object" do
        let(:arguments) { [register] }

        it "must create a new #{described_class} object with the #base as the Register" do
          new_memory = subject[*arguments]

          expect(new_memory).to be_kind_of(described_class)
          expect(new_memory.base).to eq(register)
        end
      end
    end

    context "when given more than one argument" do
      let(:arguments) { [register, 42] }

      it do
        expect {
          subject[*arguments]
        }.to raise_error("memory operands must have one argument: #{arguments.inspect}")
      end
    end

    context "when given no arguments" do
      it do
        expect {
          subject[]
        }.to raise_error("memory operands must have one argument: []")
      end
    end
  end

  describe "#change_width" do
    let(:new_width) { 8 }

    it "must return a new #{described_class} with the updated #width" do
      new_memory = subject.change_width(new_width)

      expect(new_memory).to be_kind_of(described_class)
      expect(new_memory.base).to be(subject.base)
      expect(new_memory.displacement).to be(subject.displacement)
      expect(new_memory.index).to be(subject.index)
      expect(new_memory.scale).to be(subject.scale)
      expect(new_memory.width).to eq(new_width)
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

  describe "#to_s" do
    it "must call Ronin::ASM::X86::Syntax::Intel.format_memory" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86::Syntax::Intel.format_memory(subject)
      )
    end
  end
end
