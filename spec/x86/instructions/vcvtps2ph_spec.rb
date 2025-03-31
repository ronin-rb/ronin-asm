#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvtps2ph'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VCVTPS2PH do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), xmm(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtps2ph" do
      expect(subject.name).to be(:vcvtps2ph)
    end

    context "when given operands of types xmm{k}{z}, xmm, imm8" do
      let(:operands) { [xmm_k_z(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :imm8])
      end
    end

    context "when given operands of types mem64{k}, xmm, imm8" do
      let(:operands) { [mem64_k(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem64{k}", :xmm, :imm8]' do
        expect(subject.form).to eq([:"mem64{k}", :xmm, :imm8])
      end
    end

    context "when given operands of types xmm{k}{z}, ymm, imm8" do
      let(:operands) { [xmm_k_z(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :ymm, :imm8])
      end
    end

    context "when given operands of types mem128{k}, ymm, imm8" do
      let(:operands) { [mem128_k(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"mem128{k}", :ymm, :imm8])
      end
    end

    context "when given operands of types ymm{k}{z}, zmm, imm8" do
      let(:operands) { [ymm_k_z(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :zmm, :imm8])
      end
    end

    context "when given operands of types mem256{k}, zmm, imm8" do
      let(:operands) { [mem256_k(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem256{k}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"mem256{k}", :zmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, ymm, imm8" do
      let(:operands) { [xmm(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :ymm, :imm8]" do
        expect(subject.form).to eq([:xmm, :ymm, :imm8])
      end
    end

    context "when given operands of types xmm, ymm, imm8" do
      let(:operands) { [xmm(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :ymm, :imm8]" do
        expect(subject.form).to eq([:xmm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, zmm, imm8" do
      let(:operands) { [ymm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :zmm, :imm8]" do
        expect(subject.form).to eq([:ymm, :zmm, :imm8])
      end
    end

    context "when given operands of types mem64, xmm, imm8" do
      let(:operands) { [mem64(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :xmm, :imm8]" do
        expect(subject.form).to eq([:mem64, :xmm, :imm8])
      end
    end

    context "when given operands of types mem64, xmm, imm8" do
      let(:operands) { [mem64(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :xmm, :imm8]" do
        expect(subject.form).to eq([:mem64, :xmm, :imm8])
      end
    end

    context "when given operands of types mem128, ymm, imm8" do
      let(:operands) { [mem128(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :ymm, :imm8]" do
        expect(subject.form).to eq([:mem128, :ymm, :imm8])
      end
    end

    context "when given operands of types mem128, ymm, imm8" do
      let(:operands) { [mem128(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :ymm, :imm8]" do
        expect(subject.form).to eq([:mem128, :ymm, :imm8])
      end
    end

    context "when given operands of types mem256, zmm, imm8" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :zmm, :imm8]" do
        expect(subject.form).to eq([:mem256, :zmm, :imm8])
      end
    end

    context "when given operands of types ymm{k}{z}, zmm, {sae}, imm8" do
      let(:operands) { [ymm_k_z(0), zmm(1), sae(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :zmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :zmm, :"{sae}", :imm8])
      end
    end

    context "when given operands of types ymm, zmm, {sae}, imm8" do
      let(:operands) { [ymm(0), zmm(1), sae(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :zmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:ymm, :zmm, :"{sae}", :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtps2ph #{operands.map(&:type).join(', ')}")
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
