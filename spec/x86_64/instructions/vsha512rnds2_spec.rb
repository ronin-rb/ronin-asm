#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vsha512rnds2'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VSHA512RNDS2 do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [ymm, ymm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vsha512rnds2" do
      expect(subject.name).to be(:vsha512rnds2)
    end

    context "when given operands of types ymm, ymm, xmm" do
      let(:operands) { [ymm, ymm, xmm] }

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
