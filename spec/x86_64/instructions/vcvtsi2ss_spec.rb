#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvtsi2ss'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCVTSI2SS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, xmm, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtsi2ss" do
      expect(subject.name).to be(:vcvtsi2ss)
    end

    context "when given operands of types xmm, xmm, reg32" do
      let(:operands) { [xmm, xmm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :reg32]" do
        expect(subject.form).to eq([:xmm, :xmm, :reg32])
      end
    end

    context "when given operands of types xmm, xmm, reg32" do
      let(:operands) { [xmm, xmm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :reg32]" do
        expect(subject.form).to eq([:xmm, :xmm, :reg32])
      end
    end

    context "when given operands of types xmm, xmm, reg64" do
      let(:operands) { [xmm, xmm, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :reg64]" do
        expect(subject.form).to eq([:xmm, :xmm, :reg64])
      end
    end

    context "when given operands of types xmm, xmm, reg64" do
      let(:operands) { [xmm, xmm, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :reg64]" do
        expect(subject.form).to eq([:xmm, :xmm, :reg64])
      end
    end

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem32])
      end
    end

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem32])
      end
    end

    context "when given operands of types xmm, xmm, mem64" do
      let(:operands) { [xmm, xmm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem64])
      end
    end

    context "when given operands of types xmm, xmm, mem64" do
      let(:operands) { [xmm, xmm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem64])
      end
    end

    context "when given operands of types xmm, xmm, {er}, reg32" do
      let(:operands) { [xmm, xmm, er, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :"{er}", :reg32]' do
        expect(subject.form).to eq([:xmm, :xmm, :"{er}", :reg32])
      end
    end

    context "when given operands of types xmm, xmm, {er}, reg64" do
      let(:operands) { [xmm, xmm, er, reg64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :"{er}", :reg64]' do
        expect(subject.form).to eq([:xmm, :xmm, :"{er}", :reg64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtsi2ss #{operands.map(&:type).join(', ')}")
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
