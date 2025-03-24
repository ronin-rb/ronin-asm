#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vexp2ps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VEXP2PS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [zmm_k_z, mem512_mem32_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vexp2ps" do
      expect(subject.name).to be(:vexp2ps)
    end

    context "when given operands of types zmm{k}{z}, mem512/mem32bcst" do
      let(:operands) { [zmm_k_z, mem512_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm" do
      let(:operands) { [zmm_k_z, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, mem512/mem32bcst" do
      let(:operands) { [zmm, mem512_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm" do
      let(:operands) { [zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, {sae}" do
      let(:operands) { [zmm_k_z, zmm, sae] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, {sae}" do
      let(:operands) { [zmm, zmm, sae] }

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
