#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfmaddsubpd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VFMADDSUBPD do
  include Helpers::X86::Operands

  let(:operands) { [xmm(0), xmm(1), xmm(2), xmm(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfmaddsubpd" do
      expect(subject.name).to be(:vfmaddsubpd)
    end

    context "when given operands of types xmm, xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), xmm(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :xmm])
      end
    end

    context "when given operands of types xmm, xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), mem128(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :mem128])
      end
    end

    context "when given operands of types xmm, xmm, mem128, xmm" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128, :xmm])
      end
    end

    context "when given operands of types ymm, ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2), ymm(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types ymm, ymm, ymm, mem256" do
      let(:operands) { [ymm(0), ymm(1), ymm(2), mem256(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :mem256])
      end
    end

    context "when given operands of types ymm, ymm, mem256, ymm" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfmaddsubpd #{operands.map(&:type).join(', ')}")
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
