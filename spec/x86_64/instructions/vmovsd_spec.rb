#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vmovsd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VMOVSD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [mem64_k, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vmovsd" do
      expect(subject.name).to be(:vmovsd)
    end

    context "when given operands of types mem64{k}, xmm" do
      let(:operands) { [mem64_k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem64{k}", :xmm]' do
        expect(subject.form).to eq([:"mem64{k}", :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, mem64" do
      let(:operands) { [xmm_k_z, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :mem64]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :mem64])
      end
    end

    context "when given operands of types xmm, mem64" do
      let(:operands) { [xmm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :mem64])
      end
    end

    context "when given operands of types xmm, mem64" do
      let(:operands) { [xmm, mem64] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :mem64])
      end
    end

    context "when given operands of types mem64, xmm" do
      let(:operands) { [mem64, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :xmm]" do
        expect(subject.form).to eq([:mem64, :xmm])
      end
    end

    context "when given operands of types mem64, xmm" do
      let(:operands) { [mem64, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :xmm]" do
        expect(subject.form).to eq([:mem64, :xmm])
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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vmovsd #{operands.map(&:type).join(', ')}")
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
