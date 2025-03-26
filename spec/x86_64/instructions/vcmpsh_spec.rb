#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcmpsh'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VCMPSH do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [k_k, xmm, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcmpsh" do
      expect(subject.name).to be(:vcmpsh)
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

    context "when given operands of types k{k}, xmm, mem16, imm8" do
      let(:operands) { [k_k, xmm, mem16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :mem16, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :mem16, :imm8])
      end
    end

    context "when given operands of types k, xmm, mem16, imm8" do
      let(:operands) { [k, xmm, mem16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :mem16, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :mem16, :imm8])
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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcmpsh #{operands.map(&:type).join(', ')}")
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
