#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfmsub231ss'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VFMSUB231SS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfmsub231ss" do
      expect(subject.name).to be(:vfmsub231ss)
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, mem32" do
      let(:operands) { [xmm_k_z, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, {er}" do
      let(:operands) { [xmm_k_z, xmm, xmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, xmm, {er}" do
      let(:operands) { [xmm, xmm, xmm, er] }

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
