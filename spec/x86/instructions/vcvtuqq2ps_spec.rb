#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvtuqq2ps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCVTUQQ2PS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, mem128_mem64_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtuqq2ps" do
      expect(subject.name).to be(:vcvtuqq2ps)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem64bcst" do
      let(:operands) { [xmm_k_z, mem128_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem128/mem64bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem128/mem64bcst"])
      end
    end

    context "when given operands of types xmm{k}{z}, mem256/mem64bcst" do
      let(:operands) { [xmm_k_z, mem256_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, mem512/mem64bcst" do
      let(:operands) { [ymm_k_z, mem512_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :"mem512/mem64bcst"])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :ymm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :ymm])
      end
    end

    context "when given operands of types ymm{k}{z}, zmm" do
      let(:operands) { [ymm_k_z, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :zmm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :zmm])
      end
    end

    context "when given operands of types xmm, mem128/mem64bcst" do
      let(:operands) { [xmm, mem128_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem128/mem64bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem128/mem64bcst"])
      end
    end

    context "when given operands of types xmm, mem256/mem64bcst" do
      let(:operands) { [xmm, mem256_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, ymm" do
      let(:operands) { [xmm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :ymm]" do
        expect(subject.form).to eq([:xmm, :ymm])
      end
    end

    context "when given operands of types ymm, mem512/mem64bcst" do
      let(:operands) { [ymm, mem512_mem64_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:ymm, :"mem512/mem64bcst"])
      end
    end

    context "when given operands of types ymm, zmm" do
      let(:operands) { [ymm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :zmm]" do
        expect(subject.form).to eq([:ymm, :zmm])
      end
    end

    context "when given operands of types ymm{k}{z}, zmm, {er}" do
      let(:operands) { [ymm_k_z, zmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :zmm, :"{er}"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :zmm, :"{er}"])
      end
    end

    context "when given operands of types ymm, zmm, {er}" do
      let(:operands) { [ymm, zmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :zmm, :"{er}"]' do
        expect(subject.form).to eq([:ymm, :zmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtuqq2ps #{operands.map(&:type).join(', ')}")
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
