#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpbroadcastd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPBROADCASTD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [xmm_k_z, reg32] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpbroadcastd" do
      expect(subject.name).to be(:vpbroadcastd)
    end

    context "when given operands of types xmm{k}{z}, reg32" do
      let(:operands) { [xmm_k_z, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :reg32]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :reg32])
      end
    end

    context "when given operands of types ymm{k}{z}, reg32" do
      let(:operands) { [ymm_k_z, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :reg32]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :reg32])
      end
    end

    context "when given operands of types zmm{k}{z}, reg32" do
      let(:operands) { [zmm_k_z, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :reg32]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :reg32])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types ymm{k}{z}, xmm" do
      let(:operands) { [ymm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :xmm])
      end
    end

    context "when given operands of types zmm{k}{z}, xmm" do
      let(:operands) { [zmm_k_z, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, mem32" do
      let(:operands) { [xmm_k_z, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :mem32]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :mem32])
      end
    end

    context "when given operands of types ymm{k}{z}, mem32" do
      let(:operands) { [ymm_k_z, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :mem32]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :mem32])
      end
    end

    context "when given operands of types zmm{k}{z}, mem32" do
      let(:operands) { [zmm_k_z, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :mem32]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :mem32])
      end
    end

    context "when given operands of types xmm, reg32" do
      let(:operands) { [xmm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :reg32]" do
        expect(subject.form).to eq([:xmm, :reg32])
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, mem32" do
      let(:operands) { [xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :mem32])
      end
    end

    context "when given operands of types xmm, mem32" do
      let(:operands) { [xmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :mem32])
      end
    end

    context "when given operands of types ymm, reg32" do
      let(:operands) { [ymm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :reg32]" do
        expect(subject.form).to eq([:ymm, :reg32])
      end
    end

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :xmm]" do
        expect(subject.form).to eq([:ymm, :xmm])
      end
    end

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :xmm]" do
        expect(subject.form).to eq([:ymm, :xmm])
      end
    end

    context "when given operands of types ymm, mem32" do
      let(:operands) { [ymm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem32]" do
        expect(subject.form).to eq([:ymm, :mem32])
      end
    end

    context "when given operands of types ymm, mem32" do
      let(:operands) { [ymm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem32]" do
        expect(subject.form).to eq([:ymm, :mem32])
      end
    end

    context "when given operands of types zmm, reg32" do
      let(:operands) { [zmm, reg32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :reg32]" do
        expect(subject.form).to eq([:zmm, :reg32])
      end
    end

    context "when given operands of types zmm, xmm" do
      let(:operands) { [zmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :xmm]" do
        expect(subject.form).to eq([:zmm, :xmm])
      end
    end

    context "when given operands of types zmm, mem32" do
      let(:operands) { [zmm, mem32] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem32]" do
        expect(subject.form).to eq([:zmm, :mem32])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpbroadcastd #{operands.map(&:type).join(', ')}")
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
