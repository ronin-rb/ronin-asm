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

      it "must set #form to [:reg16, :reg16, :imm8]" do
        expect(subject.form).to eq([:reg16, :reg16, :imm8])
      end
    end

    context "when given operands of types reg16, reg16, cl" do
      let(:operands) { [reg16, reg16, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :reg16, :cl]" do
        expect(subject.form).to eq([:reg16, :reg16, :cl])
      end
    end

    context "when given operands of types reg32, reg32, imm8" do
      let(:operands) { [reg32, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :imm8]" do
        expect(subject.form).to eq([:reg32, :reg32, :imm8])
      end
    end

    context "when given operands of types reg32, reg32, cl" do
      let(:operands) { [reg32, reg32, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :cl]" do
        expect(subject.form).to eq([:reg32, :reg32, :cl])
      end
    end

    context "when given operands of types reg64, reg64, imm8" do
      let(:operands) { [reg64, reg64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64, :imm8]" do
        expect(subject.form).to eq([:reg64, :reg64, :imm8])
      end
    end

    context "when given operands of types reg64, reg64, cl" do
      let(:operands) { [reg64, reg64, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64, :cl]" do
        expect(subject.form).to eq([:reg64, :reg64, :cl])
      end
    end

    context "when given operands of types mem16, reg16, imm8" do
      let(:operands) { [mem16, reg16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :reg16, :imm8]" do
        expect(subject.form).to eq([:mem16, :reg16, :imm8])
      end
    end

    context "when given operands of types mem16, reg16, cl" do
      let(:operands) { [mem16, reg16, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :reg16, :cl]" do
        expect(subject.form).to eq([:mem16, :reg16, :cl])
      end
    end

    context "when given operands of types mem32, reg32, imm8" do
      let(:operands) { [mem32, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32, :imm8]" do
        expect(subject.form).to eq([:mem32, :reg32, :imm8])
      end
    end

    context "when given operands of types mem32, reg32, cl" do
      let(:operands) { [mem32, reg32, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32, :cl]" do
        expect(subject.form).to eq([:mem32, :reg32, :cl])
      end
    end

    context "when given operands of types mem64, reg64, imm8" do
      let(:operands) { [mem64, reg64, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64, :imm8]" do
        expect(subject.form).to eq([:mem64, :reg64, :imm8])
      end
    end

    context "when given operands of types mem64, reg64, cl" do
      let(:operands) { [mem64, reg64, cl] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64, :cl]" do
        expect(subject.form).to eq([:mem64, :reg64, :cl])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: shld #{operands.map(&:type).join(', ')}")
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
