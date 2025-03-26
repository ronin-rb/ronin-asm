#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vperm2f128'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPERM2F128 do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [ymm, ymm, ymm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vperm2f128" do
      expect(subject.name).to be(:vperm2f128)
    end

    context "when given operands of types ymm, ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, mem256, imm8" do
      let(:operands) { [ymm, ymm, mem256, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vperm2f128 #{operands.map(&:type).join(', ')}")
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
