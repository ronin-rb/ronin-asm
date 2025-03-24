#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvtsi2sh'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCVTSI2SH do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, xmm, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtsi2sh" do
      expect(subject.name).to be(:vcvtsi2sh)
    end

    context "when given operands of types xmm, xmm, reg32" do
      let(:operands) { [xmm, xmm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, reg64" do
      let(:operands) { [xmm, xmm, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem64" do
      let(:operands) { [xmm, xmm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, {er}, reg32" do
      let(:operands) { [xmm, xmm, er, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, {er}, reg64" do
      let(:operands) { [xmm, xmm, er, reg64] }

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
