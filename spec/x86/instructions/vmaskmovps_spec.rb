#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vmaskmovps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VMASKMOVPS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, xmm, mem128] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vmaskmovps" do
      expect(subject.name).to be(:vmaskmovps)
    end

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, mem256" do
      let(:operands) { [ymm, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem128, xmm, xmm" do
      let(:operands) { [mem128, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem256, ymm, ymm" do
      let(:operands) { [mem256, ymm, ymm] }

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
