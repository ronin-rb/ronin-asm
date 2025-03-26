#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vmovsh'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VMOVSH do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mem16_k, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vmovsh" do
      expect(subject.name).to be(:vmovsh)
    end

    context "when given operands of types mem16{k}, xmm" do
      let(:operands) { [mem16_k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem16{k}", :xmm]' do
        expect(subject.form).to eq([:"mem16{k}", :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, mem16" do
      let(:operands) { [xmm_k_z, mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :mem16]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :mem16])
      end
    end

    context "when given operands of types xmm, mem16" do
      let(:operands) { [xmm, mem16] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem16]" do
        expect(subject.form).to eq([:xmm, :mem16])
      end
    end

    context "when given operands of types mem16, xmm" do
      let(:operands) { [mem16, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :xmm]" do
        expect(subject.form).to eq([:mem16, :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :xmm])
      end
    end

    context "when given operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vmovsh #{operands.map(&:type).join(', ')}")
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
