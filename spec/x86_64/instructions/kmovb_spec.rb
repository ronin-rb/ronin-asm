#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/kmovb'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::KMOVB do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k, k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :kmovb" do
      expect(subject.name).to be(:kmovb)
    end

    context "when given operands of types k, k" do
      let(:operands) { [k, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :k]" do
        expect(subject.form).to eq([:k, :k])
      end
    end

    context "when given operands of types k, reg32" do
      let(:operands) { [k, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :reg32]" do
        expect(subject.form).to eq([:k, :reg32])
      end
    end

    context "when given operands of types k, mem8" do
      let(:operands) { [k, mem8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :mem8]" do
        expect(subject.form).to eq([:k, :mem8])
      end
    end

    context "when given operands of types reg32, k" do
      let(:operands) { [reg32, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :k]" do
        expect(subject.form).to eq([:reg32, :k])
      end
    end

    context "when given operands of types mem8, k" do
      let(:operands) { [mem8, k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :k]" do
        expect(subject.form).to eq([:mem8, :k])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: kmovb #{operands.map(&:type).join(', ')}")
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
