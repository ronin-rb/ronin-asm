#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/movsx'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::MOVSX do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg16, reg8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movsx" do
      expect(subject.name).to be(:movsx)
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

    context "when given operands of types reg64, reg8" do
      let(:operands) { [reg64, reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, reg16" do
      let(:operands) { [reg64, reg16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, mem8" do
      let(:operands) { [reg64, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, mem16" do
      let(:operands) { [reg64, mem16] }

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
