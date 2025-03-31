#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/kmovw'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::KMOVW do
  include Helpers::X86_64::Operands

  let(:operands) { [k(0), k(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :kmovw" do
      expect(subject.name).to be(:kmovw)
    end

    context "when given operands of types k, k" do
      let(:operands) { [k(0), k(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :k]" do
        expect(subject.form).to eq([:k, :k])
      end
    end

    context "when given operands of types k, reg32" do
      let(:operands) { [k(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :reg32]" do
        expect(subject.form).to eq([:k, :reg32])
      end
    end

    context "when given operands of types k, mem16" do
      let(:operands) { [k(0), mem16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :mem16]" do
        expect(subject.form).to eq([:k, :mem16])
      end
    end

    context "when given operands of types reg32, k" do
      let(:operands) { [reg32(0), k(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :k]" do
        expect(subject.form).to eq([:reg32, :k])
      end
    end

    context "when given operands of types mem16, k" do
      let(:operands) { [mem16(0), k(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :k]" do
        expect(subject.form).to eq([:mem16, :k])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: kmovw #{operands.map(&:type).join(', ')}")
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
