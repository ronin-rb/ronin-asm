#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/kmovd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::KMOVD do
  include Helpers::X86_64::Operands

  let(:operands) { [k(0), k(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :kmovd" do
      expect(subject.name).to be(:kmovd)
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

    context "when given operands of types k, mem32" do
      let(:operands) { [k(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :mem32]" do
        expect(subject.form).to eq([:k, :mem32])
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

    context "when given operands of types mem32, k" do
      let(:operands) { [mem32(0), k(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :k]" do
        expect(subject.form).to eq([:mem32, :k])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: kmovd #{operands.map(&:type).join(', ')}")
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
