#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpmacssdql'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPMACSSDQL do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, xmm, xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmacssdql" do
      expect(subject.name).to be(:vpmacssdql)
    end

    context "when given operands of types xmm, xmm, xmm, xmm" do
      let(:operands) { [xmm, xmm, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem128, xmm" do
      let(:operands) { [xmm, xmm, mem128, xmm] }

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
