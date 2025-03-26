#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/sets'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::SETS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :sets" do
      expect(subject.name).to be(:sets)
    end

    context "when given operands of types reg8" do
      let(:operands) { [reg8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8]" do
        expect(subject.form).to eq([:reg8])
      end
    end

    context "when given operands of types mem8" do
      let(:operands) { [mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8]" do
        expect(subject.form).to eq([:mem8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: sets #{operands.map(&:type).join(', ')}")
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
