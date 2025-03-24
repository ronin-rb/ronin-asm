#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/movq2dq'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::MOVQ2DQ do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, mmx] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movq2dq" do
      expect(subject.name).to be(:movq2dq)
    end

    context "when given operands of types xmm, mmx" do
      let(:operands) { [xmm, mmx] }

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
