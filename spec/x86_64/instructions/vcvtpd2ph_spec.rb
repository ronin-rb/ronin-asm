#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvtpd2ph'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCVTPD2PH do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm_k_z, mem128_mem64_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtpd2ph" do
      expect(subject.name).to be(:vcvtpd2ph)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem64bcst" do
      let(:operands) { [xmm_k_z, mem128_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, mem256/mem64bcst" do
      let(:operands) { [xmm_k_z, mem256_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, mem512/mem64bcst" do
      let(:operands) { [xmm_k_z, mem512_mem64_bcst] }

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

    context "when given operands of types xmm{k}{z}, zmm" do
      let(:operands) { [xmm_k_z, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem128/mem64bcst" do
      let(:operands) { [xmm, mem128_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem256/mem64bcst" do
      let(:operands) { [xmm, mem256_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, mem512/mem64bcst" do
      let(:operands) { [xmm, mem512_mem64_bcst] }

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

    context "when given operands of types xmm, zmm" do
      let(:operands) { [xmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm{k}{z}, zmm, {er}" do
      let(:operands) { [xmm_k_z, zmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types xmm, zmm, {er}" do
      let(:operands) { [xmm, zmm, er] }

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
