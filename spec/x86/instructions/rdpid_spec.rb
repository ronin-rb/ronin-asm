#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/rdpid'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::RDPID do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :rdpid" do
      expect(subject.name).to be(:rdpid)
    end

    context "when given operands of types reg32" do
      let(:operands) { [reg32] }

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
