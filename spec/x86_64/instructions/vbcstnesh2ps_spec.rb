#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vbcstnesh2ps'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VBCSTNESH2PS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, mem16] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbcstnesh2ps" do
      expect(subject.name).to be(:vbcstnesh2ps)
    end

    context "when given operands of types xmm, mem16" do
      let(:operands) { [xmm, mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, mem16" do
      let(:operands) { [ymm, mem16] }

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
