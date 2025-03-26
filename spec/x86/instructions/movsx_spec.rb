#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movsx'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::MOVSX do
  include_context "Ronin::ASM::X86 Operands"

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

      it "must set #form to [:reg16, :reg8]" do
        expect(subject.form).to eq([:reg16, :reg8])
      end
    end

    context "when given operands of types reg16, mem8" do
      let(:operands) { [reg16, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :mem8]" do
        expect(subject.form).to eq([:reg16, :mem8])
      end
    end

    context "when given operands of types reg32, reg8" do
      let(:operands) { [reg32, reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg8]" do
        expect(subject.form).to eq([:reg32, :reg8])
      end
    end

    context "when given operands of types reg32, reg16" do
      let(:operands) { [reg32, reg16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg16]" do
        expect(subject.form).to eq([:reg32, :reg16])
      end
    end

    context "when given operands of types reg32, mem8" do
      let(:operands) { [reg32, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem8]" do
        expect(subject.form).to eq([:reg32, :mem8])
      end
    end

    context "when given operands of types reg32, mem16" do
      let(:operands) { [reg32, mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem16]" do
        expect(subject.form).to eq([:reg32, :mem16])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: movsx #{operands.map(&:type).join(', ')}")
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
