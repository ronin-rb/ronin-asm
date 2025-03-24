#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvtps2phx'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCVTPS2PHX do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm_k_z, mem128_mem32_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtps2phx" do
      expect(subject.name).to be(:vcvtps2phx)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem32bcst" do
      let(:operands) { [xmm_k_z, mem128_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, mem256/mem32bcst" do
      let(:operands) { [xmm_k_z, mem256_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, mem512/mem32bcst" do
      let(:operands) { [ymm_k_z, mem512_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, zmm" do
      let(:operands) { [ymm_k_z, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem128/mem32bcst" do
      let(:operands) { [xmm, mem128_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem256/mem32bcst" do
      let(:operands) { [xmm, mem256_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, ymm" do
      let(:operands) { [xmm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, mem512/mem32bcst" do
      let(:operands) { [ymm, mem512_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, zmm" do
      let(:operands) { [ymm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, zmm, {er}" do
      let(:operands) { [ymm_k_z, zmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, zmm, {er}" do
      let(:operands) { [ymm, zmm, er] }

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
