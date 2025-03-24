#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vextracti64x4'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VEXTRACTI64X4 do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [ymm_k_z, zmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vextracti64x4" do
      expect(subject.name).to be(:vextracti64x4)
    end

    context "when given operands of types ymm{k}{z}, zmm, imm8" do
      let(:operands) { [ymm_k_z, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem256{k}, zmm, imm8" do
      let(:operands) { [mem256_k, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, zmm, imm8" do
      let(:operands) { [ymm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem256, zmm, imm8" do
      let(:operands) { [mem256, zmm, imm8] }

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
