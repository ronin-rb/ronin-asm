#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vgatherdpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VGATHERDPD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k, vm32x] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vgatherdpd" do
      expect(subject.name).to be(:vgatherdpd)
    end

    context "when given operands of types xmm{k}, vm32x" do
      let(:operands) { [xmm_k, vm32x] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}, vm32x" do
      let(:operands) { [ymm_k, vm32x] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}, vm32y" do
      let(:operands) { [zmm_k, vm32y] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, vm32x, xmm" do
      let(:operands) { [xmm, vm32x, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, vm32x, ymm" do
      let(:operands) { [ymm, vm32x, ymm] }

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
