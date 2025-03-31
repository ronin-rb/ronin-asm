#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vrcp28ps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VRCP28PS do
  include Helpers::X86::Operands

  let(:operands) { [zmm_k_z(0), mem512_mem32_bcst(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vrcp28ps" do
      expect(subject.name).to be(:vrcp28ps)
    end

    context "when given operands of types zmm{k}{z}, mem512/mem32bcst" do
      let(:operands) { [zmm_k_z(0), mem512_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm])
      end
    end

    context "when given operands of types zmm, mem512/mem32bcst" do
      let(:operands) { [zmm(0), mem512_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:zmm, :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm]" do
        expect(subject.form).to eq([:zmm, :zmm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, {sae}" do
      let(:operands) { [zmm_k_z(0), zmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :"{sae}"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :"{sae}"])
      end
    end

    context "when given operands of types zmm, zmm, {sae}" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :"{sae}"]' do
        expect(subject.form).to eq([:zmm, :zmm, :"{sae}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vrcp28ps #{operands.map(&:type).join(', ')}")
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
