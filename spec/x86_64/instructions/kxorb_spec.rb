#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/kxorb'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::KXORB do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k, k, k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :kxorb" do
      expect(subject.name).to be(:kxorb)
    end

    context "when given operands of types k, k, k" do
      let(:operands) { [k, k, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :k, :k]" do
        expect(subject.form).to eq([:k, :k, :k])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: kxorb #{operands.map(&:type).join(', ')}")
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
