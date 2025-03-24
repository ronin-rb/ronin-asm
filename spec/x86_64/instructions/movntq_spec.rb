#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/movntq'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::MOVNTQ do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mem64, mmx] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movntq" do
      expect(subject.name).to be(:movntq)
    end

    context "when given operands of types mem64, mmx" do
      let(:operands) { [mem64, mmx] }

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
