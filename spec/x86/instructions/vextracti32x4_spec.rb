#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vextracti32x4'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VEXTRACTI32X4 do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, ymm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vextracti32x4" do
      expect(subject.name).to be(:vextracti32x4)
    end

    context "when given operands of types xmm{k}{z}, ymm, imm8" do
      let(:operands) { [xmm_k_z, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :ymm, :imm8])
      end
    end

    context "when given operands of types mem128{k}, ymm, imm8" do
      let(:operands) { [mem128_k, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"mem128{k}", :ymm, :imm8])
      end
    end

    context "when given operands of types xmm{k}{z}, zmm, imm8" do
      let(:operands) { [xmm_k_z, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :zmm, :imm8])
      end
    end

    context "when given operands of types mem128{k}, zmm, imm8" do
      let(:operands) { [mem128_k, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"mem128{k}", :zmm, :imm8])
      end
    end

    context "when given operands of types xmm, ymm, imm8" do
      let(:operands) { [xmm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :ymm, :imm8]" do
        expect(subject.form).to eq([:xmm, :ymm, :imm8])
      end
    end

    context "when given operands of types xmm, zmm, imm8" do
      let(:operands) { [xmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :zmm, :imm8])
      end
    end

    context "when given operands of types mem128, ymm, imm8" do
      let(:operands) { [mem128, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :ymm, :imm8]" do
        expect(subject.form).to eq([:mem128, :ymm, :imm8])
      end
    end

    context "when given operands of types mem128, zmm, imm8" do
      let(:operands) { [mem128, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :zmm, :imm8]" do
        expect(subject.form).to eq([:mem128, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vextracti32x4 #{operands.map(&:type).join(', ')}")
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
