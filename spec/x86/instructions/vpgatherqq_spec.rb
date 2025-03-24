#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpgatherqq'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPGATHERQQ do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k, vm64x] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpgatherqq" do
      expect(subject.name).to be(:vpgatherqq)
    end

    context "when given operands of types xmm{k}, vm64x" do
      let(:operands) { [xmm_k, vm64x] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}, vm64y" do
      let(:operands) { [ymm_k, vm64y] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}, vm64z" do
      let(:operands) { [zmm_k, vm64z] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, vm64x, xmm" do
      let(:operands) { [xmm, vm64x, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, vm64y, ymm" do
      let(:operands) { [ymm, vm64y, ymm] }

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
