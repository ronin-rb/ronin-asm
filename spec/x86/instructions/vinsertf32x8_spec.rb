#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vinsertf32x8'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VINSERTF32X8 do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [zmm_k_z, zmm, ymm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vinsertf32x8" do
      expect(subject.name).to be(:vinsertf32x8)
    end

    context "when given operands of types zmm{k}{z}, zmm, ymm, imm8" do
      let(:operands) { [zmm_k_z, zmm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem256, imm8" do
      let(:operands) { [zmm_k_z, zmm, mem256, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, ymm, imm8" do
      let(:operands) { [zmm, zmm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, mem256, imm8" do
      let(:operands) { [zmm, zmm, mem256, imm8] }

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
