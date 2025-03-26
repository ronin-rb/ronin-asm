#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/andn'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::ANDN do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [reg32, reg32, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :andn" do
      expect(subject.name).to be(:andn)
    end

    context "when given operands of types reg32, reg32, reg32" do
      let(:operands) { [reg32, reg32, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :reg32]" do
        expect(subject.form).to eq([:reg32, :reg32, :reg32])
      end
    end

    context "when given operands of types reg32, reg32, mem32" do
      let(:operands) { [reg32, reg32, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :reg32, :mem32])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: andn #{operands.map(&:type).join(', ')}")
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
