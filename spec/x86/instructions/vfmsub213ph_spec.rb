#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfmsub213ph'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VFMSUB213PH do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, xmm, mem128_mem16_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfmsub213ph" do
      expect(subject.name).to be(:vfmsub213ph)
    end

    context "when given operands of types xmm{k}{z}, xmm, mem128/mem16bcst" do
      let(:operands) { [xmm_k_z, xmm, mem128_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem256/mem16bcst" do
      let(:operands) { [ymm_k_z, ymm, mem256_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, ymm" do
      let(:operands) { [ymm_k_z, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem512/mem16bcst" do
      let(:operands) { [zmm_k_z, zmm, mem512_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm" do
      let(:operands) { [zmm_k_z, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem128/mem16bcst" do
      let(:operands) { [xmm, xmm, mem128_mem16_bcst] }

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

    context "when given operands of types ymm, ymm, mem256/mem16bcst" do
      let(:operands) { [ymm, ymm, mem256_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, mem512/mem16bcst" do
      let(:operands) { [zmm, zmm, mem512_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm, {er}" do
      let(:operands) { [zmm_k_z, zmm, zmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, zmm, {er}" do
      let(:operands) { [zmm, zmm, zmm, er] }

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
