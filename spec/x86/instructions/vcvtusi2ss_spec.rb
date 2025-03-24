#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvtusi2ss'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCVTUSI2SS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, xmm, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtusi2ss" do
      expect(subject.name).to be(:vcvtusi2ss)
    end

    context "when given operands of types xmm, xmm, reg32" do
      let(:operands) { [xmm, xmm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, {er}, reg32" do
      let(:operands) { [xmm, xmm, er, reg32] }

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
