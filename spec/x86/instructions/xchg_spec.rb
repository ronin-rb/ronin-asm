#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/xchg'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::XCHG do
  include Helpers::X86::Operands

  let(:operands) { [reg8(0), reg8(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :xchg" do
      expect(subject.name).to be(:xchg)
    end

    context "when given operands of types reg8, reg8" do
      let(:operands) { [reg8(0), reg8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :reg8]" do
        expect(subject.form).to eq([:reg8, :reg8])
      end
    end

    context "when given operands of types reg8, mem8" do
      let(:operands) { [reg8(0), mem8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :mem8]" do
        expect(subject.form).to eq([:reg8, :mem8])
      end
    end

    context "when given operands of types ax, reg16" do
      let(:operands) { [ax(0), reg16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ax, :reg16]" do
        expect(subject.form).to eq([:ax, :reg16])
      end
    end

    context "when given operands of types reg16, ax" do
      let(:operands) { [reg16(0), ax(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :ax]" do
        expect(subject.form).to eq([:reg16, :ax])
      end
    end

    context "when given operands of types reg16, reg16" do
      let(:operands) { [reg16(0), reg16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :reg16]" do
        expect(subject.form).to eq([:reg16, :reg16])
      end
    end

    context "when given operands of types reg16, mem16" do
      let(:operands) { [reg16(0), mem16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :mem16]" do
        expect(subject.form).to eq([:reg16, :mem16])
      end
    end

    context "when given operands of types eax, reg32" do
      let(:operands) { [eax(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:eax, :reg32]" do
        expect(subject.form).to eq([:eax, :reg32])
      end
    end

    context "when given operands of types reg32, eax" do
      let(:operands) { [reg32(0), eax(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :eax]" do
        expect(subject.form).to eq([:reg32, :eax])
      end
    end

    context "when given operands of types reg32, reg32" do
      let(:operands) { [reg32(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32]" do
        expect(subject.form).to eq([:reg32, :reg32])
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :mem32])
      end
    end

    context "when given operands of types mem8, reg8" do
      let(:operands) { [mem8(0), reg8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :reg8]" do
        expect(subject.form).to eq([:mem8, :reg8])
      end
    end

    context "when given operands of types mem16, reg16" do
      let(:operands) { [mem16(0), reg16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :reg16]" do
        expect(subject.form).to eq([:mem16, :reg16])
      end
    end

    context "when given operands of types mem32, reg32" do
      let(:operands) { [mem32(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32]" do
        expect(subject.form).to eq([:mem32, :reg32])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: xchg #{operands.map(&:type).join(', ')}")
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
