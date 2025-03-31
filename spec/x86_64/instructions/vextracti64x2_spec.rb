#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vextracti64x2'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VEXTRACTI64X2 do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm_k_z(0), ymm(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vextracti64x2" do
      expect(subject.name).to be(:vextracti64x2)
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

    context "when given operands of types xmm{k}{z}, zmm, imm8" do
      let(:operands) { [xmm_k_z(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :zmm, :imm8])
      end
    end

    context "when given operands of types mem128{k}, zmm, imm8" do
      let(:operands) { [mem128_k(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"mem128{k}", :zmm, :imm8])
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

    context "when given operands of types xmm, zmm, imm8" do
      let(:operands) { [xmm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :zmm, :imm8])
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

    context "when given operands of types mem128, zmm, imm8" do
      let(:operands) { [mem128(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :zmm, :imm8]" do
        expect(subject.form).to eq([:mem128, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vextracti64x2 #{operands.map(&:type).join(', ')}")
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
