#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpmovzxbw'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VPMOVZXBW do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm_k_z, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovzxbw" do
      expect(subject.name).to be(:vpmovzxbw)
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

    context "when given operands of types zmm{k}{z}, ymm" do
      let(:operands) { [zmm_k_z, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :ymm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :ymm])
      end
    end

    context "when given operands of types xmm{k}{z}, mem64" do
      let(:operands) { [xmm_k_z, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :mem64]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :mem64])
      end
    end

    context "when given operands of types ymm{k}{z}, mem128" do
      let(:operands) { [ymm_k_z, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :mem128]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :mem128])
      end
    end

    context "when given operands of types zmm{k}{z}, mem256" do
      let(:operands) { [zmm_k_z, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :mem256]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :mem256])
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

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, mem64" do
      let(:operands) { [xmm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :mem64])
      end
    end

    context "when given operands of types xmm, mem64" do
      let(:operands) { [xmm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :mem64])
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

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :xmm]" do
        expect(subject.form).to eq([:ymm, :xmm])
      end
    end

    context "when given operands of types ymm, mem128" do
      let(:operands) { [ymm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem128]" do
        expect(subject.form).to eq([:ymm, :mem128])
      end
    end

    context "when given operands of types ymm, mem128" do
      let(:operands) { [ymm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem128]" do
        expect(subject.form).to eq([:ymm, :mem128])
      end
    end

    context "when given operands of types zmm, ymm" do
      let(:operands) { [zmm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :ymm]" do
        expect(subject.form).to eq([:zmm, :ymm])
      end
    end

    context "when given operands of types zmm, mem256" do
      let(:operands) { [zmm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem256]" do
        expect(subject.form).to eq([:zmm, :mem256])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovzxbw #{operands.map(&:type).join(', ')}")
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
