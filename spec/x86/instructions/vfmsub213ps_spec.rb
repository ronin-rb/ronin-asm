#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfmsub213ps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VFMSUB213PS do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), xmm(1), mem128_mem32_bcst(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfmsub213ps" do
      expect(subject.name).to be(:vfmsub213ps)
    end

    context "when given operands of types xmm{k}{z}, xmm, mem128/mem32bcst" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem128_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :"mem128/mem32bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :"mem128/mem32bcst"])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :xmm])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem256/mem32bcst" do
      let(:operands) { [ymm_k_z(0), ymm(1), mem256_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :"mem256/mem32bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :ymm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :ymm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem512/mem32bcst" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem512_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :zmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :zmm])
      end
    end

    context "when given operands of types xmm, xmm, mem128/mem32bcst" do
      let(:operands) { [xmm(0), xmm(1), mem128_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :"mem128/mem32bcst"]' do
        expect(subject.form).to eq([:xmm, :xmm, :"mem128/mem32bcst"])
      end
    end

    context "when given operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm])
      end
    end

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128])
      end
    end

    context "when given operands of types ymm, ymm, mem256/mem32bcst" do
      let(:operands) { [ymm(0), ymm(1), mem256_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :ymm, :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:ymm, :ymm, :"mem256/mem32bcst"])
      end
    end

    context "when given operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types ymm, ymm, mem256" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256])
      end
    end

    context "when given operands of types zmm, zmm, mem512/mem32bcst" do
      let(:operands) { [zmm(0), zmm(1), mem512_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:zmm, :zmm, :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :zmm]" do
        expect(subject.form).to eq([:zmm, :zmm, :zmm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm, {er}" do
      let(:operands) { [zmm_k_z(0), zmm(1), zmm(2), er(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :zmm, :"{er}"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :zmm, :"{er}"])
      end
    end

    context "when given operands of types zmm, zmm, zmm, {er}" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :zmm, :"{er}"]' do
        expect(subject.form).to eq([:zmm, :zmm, :zmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfmsub213ps #{operands.map(&:type).join(', ')}")
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
