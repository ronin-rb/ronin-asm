#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/kmovq'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::KMOVQ do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k, k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :kmovq" do
      expect(subject.name).to be(:kmovq)
    end

    context "when given operands of types k, k" do
      let(:operands) { [k, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, reg64" do
      let(:operands) { [k, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, mem64" do
      let(:operands) { [k, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types reg64, k" do
      let(:operands) { [reg64, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem64, k" do
      let(:operands) { [mem64, k] }

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
