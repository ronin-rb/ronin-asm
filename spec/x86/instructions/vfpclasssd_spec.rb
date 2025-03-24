#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfpclasssd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VFPCLASSSD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [k_k, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfpclasssd" do
      expect(subject.name).to be(:vfpclasssd)
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

    context "when given operands of types k{k}, mem64, imm8" do
      let(:operands) { [k_k, mem64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, mem64, imm8" do
      let(:operands) { [k, mem64, imm8] }

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
