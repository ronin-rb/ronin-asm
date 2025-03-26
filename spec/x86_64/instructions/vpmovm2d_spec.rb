#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpmovm2d'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VPMOVM2D do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovm2d" do
      expect(subject.name).to be(:vpmovm2d)
    end

    context "when given operands of types xmm, k" do
      let(:operands) { [xmm, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :k]" do
        expect(subject.form).to eq([:xmm, :k])
      end
    end

    context "when given operands of types ymm, k" do
      let(:operands) { [ymm, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :k]" do
        expect(subject.form).to eq([:ymm, :k])
      end
    end

    context "when given operands of types zmm, k" do
      let(:operands) { [zmm, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :k]" do
        expect(subject.form).to eq([:zmm, :k])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovm2d #{operands.map(&:type).join(', ')}")
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
