#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vucomiss'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VUCOMISS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vucomiss" do
      expect(subject.name).to be(:vucomiss)
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem32" do
      let(:operands) { [xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem32" do
      let(:operands) { [xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, {sae}" do
      let(:operands) { [xmm, xmm, sae] }

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
