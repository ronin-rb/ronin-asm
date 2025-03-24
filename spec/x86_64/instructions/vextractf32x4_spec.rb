#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vextractf32x4'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VEXTRACTF32X4 do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm_k_z, ymm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vextractf32x4" do
      expect(subject.name).to be(:vextractf32x4)
    end

    context "when given operands of types xmm{k}{z}, ymm, imm8" do
      let(:operands) { [xmm_k_z, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem128{k}, ymm, imm8" do
      let(:operands) { [mem128_k, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, zmm, imm8" do
      let(:operands) { [xmm_k_z, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem128{k}, zmm, imm8" do
      let(:operands) { [mem128_k, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, ymm, imm8" do
      let(:operands) { [xmm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, zmm, imm8" do
      let(:operands) { [xmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem128, ymm, imm8" do
      let(:operands) { [mem128, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem128, zmm, imm8" do
      let(:operands) { [mem128, zmm, imm8] }

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
