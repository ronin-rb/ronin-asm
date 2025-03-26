#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vfnmaddps'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VFNMADDPS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm, xmm, xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfnmaddps" do
      expect(subject.name).to be(:vfnmaddps)
    end

    context "when given operands of types xmm, xmm, xmm, xmm" do
      let(:operands) { [xmm, xmm, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :xmm])
      end
    end

    context "when given operands of types xmm, xmm, xmm, mem128" do
      let(:operands) { [xmm, xmm, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :mem128])
      end
    end

    context "when given operands of types xmm, xmm, mem128, xmm" do
      let(:operands) { [xmm, xmm, mem128, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128, :xmm])
      end
    end

    context "when given operands of types ymm, ymm, ymm, ymm" do
      let(:operands) { [ymm, ymm, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types ymm, ymm, ymm, mem256" do
      let(:operands) { [ymm, ymm, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :mem256])
      end
    end

    context "when given operands of types ymm, ymm, mem256, ymm" do
      let(:operands) { [ymm, ymm, mem256, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256, :ymm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfnmaddps #{operands.map(&:type).join(', ')}")
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
