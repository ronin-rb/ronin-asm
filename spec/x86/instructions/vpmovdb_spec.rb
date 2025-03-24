#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpmovdb'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPMOVDB do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovdb" do
      expect(subject.name).to be(:vpmovdb)
    end

    context "when given operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem32{k}, xmm" do
      let(:operands) { [mem32_k, xmm] }

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

    context "when given operands of types mem64{k}, ymm" do
      let(:operands) { [mem64_k, ymm] }

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

    context "when given operands of types mem128{k}, zmm" do
      let(:operands) { [mem128_k, zmm] }

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

    context "when given operands of types mem32, xmm" do
      let(:operands) { [mem32, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem64, ymm" do
      let(:operands) { [mem64, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types mem128, zmm" do
      let(:operands) { [mem128, zmm] }

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
