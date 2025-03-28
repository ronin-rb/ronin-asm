#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvtph2qq'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCVTPH2QQ do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, mem32_mem16_bcst] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtph2qq" do
      expect(subject.name).to be(:vcvtph2qq)
    end

    context "when given operands of types xmm{k}{z}, mem32/mem16bcst" do
      let(:operands) { [xmm_k_z, mem32_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem32/mem16bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem32/mem16bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, mem64/mem16bcst" do
      let(:operands) { [ymm_k_z, mem64_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :"mem64/mem16bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :"mem64/mem16bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, mem128/mem16bcst" do
      let(:operands) { [zmm_k_z, mem128_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :"mem128/mem16bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :"mem128/mem16bcst"])
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

    context "when given operands of types ymm{k}{z}, xmm" do
      let(:operands) { [ymm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :xmm])
      end
    end

    context "when given operands of types zmm{k}{z}, xmm" do
      let(:operands) { [zmm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types xmm, mem32/mem16bcst" do
      let(:operands) { [xmm, mem32_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem32/mem16bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem32/mem16bcst"])
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

    context "when given operands of types ymm, mem64/mem16bcst" do
      let(:operands) { [ymm, mem64_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :"mem64/mem16bcst"]' do
        expect(subject.form).to eq([:ymm, :"mem64/mem16bcst"])
      end
    end

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :xmm]" do
        expect(subject.form).to eq([:ymm, :xmm])
      end
    end

    context "when given operands of types zmm, mem128/mem16bcst" do
      let(:operands) { [zmm, mem128_mem16_bcst] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :"mem128/mem16bcst"]' do
        expect(subject.form).to eq([:zmm, :"mem128/mem16bcst"])
      end
    end

    context "when given operands of types zmm, xmm" do
      let(:operands) { [zmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :xmm]" do
        expect(subject.form).to eq([:zmm, :xmm])
      end
    end

    context "when given operands of types zmm{k}{z}, xmm, {er}" do
      let(:operands) { [zmm_k_z, xmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :xmm, :"{er}"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :xmm, :"{er}"])
      end
    end

    context "when given operands of types zmm, xmm, {er}" do
      let(:operands) { [zmm, xmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :xmm, :"{er}"]' do
        expect(subject.form).to eq([:zmm, :xmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtph2qq #{operands.map(&:type).join(', ')}")
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
