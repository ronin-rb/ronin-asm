#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vextracti64x4'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VEXTRACTI64X4 do
  include Helpers::X86_64::Operands

  let(:operands) { [ymm_k_z(0), zmm(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vextracti64x4" do
      expect(subject.name).to be(:vextracti64x4)
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

    context "when given operands of types ymm, zmm, imm8" do
      let(:operands) { [ymm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :zmm, :imm8]" do
        expect(subject.form).to eq([:ymm, :zmm, :imm8])
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

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vextracti64x4 #{operands.map(&:type).join(', ')}")
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
