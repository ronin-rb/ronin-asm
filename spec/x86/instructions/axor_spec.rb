#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/axor'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::AXOR do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [mem32, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :axor" do
      expect(subject.name).to be(:axor)
    end

    context "when given operands of types mem32, reg32" do
      let(:operands) { [mem32, reg32] }

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
