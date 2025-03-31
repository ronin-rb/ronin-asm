#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movq2dq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::MOVQ2DQ do
  include Helpers::X86::Operands

  let(:operands) { [xmm(0), mmx(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movq2dq" do
      expect(subject.name).to be(:movq2dq)
    end

    context "when given operands of types xmm, mmx" do
      let(:operands) { [xmm(0), mmx(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mmx]" do
        expect(subject.form).to eq([:xmm, :mmx])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: movq2dq #{operands.map(&:type).join(', ')}")
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
