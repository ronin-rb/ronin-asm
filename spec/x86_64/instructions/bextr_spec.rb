#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/bextr'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::BEXTR do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg32, reg32, imm32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :bextr" do
      expect(subject.name).to be(:bextr)
    end

    context "when given operands of types reg32, reg32, imm32" do
      let(:operands) { [reg32, reg32, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :imm32]" do
        expect(subject.form).to eq([:reg32, :reg32, :imm32])
      end
    end

    context "when given operands of types reg32, reg32, reg32" do
      let(:operands) { [reg32, reg32, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :reg32]" do
        expect(subject.form).to eq([:reg32, :reg32, :reg32])
      end
    end

    context "when given operands of types reg32, mem32, imm32" do
      let(:operands) { [reg32, mem32, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32, :imm32]" do
        expect(subject.form).to eq([:reg32, :mem32, :imm32])
      end
    end

    context "when given operands of types reg32, mem32, reg32" do
      let(:operands) { [reg32, mem32, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32, :reg32]" do
        expect(subject.form).to eq([:reg32, :mem32, :reg32])
      end
    end

    context "when given operands of types reg64, reg64, imm32" do
      let(:operands) { [reg64, reg64, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64, :imm32]" do
        expect(subject.form).to eq([:reg64, :reg64, :imm32])
      end
    end

    context "when given operands of types reg64, reg64, reg64" do
      let(:operands) { [reg64, reg64, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64, :reg64]" do
        expect(subject.form).to eq([:reg64, :reg64, :reg64])
      end
    end

    context "when given operands of types reg64, mem64, imm32" do
      let(:operands) { [reg64, mem64, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem64, :imm32]" do
        expect(subject.form).to eq([:reg64, :mem64, :imm32])
      end
    end

    context "when given operands of types reg64, mem64, reg64" do
      let(:operands) { [reg64, mem64, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem64, :reg64]" do
        expect(subject.form).to eq([:reg64, :mem64, :reg64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: bextr #{operands.map(&:type).join(', ')}")
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
