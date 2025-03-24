#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpslld'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPSLLD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, mem128_mem32_bcst, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpslld" do
      expect(subject.name).to be(:vpslld)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem32bcst, imm8" do
      let(:operands) { [xmm_k_z, mem128_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, mem256/mem32bcst, imm8" do
      let(:operands) { [ymm_k_z, mem256_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, mem512/mem32bcst, imm8" do
      let(:operands) { [zmm_k_z, mem512_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, imm8" do
      let(:operands) { [xmm_k_z, xmm, imm8] }

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

    context "when given operands of types xmm{k}{z}, xmm, mem128" do
      let(:operands) { [xmm_k_z, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, imm8" do
      let(:operands) { [ymm_k_z, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, xmm" do
      let(:operands) { [ymm_k_z, ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem128" do
      let(:operands) { [ymm_k_z, ymm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, imm8" do
      let(:operands) { [zmm_k_z, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, xmm" do
      let(:operands) { [zmm_k_z, zmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem128" do
      let(:operands) { [zmm_k_z, zmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [xmm, mem128_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, imm8] }

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

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [ymm, mem256_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, xmm" do
      let(:operands) { [ymm, ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, xmm" do
      let(:operands) { [ymm, ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, mem128" do
      let(:operands) { [ymm, ymm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, mem128" do
      let(:operands) { [ymm, ymm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [zmm, mem512_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, xmm" do
      let(:operands) { [zmm, zmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, mem128" do
      let(:operands) { [zmm, zmm, mem128] }

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
