#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movntpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::MOVNTPD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [mem128, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movntpd" do
      expect(subject.name).to be(:movntpd)
    end

    context "when given operands of types mem128, xmm" do
      let(:operands) { [mem128, xmm] }

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
