#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/emms'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::EMMS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :emms" do
      expect(subject.name).to be(:emms)
    end

    context "when given no operands" do
      let(:operands) { [] }

      it "must set #operands to an empty Array" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to an empty Array" do
        expect(subject.form).to eq([])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: emms #{operands.map(&:type).join(', ')}")
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
