#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vinserti64x4'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VINSERTI64X4 do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [zmm_k_z, zmm, ymm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vinserti64x4" do
      expect(subject.name).to be(:vinserti64x4)
    end

    context "when given operands of types zmm{k}{z}, zmm, ymm, imm8" do
      let(:operands) { [zmm_k_z, zmm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :ymm, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem256, imm8" do
      let(:operands) { [zmm_k_z, zmm, mem256, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :mem256, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :mem256, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, ymm, imm8" do
      let(:operands) { [zmm, zmm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :ymm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, mem256, imm8" do
      let(:operands) { [zmm, zmm, mem256, imm8] }

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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vinserti64x4 #{operands.map(&:type).join(', ')}")
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
