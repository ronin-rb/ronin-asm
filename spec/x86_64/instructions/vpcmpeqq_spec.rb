#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpcmpeqq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPCMPEQQ do
  include Helpers::X86_64::Operands

  let(:operands) { [k_k(0), xmm(1), mem128_mem64_bcst(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpcmpeqq" do
      expect(subject.name).to be(:vpcmpeqq)
    end

    context "when given operands of types k{k}, xmm, mem128/mem64bcst" do
      let(:operands) { [k_k(0), xmm(1), mem128_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :"mem128/mem64bcst"]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :"mem128/mem64bcst"])
      end
    end

    context "when given operands of types k, xmm, mem128/mem64bcst" do
      let(:operands) { [k(0), xmm(1), mem128_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :xmm, :"mem128/mem64bcst"]' do
        expect(subject.form).to eq([:k, :xmm, :"mem128/mem64bcst"])
      end
    end

    context "when given operands of types k{k}, xmm, xmm" do
      let(:operands) { [k_k(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm])
      end
    end

    context "when given operands of types k, xmm, xmm" do
      let(:operands) { [k(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :xmm]" do
        expect(subject.form).to eq([:k, :xmm, :xmm])
      end
    end

    context "when given operands of types k{k}, ymm, mem256/mem64bcst" do
      let(:operands) { [k_k(0), ymm(1), mem256_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types k, ymm, mem256/mem64bcst" do
      let(:operands) { [k(0), ymm(1), mem256_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :ymm, :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:k, :ymm, :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types k{k}, ymm, ymm" do
      let(:operands) { [k_k(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :ymm]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :ymm])
      end
    end

    context "when given operands of types k, ymm, ymm" do
      let(:operands) { [k(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :ymm]" do
        expect(subject.form).to eq([:k, :ymm, :ymm])
      end
    end

    context "when given operands of types k{k}, zmm, mem512/mem64bcst" do
      let(:operands) { [k_k(0), zmm(1), mem512_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :"mem512/mem64bcst"])
      end
    end

    context "when given operands of types k, zmm, mem512/mem64bcst" do
      let(:operands) { [k(0), zmm(1), mem512_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :zmm, :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:k, :zmm, :"mem512/mem64bcst"])
      end
    end

    context "when given operands of types k{k}, zmm, zmm" do
      let(:operands) { [k_k(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm])
      end
    end

    context "when given operands of types k, zmm, zmm" do
      let(:operands) { [k(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :zmm]" do
        expect(subject.form).to eq([:k, :zmm, :zmm])
      end
    end

    context "when given operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm])
      end
    end

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128])
      end
    end

    context "when given operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types ymm, ymm, mem256" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpcmpeqq #{operands.map(&:type).join(', ')}")
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
