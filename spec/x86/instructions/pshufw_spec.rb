#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/pshufw'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::PSHUFW do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [mmx, mmx, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pshufw" do
      expect(subject.name).to be(:pshufw)
    end

    context "when given operands of types mmx, mmx, imm8" do
      let(:operands) { [mmx, mmx, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mmx, mem64, imm8" do
      let(:operands) { [mmx, mem64, imm8] }

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
