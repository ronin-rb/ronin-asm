#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/mov'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::MOV do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg8, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :mov" do
      expect(subject.name).to be(:mov)
    end

    context "when given operands of types reg8, imm8" do
      let(:operands) { [reg8, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :imm8]" do
        expect(subject.form).to eq([:reg8, :imm8])
      end
    end

    context "when given operands of types reg8, reg8" do
      let(:operands) { [reg8, reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :reg8]" do
        expect(subject.form).to eq([:reg8, :reg8])
      end
    end

    context "when given operands of types reg8, mem8" do
      let(:operands) { [reg8, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :mem8]" do
        expect(subject.form).to eq([:reg8, :mem8])
      end
    end

    context "when given operands of types reg16, imm16" do
      let(:operands) { [reg16, imm16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :imm16]" do
        expect(subject.form).to eq([:reg16, :imm16])
      end
    end

    context "when given operands of types reg16, reg16" do
      let(:operands) { [reg16, reg16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :reg16]" do
        expect(subject.form).to eq([:reg16, :reg16])
      end
    end

    context "when given operands of types reg16, mem16" do
      let(:operands) { [reg16, mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :mem16]" do
        expect(subject.form).to eq([:reg16, :mem16])
      end
    end

    context "when given operands of types eax, moffset32" do
      let(:operands) { [eax, moffset32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:eax, :moffset32]" do
        expect(subject.form).to eq([:eax, :moffset32])
      end
    end

    context "when given operands of types reg32, imm32" do
      let(:operands) { [reg32, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :imm32]" do
        expect(subject.form).to eq([:reg32, :imm32])
      end
    end

    context "when given operands of types reg32, reg32" do
      let(:operands) { [reg32, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32]" do
        expect(subject.form).to eq([:reg32, :reg32])
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :mem32])
      end
    end

    context "when given operands of types rax, moffset64" do
      let(:operands) { [rax, moffset64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:rax, :moffset64]" do
        expect(subject.form).to eq([:rax, :moffset64])
      end
    end

    context "when given operands of types reg64, imm32" do
      let(:operands) { [reg64, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :imm32]" do
        expect(subject.form).to eq([:reg64, :imm32])
      end
    end

    context "when given operands of types reg64, imm64" do
      let(:operands) { [reg64, imm64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :imm64]" do
        expect(subject.form).to eq([:reg64, :imm64])
      end
    end

    context "when given operands of types reg64, reg64" do
      let(:operands) { [reg64, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64]" do
        expect(subject.form).to eq([:reg64, :reg64])
      end
    end

    context "when given operands of types reg64, mem64" do
      let(:operands) { [reg64, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem64]" do
        expect(subject.form).to eq([:reg64, :mem64])
      end
    end

    context "when given operands of types mem8, imm8" do
      let(:operands) { [mem8, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :imm8]" do
        expect(subject.form).to eq([:mem8, :imm8])
      end
    end

    context "when given operands of types mem8, reg8" do
      let(:operands) { [mem8, reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :reg8]" do
        expect(subject.form).to eq([:mem8, :reg8])
      end
    end

    context "when given operands of types mem16, imm16" do
      let(:operands) { [mem16, imm16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :imm16]" do
        expect(subject.form).to eq([:mem16, :imm16])
      end
    end

    context "when given operands of types mem16, reg16" do
      let(:operands) { [mem16, reg16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :reg16]" do
        expect(subject.form).to eq([:mem16, :reg16])
      end
    end

    context "when given operands of types mem32, imm32" do
      let(:operands) { [mem32, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :imm32]" do
        expect(subject.form).to eq([:mem32, :imm32])
      end
    end

    context "when given operands of types mem32, reg32" do
      let(:operands) { [mem32, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32]" do
        expect(subject.form).to eq([:mem32, :reg32])
      end
    end

    context "when given operands of types mem64, imm32" do
      let(:operands) { [mem64, imm32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :imm32]" do
        expect(subject.form).to eq([:mem64, :imm32])
      end
    end

    context "when given operands of types mem64, reg64" do
      let(:operands) { [mem64, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64]" do
        expect(subject.form).to eq([:mem64, :reg64])
      end
    end

    context "when given operands of types moffset32, eax" do
      let(:operands) { [moffset32, eax] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:moffset32, :eax]" do
        expect(subject.form).to eq([:moffset32, :eax])
      end
    end

    context "when given operands of types moffset64, rax" do
      let(:operands) { [moffset64, rax] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:moffset64, :rax]" do
        expect(subject.form).to eq([:moffset64, :rax])
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
