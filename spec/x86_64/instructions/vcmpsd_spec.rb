#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcmpsd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCMPSD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k_k, xmm, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcmpsd" do
      expect(subject.name).to be(:vcmpsd)
    end

    context "when given operands of types k{k}, xmm, xmm, imm8" do
      let(:operands) { [k_k, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, xmm, xmm, imm8" do
      let(:operands) { [k, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, xmm, mem64, imm8" do
      let(:operands) { [k_k, xmm, mem64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, xmm, mem64, imm8" do
      let(:operands) { [k, xmm, mem64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem64, imm8" do
      let(:operands) { [xmm, xmm, mem64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k_k, xmm, xmm, sae, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k, xmm, xmm, sae, imm8] }

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
