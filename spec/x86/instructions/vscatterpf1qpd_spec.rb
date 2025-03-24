#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vscatterpf1qpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VSCATTERPF1QPD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [vm64z_k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterpf1qpd" do
      expect(subject.name).to be(:vscatterpf1qpd)
    end

    context "when given operands of types vm64z{k}" do
      let(:operands) { [vm64z_k] }

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
