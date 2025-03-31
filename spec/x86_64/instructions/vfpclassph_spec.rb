#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vfpclassph'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VFPCLASSPH do
  include Helpers::X86_64::Operands

  let(:operands) { [k_k(0), mem128_mem16_bcst(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfpclassph" do
      expect(subject.name).to be(:vfpclassph)
    end

    context "when given operands of types k{k}, mem128/mem16bcst, imm8" do
      let(:operands) { [k_k(0), mem128_mem16_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :"mem128/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :"mem128/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k, mem128/mem16bcst, imm8" do
      let(:operands) { [k(0), mem128_mem16_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :"mem128/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:k, :"mem128/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, mem256/mem16bcst, imm8" do
      let(:operands) { [k_k(0), mem256_mem16_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :"mem256/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :"mem256/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k, mem256/mem16bcst, imm8" do
      let(:operands) { [k(0), mem256_mem16_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :"mem256/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:k, :"mem256/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, mem512/mem16bcst, imm8" do
      let(:operands) { [k_k(0), mem512_mem16_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :"mem512/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :"mem512/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k, mem512/mem16bcst, imm8" do
      let(:operands) { [k(0), mem512_mem16_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :"mem512/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:k, :"mem512/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, xmm, imm8" do
      let(:operands) { [k_k(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :imm8])
      end
    end

    context "when given operands of types k, xmm, imm8" do
      let(:operands) { [k(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :imm8])
      end
    end

    context "when given operands of types k{k}, ymm, imm8" do
      let(:operands) { [k_k(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :imm8])
      end
    end

    context "when given operands of types k, ymm, imm8" do
      let(:operands) { [k(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :imm8]" do
        expect(subject.form).to eq([:k, :ymm, :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, imm8" do
      let(:operands) { [k_k(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :imm8])
      end
    end

    context "when given operands of types k, zmm, imm8" do
      let(:operands) { [k(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :imm8]" do
        expect(subject.form).to eq([:k, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfpclassph #{operands.map(&:type).join(', ')}")
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
