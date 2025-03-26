#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vfmaddcsh'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VFMADDCSH do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [xmm_k_z, xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfmaddcsh" do
      expect(subject.name).to be(:vfmaddcsh)
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

    context "when given operands of types xmm{k}{z}, xmm, mem32" do
      let(:operands) { [xmm_k_z, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :mem32]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :mem32])
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

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm, xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem32])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, {er}" do
      let(:operands) { [xmm_k_z, xmm, xmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :xmm, :"{er}"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :xmm, :"{er}"])
      end
    end

    context "when given operands of types xmm, xmm, xmm, {er}" do
      let(:operands) { [xmm, xmm, xmm, er] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :xmm, :"{er}"]' do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfmaddcsh #{operands.map(&:type).join(', ')}")
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
