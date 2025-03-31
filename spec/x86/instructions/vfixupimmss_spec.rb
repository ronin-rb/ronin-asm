#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfixupimmss'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VFIXUPIMMSS do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), xmm(1), xmm(2), imm8(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfixupimmss" do
      expect(subject.name).to be(:vfixupimmss)
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, imm8" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :xmm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, mem32, imm8" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem32(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :mem32, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :mem32, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, mem32, imm8" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem32, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem32, :imm8])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, {sae}, imm8" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :xmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :xmm, :"{sae}", :imm8])
      end
    end

    context "when given operands of types xmm, xmm, xmm, {sae}, imm8" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :xmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :"{sae}", :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfixupimmss #{operands.map(&:type).join(', ')}")
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
