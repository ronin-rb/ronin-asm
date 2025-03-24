#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/shl'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::SHL do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg8, imm8_1] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :shl" do
      expect(subject.name).to be(:shl)
    end

    context "when given operands of types reg8, 1" do
      let(:operands) { [reg8, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg8, imm8" do
      let(:operands) { [reg8, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg8, cl" do
      let(:operands) { [reg8, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16, 1" do
      let(:operands) { [reg16, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16, imm8" do
      let(:operands) { [reg16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16, cl" do
      let(:operands) { [reg16, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, 1" do
      let(:operands) { [reg32, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, imm8" do
      let(:operands) { [reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, cl" do
      let(:operands) { [reg32, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, 1" do
      let(:operands) { [reg64, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, imm8" do
      let(:operands) { [reg64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, cl" do
      let(:operands) { [reg64, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem8, 1" do
      let(:operands) { [mem8, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem8, imm8" do
      let(:operands) { [mem8, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem8, cl" do
      let(:operands) { [mem8, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16, 1" do
      let(:operands) { [mem16, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16, imm8" do
      let(:operands) { [mem16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16, cl" do
      let(:operands) { [mem16, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32, 1" do
      let(:operands) { [mem32, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32, imm8" do
      let(:operands) { [mem32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32, cl" do
      let(:operands) { [mem32, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem64, 1" do
      let(:operands) { [mem64, imm8_1] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem64, imm8" do
      let(:operands) { [mem64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem64, cl" do
      let(:operands) { [mem64, cl] }

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
