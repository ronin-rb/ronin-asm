#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpmaskmovq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPMASKMOVQ do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), xmm(1), mem128(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmaskmovq" do
      expect(subject.name).to be(:vpmaskmovq)
    end

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128])
      end
    end

    context "when given operands of types ymm, ymm, mem256" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256])
      end
    end

    context "when given operands of types mem128, xmm, xmm" do
      let(:operands) { [mem128(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :xmm, :xmm]" do
        expect(subject.form).to eq([:mem128, :xmm, :xmm])
      end
    end

    context "when given operands of types mem256, ymm, ymm" do
      let(:operands) { [mem256(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :ymm, :ymm]" do
        expect(subject.form).to eq([:mem256, :ymm, :ymm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmaskmovq #{operands.map(&:type).join(', ')}")
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
