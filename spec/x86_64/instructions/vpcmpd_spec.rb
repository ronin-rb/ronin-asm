#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpcmpd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPCMPD do
  include Helpers::X86_64::Operands

  let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpcmpd" do
      expect(subject.name).to be(:vpcmpd)
    end

    context "when given operands of types k{k}, xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :"mem128/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :"mem128/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k, xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :xmm, :"mem128/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:k, :xmm, :"mem128/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, xmm, xmm, imm8" do
      let(:operands) { [k_k(0), xmm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k, xmm, xmm, imm8" do
      let(:operands) { [k(0), xmm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k{k}, ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [k_k(0), ymm(1), mem256_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :"mem256/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :"mem256/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k, ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [k(0), ymm(1), mem256_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :ymm, :"mem256/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:k, :ymm, :"mem256/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, ymm, ymm, imm8" do
      let(:operands) { [k_k(0), ymm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :ymm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types k, ymm, ymm, imm8" do
      let(:operands) { [k(0), ymm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:k, :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [k_k(0), zmm(1), mem512_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :"mem512/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :"mem512/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k, zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [k(0), zmm(1), mem512_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :zmm, :"mem512/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:k, :zmm, :"mem512/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, zmm, imm8" do
      let(:operands) { [k_k(0), zmm(1), zmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types k, zmm, zmm, imm8" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:k, :zmm, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpcmpd #{operands.map(&:type).join(', ')}")
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
