#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vbroadcastf32x4'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VBROADCASTF32X4 do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [ymm_k_z, mem128] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbroadcastf32x4" do
      expect(subject.name).to be(:vbroadcastf32x4)
    end

    context "when given operands of types ymm{k}{z}, mem128" do
      let(:operands) { [ymm_k_z, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, mem128" do
      let(:operands) { [zmm_k_z, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, mem128" do
      let(:operands) { [ymm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, mem128" do
      let(:operands) { [zmm, mem128] }

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
