#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvtss2usi'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCVTSS2USI do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [reg32, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtss2usi" do
      expect(subject.name).to be(:vcvtss2usi)
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :xmm]" do
        expect(subject.form).to eq([:reg32, :xmm])
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :mem32])
      end
    end

    context "when given operands of types reg32, xmm, {er}" do
      let(:operands) { [reg32, xmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg32, :xmm, :"{er}"]' do
        expect(subject.form).to eq([:reg32, :xmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtss2usi #{operands.map(&:type).join(', ')}")
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
