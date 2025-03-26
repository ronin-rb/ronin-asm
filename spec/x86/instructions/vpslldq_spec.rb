#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpslldq'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPSLLDQ do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpslldq" do
      expect(subject.name).to be(:vpslldq)
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, mem128, imm8" do
      let(:operands) { [xmm, mem128, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem128, :imm8]" do
        expect(subject.form).to eq([:xmm, :mem128, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, mem256, imm8" do
      let(:operands) { [ymm, mem256, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem256, :imm8]" do
        expect(subject.form).to eq([:ymm, :mem256, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types zmm, mem512, imm8" do
      let(:operands) { [zmm, mem512, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem512, :imm8]" do
        expect(subject.form).to eq([:zmm, :mem512, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpslldq #{operands.map(&:type).join(', ')}")
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
