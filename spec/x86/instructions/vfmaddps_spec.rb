#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfmaddps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VFMADDPS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, xmm, xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfmaddps" do
      expect(subject.name).to be(:vfmaddps)
    end

    context "when given operands of types xmm, xmm, xmm, xmm" do
      let(:operands) { [xmm, xmm, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, xmm, mem128" do
      let(:operands) { [xmm, xmm, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem128, xmm" do
      let(:operands) { [xmm, xmm, mem128, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, ymm, ymm" do
      let(:operands) { [ymm, ymm, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, ymm, mem256" do
      let(:operands) { [ymm, ymm, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, mem256, ymm" do
      let(:operands) { [ymm, ymm, mem256, ymm] }

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
