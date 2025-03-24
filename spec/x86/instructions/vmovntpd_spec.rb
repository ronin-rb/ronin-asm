#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vmovntpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VMOVNTPD do
  include_context "Ronin::ASM::X86 Operands"

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
    end

    context "when given operands of types mem128, xmm" do
      let(:operands) { [mem128, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem256, ymm" do
      let(:operands) { [mem256, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem256, ymm" do
      let(:operands) { [mem256, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem512, zmm" do
      let(:operands) { [mem512, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
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
