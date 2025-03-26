#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/blendvps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::BLENDVPS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, xmm, xmm0] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :blendvps" do
      expect(subject.name).to be(:blendvps)
    end

    context "when given operands of types xmm, xmm, xmm0" do
      let(:operands) { [xmm, xmm, xmm0] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm0]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm0])
      end
    end

    context "when given operands of types xmm, mem128, xmm0" do
      let(:operands) { [xmm, mem128, xmm0] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem128, :xmm0]" do
        expect(subject.form).to eq([:xmm, :mem128, :xmm0])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: blendvps #{operands.map(&:type).join(', ')}")
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
