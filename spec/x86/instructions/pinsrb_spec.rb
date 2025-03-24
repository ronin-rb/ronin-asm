#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/pinsrb'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::PINSRB do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, reg32, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pinsrb" do
      expect(subject.name).to be(:pinsrb)
    end

    context "when given operands of types xmm, reg32, imm8" do
      let(:operands) { [xmm, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem8, imm8" do
      let(:operands) { [xmm, mem8, imm8] }

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
