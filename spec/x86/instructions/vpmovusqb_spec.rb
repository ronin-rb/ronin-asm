#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpmovusqb'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VPMOVUSQB do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovusqb" do
      expect(subject.name).to be(:vpmovusqb)
    end

    context "when given operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types mem16{k}, xmm" do
      let(:operands) { [mem16_k(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem16{k}", :xmm]' do
        expect(subject.form).to eq([:"mem16{k}", :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :ymm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :ymm])
      end
    end

    context "when given operands of types mem32{k}, ymm" do
      let(:operands) { [mem32_k(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem32{k}", :ymm]' do
        expect(subject.form).to eq([:"mem32{k}", :ymm])
      end
    end

    context "when given operands of types xmm{k}{z}, zmm" do
      let(:operands) { [xmm_k_z(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :zmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :zmm])
      end
    end

    context "when given operands of types mem64{k}, zmm" do
      let(:operands) { [mem64_k(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem64{k}", :zmm]' do
        expect(subject.form).to eq([:"mem64{k}", :zmm])
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, ymm" do
      let(:operands) { [xmm(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :ymm]" do
        expect(subject.form).to eq([:xmm, :ymm])
      end
    end

    context "when given operands of types xmm, zmm" do
      let(:operands) { [xmm(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :zmm]" do
        expect(subject.form).to eq([:xmm, :zmm])
      end
    end

    context "when given operands of types mem16, xmm" do
      let(:operands) { [mem16(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :xmm]" do
        expect(subject.form).to eq([:mem16, :xmm])
      end
    end

    context "when given operands of types mem32, ymm" do
      let(:operands) { [mem32(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :ymm]" do
        expect(subject.form).to eq([:mem32, :ymm])
      end
    end

    context "when given operands of types mem64, zmm" do
      let(:operands) { [mem64(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :zmm]" do
        expect(subject.form).to eq([:mem64, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovusqb #{operands.map(&:type).join(', ')}")
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
