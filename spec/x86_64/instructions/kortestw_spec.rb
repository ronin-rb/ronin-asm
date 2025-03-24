#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/kortestw'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::KORTESTW do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k, k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :kortestw" do
      expect(subject.name).to be(:kortestw)
    end

    context "when given operands of types k, k" do
      let(:operands) { [k, k] }

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
