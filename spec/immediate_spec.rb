require 'spec_helper'
require 'ronin/asm/immediate'

describe Ronin::ASM::Immediate do
  let(:value) { 0xff }

  describe "#initialize" do
    context "with a width" do
      let(:width) { 2 }

      subject { described_class.new(value, width: width) }

      it "must set the width" do
        expect(subject.width).to eq(width)
      end
    end
  end

  describe "#type" do
    context "when #width is 1" do
      let(:width) { 1 }

      subject { described_class.new(value, width: width) }

      it "must return :imm8" do
        expect(subject.type).to eq(:imm8)
      end
    end

    context "when #width is 2" do
      let(:width) { 2 }

      subject { described_class.new(value, width: width) }

      it "must return :imm16" do
        expect(subject.type).to eq(:imm16)
      end
    end

    context "when #width is 4" do
      let(:width) { 4 }

      subject { described_class.new(value, width: width) }

      it "must return :imm32" do
        expect(subject.type).to eq(:imm32)
      end
    end

    context "when #width is 8" do
      let(:width) { 8 }

      subject { described_class.new(value, width: width) }

      it "must return :imm64" do
        expect(subject.type).to eq(:imm64)
      end
    end
  end

  describe "#width" do
    context "when #width is not explicitly set by #initialize" do
      context "and it is 0" do
        subject { described_class.new(0).width }

        it { expect(subject).to be == 1 }
      end

      context "and when between 0x00 .. 0xff" do
        subject { described_class.new(0xff).width }

        it { expect(subject).to be == 1 }
      end

      context "and when between 0x00 .. -0x7f" do
        subject { described_class.new(-0x7f).width }

        it { expect(subject).to be == 1 }
      end

      context "and when between 0x100 .. 0xffff" do
        subject { described_class.new(0xffff).width }

        it { expect(subject).to be == 2 }
      end

      context "and when between -0x80 .. -0x7fff" do
        subject { described_class.new(-0x7fff).width }

        it { expect(subject).to be == 2 }
      end

      context "and when between 0x10000 .. 0xffffffff" do
        subject { described_class.new(0xffffffff).width }

        it { expect(subject).to be == 4 }
      end

      context "and when between -0x80000 .. -0x7fffffff" do
        subject { described_class.new(-0x7fffffff).width }

        it { expect(subject).to be == 4 }
      end

      context "and when between 0x100000000 .. 0xffffffffffffffff" do
        subject { described_class.new(0xffffffffffffffff).width }

        it { expect(subject).to be == 8 }
      end

      context "and when between -0x800000000 .. -0x7fffffffffffffff" do
        subject { described_class.new(-0x7fffffffffffffff).width }

        it { expect(subject).to be == 8 }
      end
    end
  end

  describe "#to_i" do
    subject { described_class.new(value) }

    it "must return the value" do
      expect(subject.to_i).to eq(value)
    end
  end
end
