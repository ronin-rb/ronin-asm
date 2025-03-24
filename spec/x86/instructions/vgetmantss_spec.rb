#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vgetmantss'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VGETMANTSS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, xmm, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vgetmantss" do
      expect(subject.name).to be(:vgetmantss)
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, imm8" do
      let(:operands) { [xmm_k_z, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, mem32, imm8" do
      let(:operands) { [xmm_k_z, xmm, mem32, imm8] }

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

    context "when given operands of types xmm, xmm, mem32, imm8" do
      let(:operands) { [xmm, xmm, mem32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, {sae}, imm8" do
      let(:operands) { [xmm_k_z, xmm, xmm, sae, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, xmm, {sae}, imm8" do
      let(:operands) { [xmm, xmm, xmm, sae, imm8] }

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
