#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vgatherdps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VGATHERDPS do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k(0), vm32x(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vgatherdps" do
      expect(subject.name).to be(:vgatherdps)
    end

    context "when given operands of types xmm{k}, vm32x" do
      let(:operands) { [xmm_k(0), vm32x(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}", :vm32x]' do
        expect(subject.form).to eq([:"xmm{k}", :vm32x])
      end
    end

    context "when given operands of types ymm{k}, vm32y" do
      let(:operands) { [ymm_k(0), vm32y(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}", :vm32y]' do
        expect(subject.form).to eq([:"ymm{k}", :vm32y])
      end
    end

    context "when given operands of types zmm{k}, vm32z" do
      let(:operands) { [zmm_k(0), vm32z(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}", :vm32z]' do
        expect(subject.form).to eq([:"zmm{k}", :vm32z])
      end
    end

    context "when given operands of types xmm, vm32x, xmm" do
      let(:operands) { [xmm(0), vm32x(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :vm32x, :xmm]" do
        expect(subject.form).to eq([:xmm, :vm32x, :xmm])
      end
    end

    context "when given operands of types ymm, vm32y, ymm" do
      let(:operands) { [ymm(0), vm32y(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :vm32y, :ymm]" do
        expect(subject.form).to eq([:ymm, :vm32y, :ymm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vgatherdps #{operands.map(&:type).join(', ')}")
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
