#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvttss2usi'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VCVTTSS2USI do
  include Helpers::X86_64::Operands

  let(:operands) { [reg32(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvttss2usi" do
      expect(subject.name).to be(:vcvttss2usi)
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :xmm]" do
        expect(subject.form).to eq([:reg32, :xmm])
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :mem32])
      end
    end

    context "when given operands of types reg64, xmm" do
      let(:operands) { [reg64(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :xmm]" do
        expect(subject.form).to eq([:reg64, :xmm])
      end
    end

    context "when given operands of types reg64, mem32" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem32]" do
        expect(subject.form).to eq([:reg64, :mem32])
      end
    end

    context "when given operands of types reg32, xmm, {sae}" do
      let(:operands) { [reg32(0), xmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg32, :xmm, :"{sae}"]' do
        expect(subject.form).to eq([:reg32, :xmm, :"{sae}"])
      end
    end

    context "when given operands of types reg64, xmm, {sae}" do
      let(:operands) { [reg64(0), xmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg64, :xmm, :"{sae}"]' do
        expect(subject.form).to eq([:reg64, :xmm, :"{sae}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvttss2usi #{operands.map(&:type).join(', ')}")
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
