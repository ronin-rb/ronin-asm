#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vstmxcsr'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VSTMXCSR do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mem32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vstmxcsr" do
      expect(subject.name).to be(:vstmxcsr)
    end

    context "when given operands of types mem32" do
      let(:operands) { [mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32]" do
        expect(subject.form).to eq([:mem32])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vstmxcsr #{operands.map(&:type).join(', ')}")
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
