#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvtneobf162ps'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCVTNEOBF162PS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, mem128] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtneobf162ps" do
      expect(subject.name).to be(:vcvtneobf162ps)
    end

    context "when given operands of types xmm, mem128" do
      let(:operands) { [xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, mem256" do
      let(:operands) { [ymm, mem256] }

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
