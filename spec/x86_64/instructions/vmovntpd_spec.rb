#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vmovntpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VMOVNTPD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mem128, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vmovntpd" do
      expect(subject.name).to be(:vmovntpd)
    end

    context "when given operands of types mem128, xmm" do
      let(:operands) { [mem128, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :xmm]" do
        expect(subject.form).to eq([:mem128, :xmm])
      end
    end

    context "when given operands of types mem128, xmm" do
      let(:operands) { [mem128, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :xmm]" do
        expect(subject.form).to eq([:mem128, :xmm])
      end
    end

    context "when given operands of types mem256, ymm" do
      let(:operands) { [mem256, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :ymm]" do
        expect(subject.form).to eq([:mem256, :ymm])
      end
    end

    context "when given operands of types mem256, ymm" do
      let(:operands) { [mem256, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :ymm]" do
        expect(subject.form).to eq([:mem256, :ymm])
      end
    end

    context "when given operands of types mem512, zmm" do
      let(:operands) { [mem512, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem512, :zmm]" do
        expect(subject.form).to eq([:mem512, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vmovntpd #{operands.map(&:type).join(', ')}")
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
