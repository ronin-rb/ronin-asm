#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvttsh2si'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCVTTSH2SI do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [reg32, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvttsh2si" do
      expect(subject.name).to be(:vcvttsh2si)
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, mem16" do
      let(:operands) { [reg32, mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, xmm, {sae}" do
      let(:operands) { [reg32, xmm, sae] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given additional keyword arguments" do
      let(:comment) { 'comment' }

      subject { described_class.new(*operands, comment: comment) }

      it "must pass the keyword arguments to Ronin::ASM::Instruction#initialize" do
        expect(subject.comment).to be(comment)
      end
    end
  end

  describe "#encode"
end
