#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vbroadcastsd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VBROADCASTSD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [ymm_k_z, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbroadcastsd" do
      expect(subject.name).to be(:vbroadcastsd)
    end

    context "when given operands of types ymm{k}{z}, xmm" do
      let(:operands) { [ymm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, xmm" do
      let(:operands) { [zmm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm{k}{z}, mem64" do
      let(:operands) { [ymm_k_z, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm{k}{z}, mem64" do
      let(:operands) { [zmm_k_z, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, mem64" do
      let(:operands) { [ymm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types ymm, mem64" do
      let(:operands) { [ymm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, xmm" do
      let(:operands) { [zmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, mem64" do
      let(:operands) { [zmm, mem64] }

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
