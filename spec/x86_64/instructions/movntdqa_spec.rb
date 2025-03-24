#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/movntdqa'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::MOVNTDQA do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, mem128] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movntdqa" do
      expect(subject.name).to be(:movntdqa)
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
