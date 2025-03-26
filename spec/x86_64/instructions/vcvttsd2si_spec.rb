#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvttsd2si'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCVTTSD2SI do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [reg32, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvttsd2si" do
      expect(subject.name).to be(:vcvttsd2si)
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :xmm]" do
        expect(subject.form).to eq([:reg32, :xmm])
      end
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :xmm]" do
        expect(subject.form).to eq([:reg32, :xmm])
      end
    end

    context "when given operands of types reg32, mem64" do
      let(:operands) { [reg32, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem64]" do
        expect(subject.form).to eq([:reg32, :mem64])
      end
    end

    context "when given operands of types reg32, mem64" do
      let(:operands) { [reg32, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem64]" do
        expect(subject.form).to eq([:reg32, :mem64])
      end
    end

    context "when given operands of types reg64, xmm" do
      let(:operands) { [reg64, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :xmm]" do
        expect(subject.form).to eq([:reg64, :xmm])
      end
    end

    context "when given operands of types reg64, xmm" do
      let(:operands) { [reg64, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :xmm]" do
        expect(subject.form).to eq([:reg64, :xmm])
      end
    end

    context "when given operands of types reg64, mem64" do
      let(:operands) { [reg64, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem64]" do
        expect(subject.form).to eq([:reg64, :mem64])
      end
    end

    context "when given operands of types reg64, mem64" do
      let(:operands) { [reg64, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem64]" do
        expect(subject.form).to eq([:reg64, :mem64])
      end
    end

    context "when given operands of types reg32, xmm, {sae}" do
      let(:operands) { [reg32, xmm, sae] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg32, :xmm, :"{sae}"]' do
        expect(subject.form).to eq([:reg32, :xmm, :"{sae}"])
      end
    end

    context "when given operands of types reg64, xmm, {sae}" do
      let(:operands) { [reg64, xmm, sae] }

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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvttsd2si #{operands.map(&:type).join(', ')}")
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
