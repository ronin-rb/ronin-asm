#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/js'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::JS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [rel8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :js" do
      expect(subject.name).to be(:js)
    end

    context "when given operands of types rel8" do
      let(:operands) { [rel8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types rel32" do
      let(:operands) { [rel32] }

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
