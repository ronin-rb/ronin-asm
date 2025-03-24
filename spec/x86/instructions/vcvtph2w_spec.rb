#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvtph2w'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCVTPH2W do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, mem128_mem16_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtph2w" do
      expect(subject.name).to be(:vcvtph2w)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem16bcst" do
      let(:operands) { [xmm_k_z, mem128_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, mem256/mem16bcst" do
      let(:operands) { [ymm_k_z, mem256_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, mem512/mem16bcst" do
      let(:operands) { [zmm_k_z, mem512_mem16_bcst] }

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

    context "when given operands of types ymm{k}{z}, ymm" do
      let(:operands) { [ymm_k_z, ymm] }

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

    context "when given operands of types xmm, mem128/mem16bcst" do
      let(:operands) { [xmm, mem128_mem16_bcst] }

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

    context "when given operands of types ymm, mem256/mem16bcst" do
      let(:operands) { [ymm, mem256_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm" do
      let(:operands) { [ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, mem512/mem16bcst" do
      let(:operands) { [zmm, mem512_mem16_bcst] }

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

    context "when given operands of types zmm{k}{z}, zmm, {er}" do
      let(:operands) { [zmm_k_z, zmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, {er}" do
      let(:operands) { [zmm, zmm, er] }

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
