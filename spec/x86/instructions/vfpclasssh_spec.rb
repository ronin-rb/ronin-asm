#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfpclasssh'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VFPCLASSSH do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [k_k, xmm, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfpclasssh" do
      expect(subject.name).to be(:vfpclasssh)
    end

    context "when given operands of types k{k}, xmm, imm8" do
      let(:operands) { [k_k, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :imm8])
      end
    end

    context "when given operands of types k, xmm, imm8" do
      let(:operands) { [k, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :imm8])
      end
    end

    context "when given operands of types k{k}, mem16, imm8" do
      let(:operands) { [k_k, mem16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :mem16, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :mem16, :imm8])
      end
    end

    context "when given operands of types k, mem16, imm8" do
      let(:operands) { [k, mem16, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :mem16, :imm8]" do
        expect(subject.form).to eq([:k, :mem16, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfpclasssh #{operands.map(&:type).join(', ')}")
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
