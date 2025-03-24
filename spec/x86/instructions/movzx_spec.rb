#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movzx'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::MOVZX do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [reg16, reg8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movzx" do
      expect(subject.name).to be(:movzx)
    end

    context "when given operands of types reg16, reg8" do
      let(:operands) { [reg16, reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16, mem8" do
      let(:operands) { [reg16, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, reg8" do
      let(:operands) { [reg32, reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, reg16" do
      let(:operands) { [reg32, reg16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, mem8" do
      let(:operands) { [reg32, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, mem16" do
      let(:operands) { [reg32, mem16] }

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
