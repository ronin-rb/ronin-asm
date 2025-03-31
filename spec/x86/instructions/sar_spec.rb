#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/sar'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::SAR do
  include Helpers::X86::Operands

  let(:operands) { [reg8(0), imm8_1(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :sar" do
      expect(subject.name).to be(:sar)
    end

    context "when given operands of types reg8, 1" do
      let(:operands) { [reg8(0), imm8_1(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg8, :"1"]' do
        expect(subject.form).to eq([:reg8, :"1"])
      end
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

    context "when given operands of types reg8, cl" do
      let(:operands) { [reg8(0), cl(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :cl]" do
        expect(subject.form).to eq([:reg8, :cl])
      end
    end

    context "when given operands of types reg16, 1" do
      let(:operands) { [reg16(0), imm8_1(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg16, :"1"]' do
        expect(subject.form).to eq([:reg16, :"1"])
      end
    end

    context "when given operands of types reg16, imm8" do
      let(:operands) { [reg16(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :imm8]" do
        expect(subject.form).to eq([:reg16, :imm8])
      end
    end

    context "when given operands of types reg16, cl" do
      let(:operands) { [reg16(0), cl(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :cl]" do
        expect(subject.form).to eq([:reg16, :cl])
      end
    end

    context "when given operands of types reg32, 1" do
      let(:operands) { [reg32(0), imm8_1(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg32, :"1"]' do
        expect(subject.form).to eq([:reg32, :"1"])
      end
    end

    context "when given operands of types reg32, imm8" do
      let(:operands) { [reg32(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :imm8]" do
        expect(subject.form).to eq([:reg32, :imm8])
      end
    end

    context "when given operands of types reg32, cl" do
      let(:operands) { [reg32(0), cl(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :cl]" do
        expect(subject.form).to eq([:reg32, :cl])
      end
    end

    context "when given operands of types mem8, 1" do
      let(:operands) { [mem8(0), imm8_1(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:mem8, :"1"]' do
        expect(subject.form).to eq([:mem8, :"1"])
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

    context "when given operands of types mem8, cl" do
      let(:operands) { [mem8(0), cl(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :cl]" do
        expect(subject.form).to eq([:mem8, :cl])
      end
    end

    context "when given operands of types mem16, 1" do
      let(:operands) { [mem16(0), imm8_1(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:mem16, :"1"]' do
        expect(subject.form).to eq([:mem16, :"1"])
      end
    end

    context "when given operands of types mem16, imm8" do
      let(:operands) { [mem16(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :imm8]" do
        expect(subject.form).to eq([:mem16, :imm8])
      end
    end

    context "when given operands of types mem16, cl" do
      let(:operands) { [mem16(0), cl(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :cl]" do
        expect(subject.form).to eq([:mem16, :cl])
      end
    end

    context "when given operands of types mem32, 1" do
      let(:operands) { [mem32(0), imm8_1(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:mem32, :"1"]' do
        expect(subject.form).to eq([:mem32, :"1"])
      end
    end

    context "when given operands of types mem32, imm8" do
      let(:operands) { [mem32(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :imm8]" do
        expect(subject.form).to eq([:mem32, :imm8])
      end
    end

    context "when given operands of types mem32, cl" do
      let(:operands) { [mem32(0), cl(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :cl]" do
        expect(subject.form).to eq([:mem32, :cl])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: sar #{operands.map(&:type).join(', ')}")
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
