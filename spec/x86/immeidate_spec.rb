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

    context "when the immediate's value is greater than 32 bits" do
      let(:value) { 1 << 32 }

      it do
        expect {
          subject.infer_size
        }.to raise_error(TypeError,"immediate operand has a value larger than 32 bits: #{subject.inspect}")
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
