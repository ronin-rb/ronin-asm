#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/cvttss2si'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::CVTTSS2SI do
  include Helpers::X86::Operands

  let(:operands) { [reg32(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :cvttss2si" do
      expect(subject.name).to be(:cvttss2si)
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :xmm]" do
        expect(subject.form).to eq([:reg32, :xmm])
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :mem32])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: cvttss2si #{operands.map(&:type).join(', ')}")
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
