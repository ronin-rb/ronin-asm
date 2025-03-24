#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vptestmb'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VPTESTMB do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k_k, xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vptestmb" do
      expect(subject.name).to be(:vptestmb)
    end

    context "when given operands of types k{k}, xmm, xmm" do
      let(:operands) { [k_k, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, xmm, xmm" do
      let(:operands) { [k, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, xmm, mem128" do
      let(:operands) { [k_k, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, xmm, mem128" do
      let(:operands) { [k, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, ymm, ymm" do
      let(:operands) { [k_k, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, ymm, ymm" do
      let(:operands) { [k, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, ymm, mem256" do
      let(:operands) { [k_k, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, ymm, mem256" do
      let(:operands) { [k, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, zmm, zmm" do
      let(:operands) { [k_k, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, zmm, zmm" do
      let(:operands) { [k, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k{k}, zmm, mem512" do
      let(:operands) { [k_k, zmm, mem512] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types k, zmm, mem512" do
      let(:operands) { [k, zmm, mem512] }

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
