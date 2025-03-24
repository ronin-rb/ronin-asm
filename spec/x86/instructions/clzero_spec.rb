#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/clzero'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::CLZERO do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :clzero" do
      expect(subject.name).to be(:clzero)
    end

    context "when given no operands" do
      let(:operands) { [] }

      it "must set #operands to an empty Array" do
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
