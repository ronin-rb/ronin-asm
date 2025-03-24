#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vrangepd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VRANGEPD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, xmm, mem128_mem64_bcst, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vrangepd" do
      expect(subject.name).to be(:vrangepd)
    end

    context "when given operands of types xmm{k}{z}, xmm, mem128/mem64bcst, imm8" do
      let(:operands) { [xmm_k_z, xmm, mem128_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, imm8" do
      let(:operands) { [xmm_k_z, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm_k_z, ymm, mem256_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, ymm, imm8" do
      let(:operands) { [ymm_k_z, ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm_k_z, zmm, mem512_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm, imm8" do
      let(:operands) { [zmm_k_z, zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, mem128/mem64bcst, imm8" do
      let(:operands) { [xmm, xmm, mem128_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm, ymm, mem256_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm, zmm, mem512_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, zmm, imm8" do
      let(:operands) { [zmm, zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm, {sae}, imm8" do
      let(:operands) { [zmm_k_z, zmm, zmm, sae, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, zmm, zmm, {sae}, imm8" do
      let(:operands) { [zmm, zmm, zmm, sae, imm8] }

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
