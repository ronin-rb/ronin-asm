#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vshufi64x2'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VSHUFI64X2 do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [ymm_k_z, ymm, mem256_mem64_bcst, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vshufi64x2" do
      expect(subject.name).to be(:vshufi64x2)
    end

    context "when given operands of types ymm{k}{z}, ymm, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm_k_z, ymm, mem256_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :"mem256/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :"mem256/mem64bcst", :imm8])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, ymm, imm8" do
      let(:operands) { [ymm_k_z, ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :ymm, :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm_k_z, zmm, mem512_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :"mem512/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :"mem512/mem64bcst", :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm, imm8" do
      let(:operands) { [zmm_k_z, zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :zmm, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm, ymm, mem256_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :ymm, :"mem256/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:ymm, :ymm, :"mem256/mem64bcst", :imm8])
      end
    end

    context "when given operands of types ymm, ymm, ymm, imm8" do
      let(:operands) { [ymm, ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm, zmm, mem512_mem64_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :"mem512/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:zmm, :zmm, :"mem512/mem64bcst", :imm8])
      end
    end

    context "when given operands of types zmm, zmm, zmm, imm8" do
      let(:operands) { [zmm, zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vshufi64x2 #{operands.map(&:type).join(', ')}")
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
