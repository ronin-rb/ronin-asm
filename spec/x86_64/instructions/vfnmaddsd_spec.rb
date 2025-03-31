#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vfnmaddsd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VFNMADDSD do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), xmm(1), xmm(2), xmm(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfnmaddsd" do
      expect(subject.name).to be(:vfnmaddsd)
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

    context "when given operands of types xmm, xmm, xmm, mem64" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), mem64(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :mem64])
      end
    end

    context "when given operands of types xmm, xmm, mem64, xmm" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), xmm(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem64, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem64, :xmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfnmaddsd #{operands.map(&:type).join(', ')}")
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
