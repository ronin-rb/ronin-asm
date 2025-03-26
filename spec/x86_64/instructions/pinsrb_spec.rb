#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/pinsrb'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::PINSRB do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, reg32, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pinsrb" do
      expect(subject.name).to be(:pinsrb)
    end

    context "when given operands of types xmm, reg32, imm8" do
      let(:operands) { [xmm, reg32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :reg32, :imm8]" do
        expect(subject.form).to eq([:xmm, :reg32, :imm8])
      end
    end

    context "when given operands of types xmm, mem8, imm8" do
      let(:operands) { [xmm, mem8, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem8, :imm8]" do
        expect(subject.form).to eq([:xmm, :mem8, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: pinsrb #{operands.map(&:type).join(', ')}")
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
