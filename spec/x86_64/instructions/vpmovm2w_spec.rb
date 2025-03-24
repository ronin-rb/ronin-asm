#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpmovm2w'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VPMOVM2W do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovm2w" do
      expect(subject.name).to be(:vpmovm2w)
    end

    context "when given operands of types xmm, k" do
      let(:operands) { [xmm, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, k" do
      let(:operands) { [ymm, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, k" do
      let(:operands) { [zmm, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
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
