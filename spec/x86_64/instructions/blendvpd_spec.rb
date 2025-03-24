#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/blendvpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::BLENDVPD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, xmm, xmm0] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :blendvpd" do
      expect(subject.name).to be(:blendvpd)
    end

    context "when given operands of types xmm, xmm, xmm0" do
      let(:operands) { [xmm, xmm, xmm0] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem128, xmm0" do
      let(:operands) { [xmm, mem128, xmm0] }

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
