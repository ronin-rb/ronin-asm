#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpermps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPERMPS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [ymm_k_z, ymm, mem256_mem32_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpermps" do
      expect(subject.name).to be(:vpermps)
    end

    context "when given operands of types ymm{k}{z}, ymm, mem256/mem32bcst" do
      let(:operands) { [ymm_k_z, ymm, mem256_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :"mem256/mem32bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, ymm" do
      let(:operands) { [ymm_k_z, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :ymm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :ymm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem512/mem32bcst" do
      let(:operands) { [zmm_k_z, zmm, mem512_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm" do
      let(:operands) { [zmm_k_z, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :zmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :zmm])
      end
    end

    context "when given operands of types ymm, ymm, mem256/mem32bcst" do
      let(:operands) { [ymm, ymm, mem256_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :ymm, :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:ymm, :ymm, :"mem256/mem32bcst"])
      end
    end

    context "when given operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types ymm, ymm, mem256" do
      let(:operands) { [ymm, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256])
      end
    end

    context "when given operands of types zmm, zmm, mem512/mem32bcst" do
      let(:operands) { [zmm, zmm, mem512_mem32_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:zmm, :zmm, :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :zmm]" do
        expect(subject.form).to eq([:zmm, :zmm, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpermps #{operands.map(&:type).join(', ')}")
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
