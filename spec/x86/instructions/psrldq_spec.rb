#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/psrldq'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::PSRLDQ do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :psrldq" do
      expect(subject.name).to be(:psrldq)
    end

    context "when given operands of types xmm, imm8" do
      let(:operands) { [xmm, imm8] }

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
