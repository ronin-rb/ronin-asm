#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcmpss'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCMPSS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [k_k, xmm, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcmpss" do
      expect(subject.name).to be(:vcmpss)
    end

    context "when given operands of types k{k}, xmm, xmm, imm8" do
      let(:operands) { [k_k, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k, xmm, xmm, imm8" do
      let(:operands) { [k, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k{k}, xmm, mem32, imm8" do
      let(:operands) { [k_k, xmm, mem32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :mem32, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :mem32, :imm8])
      end
    end

    context "when given operands of types k, xmm, mem32, imm8" do
      let(:operands) { [k, xmm, mem32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :mem32, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :mem32, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, xmm, imm8" do
      let(:operands) { [xmm, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, mem32, imm8" do
      let(:operands) { [xmm, xmm, mem32, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem32, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem32, :imm8])
      end
    end

    context "when given operands of types k{k}, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k_k, xmm, xmm, sae, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm, :"{sae}", :imm8])
      end
    end

    context "when given operands of types k, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k, xmm, xmm, sae, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :xmm, :xmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:k, :xmm, :xmm, :"{sae}", :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcmpss #{operands.map(&:type).join(', ')}")
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
