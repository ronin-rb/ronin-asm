#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/shld'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::SHLD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg16, reg16, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :shld" do
      expect(subject.name).to be(:shld)
    end

    context "when given operands of types reg16, reg16, imm8" do
      let(:operands) { [reg16, reg16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16, reg16, cl" do
      let(:operands) { [reg16, reg16, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, reg32, imm8" do
      let(:operands) { [reg32, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, reg32, cl" do
      let(:operands) { [reg32, reg32, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, reg64, imm8" do
      let(:operands) { [reg64, reg64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, reg64, cl" do
      let(:operands) { [reg64, reg64, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16, reg16, imm8" do
      let(:operands) { [mem16, reg16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16, reg16, cl" do
      let(:operands) { [mem16, reg16, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32, reg32, imm8" do
      let(:operands) { [mem32, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32, reg32, cl" do
      let(:operands) { [mem32, reg32, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem64, reg64, imm8" do
      let(:operands) { [mem64, reg64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem64, reg64, cl" do
      let(:operands) { [mem64, reg64, cl] }

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
