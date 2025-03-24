#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/pinsrw'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::PINSRW do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mmx, reg32, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pinsrw" do
      expect(subject.name).to be(:pinsrw)
    end

    context "when given operands of types mmx, reg32, imm8" do
      let(:operands) { [mmx, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mmx, mem16, imm8" do
      let(:operands) { [mmx, mem16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, reg32, imm8" do
      let(:operands) { [xmm, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem16, imm8" do
      let(:operands) { [xmm, mem16, imm8] }

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
