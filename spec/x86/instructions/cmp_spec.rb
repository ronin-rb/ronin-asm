#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/cmp'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::CMP do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [al, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :cmp" do
      expect(subject.name).to be(:cmp)
    end

    context "when given operands of types al, imm8" do
      let(:operands) { [al, imm8] }

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

    context "when given operands of types reg8, reg8" do
      let(:operands) { [reg8, reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg8, mem8" do
      let(:operands) { [reg8, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ax, imm16" do
      let(:operands) { [ax, imm16] }

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

    context "when given operands of types reg16, imm16" do
      let(:operands) { [reg16, imm16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16, reg16" do
      let(:operands) { [reg16, reg16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg16, mem16" do
      let(:operands) { [reg16, mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types eax, imm32" do
      let(:operands) { [eax, imm32] }

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

    context "when given operands of types reg32, imm32" do
      let(:operands) { [reg32, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, reg32" do
      let(:operands) { [reg32, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32, mem32] }

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

    context "when given operands of types mem8, reg8" do
      let(:operands) { [mem8, reg8] }

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

    context "when given operands of types mem16, imm16" do
      let(:operands) { [mem16, imm16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem16, reg16" do
      let(:operands) { [mem16, reg16] }

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

    context "when given operands of types mem32, imm32" do
      let(:operands) { [mem32, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32, reg32" do
      let(:operands) { [mem32, reg32] }

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
