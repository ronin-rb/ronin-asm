#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpermil2pd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPERMIL2PD do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), xmm(1), xmm(2), xmm(3), imm8(4)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpermil2pd" do
      expect(subject.name).to be(:vpermil2pd)
    end

    context "when given operands of types xmm, xmm, xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), xmm(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, xmm, mem128, imm8" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), mem128(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :mem128, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :mem128, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, mem128, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128, :xmm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), ymm(2), ymm(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, ymm, mem256, imm8" do
      let(:operands) { [ymm(0), ymm(1), ymm(2), mem256(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :mem256, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :mem256, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, mem256, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256, :ymm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpermil2pd #{operands.map(&:type).join(', ')}")
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
