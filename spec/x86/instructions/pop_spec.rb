#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/pop'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::POP do
  include Helpers::X86::Operands

  let(:operands) { [reg16(0)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pop" do
      expect(subject.name).to be(:pop)
    end

    context "when given operands of types reg16" do
      let(:operands) { [reg16(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16]" do
        expect(subject.form).to eq([:reg16])
      end
    end

    context "when given operands of types reg32" do
      let(:operands) { [reg32(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32]" do
        expect(subject.form).to eq([:reg32])
      end
    end

    context "when given operands of types mem16" do
      let(:operands) { [mem16(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16]" do
        expect(subject.form).to eq([:mem16])
      end
    end

    context "when given operands of types mem32" do
      let(:operands) { [mem32(0)] }

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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: pop #{operands.map(&:type).join(', ')}")
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
