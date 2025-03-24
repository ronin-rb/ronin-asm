#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vfpclassph'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VFPCLASSPH do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k_k, mem128_mem16_bcst, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfpclassph" do
      expect(subject.name).to be(:vfpclassph)
    end

    context "when given operands of types k{k}, mem128/mem16bcst, imm8" do
      let(:operands) { [k_k, mem128_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, mem128/mem16bcst, imm8" do
      let(:operands) { [k, mem128_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, mem256/mem16bcst, imm8" do
      let(:operands) { [k_k, mem256_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, mem256/mem16bcst, imm8" do
      let(:operands) { [k, mem256_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, mem512/mem16bcst, imm8" do
      let(:operands) { [k_k, mem512_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, mem512/mem16bcst, imm8" do
      let(:operands) { [k, mem512_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
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

    context "when given operands of types k{k}, ymm, imm8" do
      let(:operands) { [k_k, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, ymm, imm8" do
      let(:operands) { [k, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, zmm, imm8" do
      let(:operands) { [k_k, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, zmm, imm8" do
      let(:operands) { [k, zmm, imm8] }

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
