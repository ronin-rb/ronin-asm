#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/pavgb'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::PAVGB do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [mmx, mmx] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pavgb" do
      expect(subject.name).to be(:pavgb)
    end

    context "when given operands of types mmx, mmx" do
      let(:operands) { [mmx, mmx] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mmx, mem64" do
      let(:operands) { [mmx, mem64] }

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

    context "when given operands of types xmm, mem128" do
      let(:operands) { [xmm, mem128] }

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
