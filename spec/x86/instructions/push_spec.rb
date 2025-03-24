#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/push'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::PUSH do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :push" do
      expect(subject.name).to be(:push)
    end

    context "when given operands of types imm8" do
      let(:operands) { [imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types imm32" do
      let(:operands) { [imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16" do
      let(:operands) { [reg16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32" do
      let(:operands) { [reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16" do
      let(:operands) { [mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32" do
      let(:operands) { [mem32] }

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
