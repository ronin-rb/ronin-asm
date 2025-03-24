#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/cvtsi2sd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::CVTSI2SD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :cvtsi2sd" do
      expect(subject.name).to be(:cvtsi2sd)
    end

    context "when given operands of types xmm, reg32" do
      let(:operands) { [xmm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, reg64" do
      let(:operands) { [xmm, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem32" do
      let(:operands) { [xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem64" do
      let(:operands) { [xmm, mem64] }

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
