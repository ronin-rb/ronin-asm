#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vreduceps'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VREDUCEPS do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm_k_z, mem128_mem32_bcst, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vreduceps" do
      expect(subject.name).to be(:vreduceps)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem32bcst, imm8" do
      let(:operands) { [xmm_k_z, mem128_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem128/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem128/mem32bcst", :imm8])
      end
    end

    context "when given operands of types ymm{k}{z}, mem256/mem32bcst, imm8" do
      let(:operands) { [ymm_k_z, mem256_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :"mem256/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :"mem256/mem32bcst", :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, mem512/mem32bcst, imm8" do
      let(:operands) { [zmm_k_z, mem512_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :"mem512/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :"mem512/mem32bcst", :imm8])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, imm8" do
      let(:operands) { [xmm_k_z, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :imm8])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, imm8" do
      let(:operands) { [ymm_k_z, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, imm8" do
      let(:operands) { [zmm_k_z, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :imm8])
      end
    end

    context "when given operands of types xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [xmm, mem128_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem128/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:xmm, :"mem128/mem32bcst", :imm8])
      end
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [ymm, mem256_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :"mem256/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:ymm, :"mem256/mem32bcst", :imm8])
      end
    end

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [zmm, mem512_mem32_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :"mem512/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:zmm, :"mem512/mem32bcst", :imm8])
      end
    end

    context "when given operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vreduceps #{operands.map(&:type).join(', ')}")
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
