#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vfpclassss'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VFPCLASSSS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k_k, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfpclassss" do
      expect(subject.name).to be(:vfpclassss)
    end

    context "when given operands of types k{k}, xmm, imm8" do
      let(:operands) { [k_k, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, xmm, imm8" do
      let(:operands) { [k, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, mem32, imm8" do
      let(:operands) { [k_k, mem32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, mem32, imm8" do
      let(:operands) { [k, mem32, imm8] }

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
