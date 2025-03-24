#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/cvttpd2pi'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::CVTTPD2PI do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [mmx, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :cvttpd2pi" do
      expect(subject.name).to be(:cvttpd2pi)
    end

    context "when given operands of types mmx, xmm" do
      let(:operands) { [mmx, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mmx, mem128" do
      let(:operands) { [mmx, mem128] }

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
