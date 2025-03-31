#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/mov'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::MOV do
  include Helpers::X86::Operands

  let(:operands) { [reg8(0), imm8(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :mov" do
      expect(subject.name).to be(:mov)
    end

    context "when given operands of types reg8, imm8" do
      let(:operands) { [reg8(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :imm8]" do
        expect(subject.form).to eq([:reg8, :imm8])
      end
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

    context "when given operands of types reg16, imm16" do
      let(:operands) { [reg16(0), imm16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :imm16]" do
        expect(subject.form).to eq([:reg16, :imm16])
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

    context "when given operands of types eax, moffset32" do
      let(:operands) { [eax(0), moffset32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:eax, :moffset32]" do
        expect(subject.form).to eq([:eax, :moffset32])
      end
    end

    context "when given operands of types reg32, imm32" do
      let(:operands) { [reg32(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :imm32]" do
        expect(subject.form).to eq([:reg32, :imm32])
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

    context "when given operands of types mem8, imm8" do
      let(:operands) { [mem8(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :imm8]" do
        expect(subject.form).to eq([:mem8, :imm8])
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

    context "when given operands of types mem16, imm16" do
      let(:operands) { [mem16(0), imm16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :imm16]" do
        expect(subject.form).to eq([:mem16, :imm16])
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

    context "when given operands of types mem32, imm32" do
      let(:operands) { [mem32(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :imm32]" do
        expect(subject.form).to eq([:mem32, :imm32])
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

    context "when given operands of types moffset32, eax" do
      let(:operands) { [moffset32(0), eax(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:moffset32, :eax]" do
        expect(subject.form).to eq([:moffset32, :eax])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: mov #{operands.map(&:type).join(', ')}")
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
