#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/pextrw'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::PEXTRW do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg32, mmx, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pextrw" do
      expect(subject.name).to be(:pextrw)
    end

    context "when given operands of types reg32, mmx, imm8" do
      let(:operands) { [reg32, mmx, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, xmm, imm8" do
      let(:operands) { [reg32, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16, xmm, imm8" do
      let(:operands) { [mem16, xmm, imm8] }

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
