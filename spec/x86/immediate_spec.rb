require 'spec_helper'
require 'ronin/asm/x86/immediate'

describe Ronin::ASM::X86::Immediate do
  it "must inherit from Ronin::ASM::Immediate" do
    expect(described_class).to be < Ronin::ASM::Immediate
  end

  it "must include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end

  let(:value) { 0xff }

  subject { described_class.new(value) }

  describe "#initialize" do
    it "must set #value" do
      expect(subject.value).to eq(value)
    end

    context "when given nil as the value" do
      let(:value) { nil }

      it "must set #value to 0" do
        expect(subject.value).to eq(0)
      end
    end

    context "when the size: keyword argument is not given" do
      it "must default #size to nil" do
        expect(subject.size).to be(nil)
      end
    end

    context "when the size: keyword argument is given" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must set #size" do
        expect(subject.size).to eq(size)
      end
    end

    context "when a value that exceeds 32bits is given" do
      let(:value) { 1 << 32 }

      it do
        expect {
          described_class.new(value)
        }.to raise_error(ArgumentError,"x86 does not support immediate values greater than 32bits: #{value.inspect}")
      end
    end
  end

  describe "#infer_size" do
    context "when the immediate's value fits within 8 bits" do
      let(:value) { 0xff }

      it "must return 1" do
        expect(subject.infer_size).to be(1)
      end
    end

    context "when the immediate's value fits within 16 bits" do
      let(:value) { 0xffff }

      it "must return 2" do
        expect(subject.infer_size).to be(2)
      end
    end

    context "when the immediate's value fits within 32 bits" do
      let(:value) { 0xffffffff }

      it "must return 4" do
        expect(subject.infer_size).to be(4)
      end
    end
  end

  describe "#to_s" do
    it "must call Ronin::ASM::X86::Syntax::Intel.format_immediate" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86::Syntax::Intel.format_immediate(subject)
      )
    end
  end
end
