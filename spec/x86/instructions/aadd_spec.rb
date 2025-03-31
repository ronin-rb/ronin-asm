#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/aadd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::AADD do
  include Helpers::X86::Operands

  let(:operands) { [mem32(0), reg32(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :aadd" do
      expect(subject.name).to be(:aadd)
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

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: aadd #{operands.map(&:type).join(', ')}")
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
