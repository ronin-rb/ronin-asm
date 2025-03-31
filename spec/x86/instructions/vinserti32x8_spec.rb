#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vinserti32x8'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VINSERTI32X8 do
  include Helpers::X86::Operands

  let(:operands) { [zmm_k_z(0), zmm(1), ymm(2), imm8(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vinserti32x8" do
      expect(subject.name).to be(:vinserti32x8)
    end

    context "when given operands of types zmm{k}{z}, zmm, ymm, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :ymm, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem256, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem256(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :mem256, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :mem256, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, ymm, imm8" do
      let(:operands) { [zmm(0), zmm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :ymm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, mem256, imm8" do
      let(:operands) { [zmm(0), zmm(1), mem256(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :mem256, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :mem256, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vinserti32x8 #{operands.map(&:type).join(', ')}")
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
