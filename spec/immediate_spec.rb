require 'spec_helper'
require 'ronin/asm/immediate'

describe Ronin::ASM::Immediate do
  let(:value) { 0xff }

  subject { described_class.new(value) }

  describe "#initialize" do
    context "with a size" do
      let(:size) { 2 }

      subject { described_class.new(value, size: size) }

      it "must set the size" do
        expect(subject.size).to eq(size)
      end
    end
  end

  describe "#size" do
    context "when #size is not explicitly set by #initialize" do
      context "and it is 0" do
        subject { described_class.new(0).size }

        it { expect(subject).to be == 1 }
      end

      context "and when between 0x00 .. 0xff" do
        subject { described_class.new(0xff).size }

        it { expect(subject).to be == 1 }
      end

      context "and when between 0x00 .. -0x7f" do
        subject { described_class.new(-0x7f).size }

        it { expect(subject).to be == 1 }
      end

      context "and when between 0x100 .. 0xffff" do
        subject { described_class.new(0xffff).size }

        it { expect(subject).to be == 2 }
      end

      context "and when between -0x80 .. -0x7fff" do
        subject { described_class.new(-0x7fff).size }

        it { expect(subject).to be == 2 }
      end

      context "and when between 0x10000 .. 0xffffffff" do
        subject { described_class.new(0xffffffff).size }

        it { expect(subject).to be == 4 }
      end

      context "and when between -0x80000 .. -0x7fffffff" do
        subject { described_class.new(-0x7fffffff).size }

        it { expect(subject).to be == 4 }
      end

      context "and when between 0x100000000 .. 0xffffffffffffffff" do
        subject { described_class.new(0xffffffffffffffff).size }

        it { expect(subject).to be == 8 }
      end

      context "and when between -0x800000000 .. -0x7fffffffffffffff" do
        subject { described_class.new(-0x7fffffffffffffff).size }

        it { expect(subject).to be == 8 }
      end
    end
  end

  describe "#type" do
    context "when #size is 1" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must return :imm8" do
        expect(subject.type).to eq(:imm8)
      end
    end

    context "when #size is 2" do
      let(:size) { 2 }

      subject { described_class.new(value, size: size) }

      it "must return :imm16" do
        expect(subject.type).to eq(:imm16)
      end
    end

    context "when #size is 4" do
      let(:size) { 4 }

      subject { described_class.new(value, size: size) }

      it "must return :imm32" do
        expect(subject.type).to eq(:imm32)
      end
    end

    context "when #size is 8" do
      let(:size) { 8 }

      subject { described_class.new(value, size: size) }

      it "must return :imm64" do
        expect(subject.type).to eq(:imm64)
      end
    end
  end

  describe "#imm?" do
    it "must return true" do
      expect(subject.imm?).to be(true)
    end
  end

  describe "#imm8?" do
    context "when the #size is 1" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must return true" do
        expect(subject.imm8?).to be(true)
      end
    end

    context "when the #type is not 1" do
      let(:size) { 8 }

      subject { described_class.new(value, size: size) }

      it "must return false" do
        expect(subject.imm8?).to be(false)
      end
    end
  end

  describe "#imm16?" do
    context "when the #size is 2" do
      let(:size) { 2 }

      subject { described_class.new(value, size: size) }

      it "must return true" do
        expect(subject.imm16?).to be(true)
      end
    end

    context "when the #type is not 2" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must return false" do
        expect(subject.imm16?).to be(false)
      end
    end
  end

  describe "#imm32?" do
    context "when the #size is 4" do
      let(:size) { 4 }

      subject { described_class.new(value, size: size) }

      it "must return true" do
        expect(subject.imm32?).to be(true)
      end
    end

    context "when the #type is not 4" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must return false" do
        expect(subject.imm32?).to be(false)
      end
    end
  end

  describe "#imm64?" do
    context "when the #size is 8" do
      let(:size) { 8 }

      subject { described_class.new(value, size: size) }

      it "must return true" do
        expect(subject.imm64?).to be(true)
      end
    end

    context "when the #type is not 8" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must return false" do
        expect(subject.imm64?).to be(false)
      end
    end
  end

  describe "#change_size" do
    let(:new_size) { 8 }

    it "must return a new #{described_class} with the updated size" do
      new_memory = subject.change_size(new_size)

      expect(new_memory).to be_kind_of(described_class)
      expect(new_memory).to_not be(subject)
      expect(new_memory.value).to be(subject.value)
      expect(new_memory.size).to eq(new_size)
    end
  end

  describe "#to_s" do
    it "must return the String form of #value" do
      expect(subject.to_s).to eq(value.to_s)
    end
  end

  describe "#to_i" do
    it "must return the value" do
      expect(subject.to_i).to eq(value)
    end
  end
end
