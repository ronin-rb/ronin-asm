#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpmovusdw'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VPMOVUSDW do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm_k_z, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovusdw" do
      expect(subject.name).to be(:vpmovusdw)
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

    context "when given operands of types mem64{k}, xmm" do
      let(:operands) { [mem64_k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem64{k}", :xmm]' do
        expect(subject.form).to eq([:"mem64{k}", :xmm])
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

    context "when given operands of types mem128{k}, ymm" do
      let(:operands) { [mem128_k, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :ymm]' do
        expect(subject.form).to eq([:"mem128{k}", :ymm])
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

    context "when given operands of types mem256{k}, zmm" do
      let(:operands) { [mem256_k, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem256{k}", :zmm]' do
        expect(subject.form).to eq([:"mem256{k}", :zmm])
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

    context "when given operands of types ymm, zmm" do
      let(:operands) { [ymm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :zmm]" do
        expect(subject.form).to eq([:ymm, :zmm])
      end
    end

    context "when given operands of types mem64, xmm" do
      let(:operands) { [mem64, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :xmm]" do
        expect(subject.form).to eq([:mem64, :xmm])
      end
    end

    context "when given operands of types mem128, ymm" do
      let(:operands) { [mem128, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :ymm]" do
        expect(subject.form).to eq([:mem128, :ymm])
      end
    end

    context "when given operands of types mem256, zmm" do
      let(:operands) { [mem256, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :zmm]" do
        expect(subject.form).to eq([:mem256, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovusdw #{operands.map(&:type).join(', ')}")
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
