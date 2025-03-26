#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/ldtilecfg'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::LDTILECFG do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mem512] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :ldtilecfg" do
      expect(subject.name).to be(:ldtilecfg)
    end

    context "when given operands of types mem512" do
      let(:operands) { [mem512] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem512]" do
        expect(subject.form).to eq([:mem512])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: ldtilecfg #{operands.map(&:type).join(', ')}")
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
