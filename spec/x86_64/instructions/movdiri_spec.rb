#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/movdiri'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::MOVDIRI do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mem32, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movdiri" do
      expect(subject.name).to be(:movdiri)
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

    context "when given operands of types mem64, reg64" do
      let(:operands) { [mem64, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64]" do
        expect(subject.form).to eq([:mem64, :reg64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: movdiri #{operands.map(&:type).join(', ')}")
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
