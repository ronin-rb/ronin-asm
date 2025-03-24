#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vinsertf32x4'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VINSERTF32X4 do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [ymm_k_z, ymm, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vinsertf32x4" do
      expect(subject.name).to be(:vinsertf32x4)
    end

    context "when given operands of types ymm{k}{z}, ymm, xmm, imm8" do
      let(:operands) { [ymm_k_z, ymm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem128, imm8" do
      let(:operands) { [ymm_k_z, ymm, mem128, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, xmm, imm8" do
      let(:operands) { [zmm_k_z, zmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem128, imm8" do
      let(:operands) { [zmm_k_z, zmm, mem128, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, xmm, imm8" do
      let(:operands) { [ymm, ymm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, mem128, imm8" do
      let(:operands) { [ymm, ymm, mem128, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, xmm, imm8" do
      let(:operands) { [zmm, zmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, mem128, imm8" do
      let(:operands) { [zmm, zmm, mem128, imm8] }

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
