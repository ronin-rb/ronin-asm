#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movaps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::MOVAPS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movaps" do
      expect(subject.name).to be(:movaps)
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, mem128" do
      let(:operands) { [xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :mem128])
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

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: movaps #{operands.map(&:type).join(', ')}")
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
