#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vbroadcasti32x4'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VBROADCASTI32X4 do
  include Helpers::X86::Operands

  let(:operands) { [ymm_k_z(0), mem128(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbroadcasti32x4" do
      expect(subject.name).to be(:vbroadcasti32x4)
    end

    context "when given operands of types ymm{k}{z}, mem128" do
      let(:operands) { [ymm_k_z(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :mem128]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :mem128])
      end
    end

    context "when given operands of types zmm{k}{z}, mem128" do
      let(:operands) { [zmm_k_z(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :mem128]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :mem128])
      end
    end

    context "when given operands of types ymm, mem128" do
      let(:operands) { [ymm(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem128]" do
        expect(subject.form).to eq([:ymm, :mem128])
      end
    end

    context "when given operands of types zmm, mem128" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem128]" do
        expect(subject.form).to eq([:zmm, :mem128])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vbroadcasti32x4 #{operands.map(&:type).join(', ')}")
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
