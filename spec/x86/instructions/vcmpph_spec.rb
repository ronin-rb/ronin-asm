#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcmpph'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VCMPPH do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [k_k, xmm, mem128_mem16_bcst, imm8] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcmpph" do
      expect(subject.name).to be(:vcmpph)
    end

    context "when given operands of types k{k}, xmm, mem128/mem16bcst, imm8" do
      let(:operands) { [k_k, xmm, mem128_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :"mem128/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :"mem128/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k, xmm, mem128/mem16bcst, imm8" do
      let(:operands) { [k, xmm, mem128_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :xmm, :"mem128/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:k, :xmm, :"mem128/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, xmm, xmm, imm8" do
      let(:operands) { [k_k, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k, xmm, xmm, imm8" do
      let(:operands) { [k, xmm, xmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k{k}, ymm, mem256/mem16bcst, imm8" do
      let(:operands) { [k_k, ymm, mem256_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :"mem256/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :"mem256/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k, ymm, mem256/mem16bcst, imm8" do
      let(:operands) { [k, ymm, mem256_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :ymm, :"mem256/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:k, :ymm, :"mem256/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, ymm, ymm, imm8" do
      let(:operands) { [k_k, ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :ymm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types k, ymm, ymm, imm8" do
      let(:operands) { [k, ymm, ymm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:k, :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, mem512/mem16bcst, imm8" do
      let(:operands) { [k_k, zmm, mem512_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :"mem512/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :"mem512/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k, zmm, mem512/mem16bcst, imm8" do
      let(:operands) { [k, zmm, mem512_mem16_bcst, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :zmm, :"mem512/mem16bcst", :imm8]' do
        expect(subject.form).to eq([:k, :zmm, :"mem512/mem16bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, zmm, imm8" do
      let(:operands) { [k_k, zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types k, zmm, zmm, imm8" do
      let(:operands) { [k, zmm, zmm, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:k, :zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, zmm, {sae}, imm8" do
      let(:operands) { [k_k, zmm, zmm, sae, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm, :"{sae}", :imm8])
      end
    end

    context "when given operands of types k, zmm, zmm, {sae}, imm8" do
      let(:operands) { [k, zmm, zmm, sae, imm8] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :zmm, :zmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:k, :zmm, :zmm, :"{sae}", :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcmpph #{operands.map(&:type).join(', ')}")
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
