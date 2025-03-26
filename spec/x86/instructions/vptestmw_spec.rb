#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vptestmw'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPTESTMW do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [k_k, xmm, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vptestmw" do
      expect(subject.name).to be(:vptestmw)
    end

    context "when given operands of types k{k}, xmm, xmm" do
      let(:operands) { [k_k, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm])
      end
    end

    context "when given operands of types k, xmm, xmm" do
      let(:operands) { [k, xmm, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :xmm]" do
        expect(subject.form).to eq([:k, :xmm, :xmm])
      end
    end

    context "when given operands of types k{k}, xmm, mem128" do
      let(:operands) { [k_k, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :mem128]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :mem128])
      end
    end

    context "when given operands of types k, xmm, mem128" do
      let(:operands) { [k, xmm, mem128] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :mem128]" do
        expect(subject.form).to eq([:k, :xmm, :mem128])
      end
    end

    context "when given operands of types k{k}, ymm, ymm" do
      let(:operands) { [k_k, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :ymm]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :ymm])
      end
    end

    context "when given operands of types k, ymm, ymm" do
      let(:operands) { [k, ymm, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :ymm]" do
        expect(subject.form).to eq([:k, :ymm, :ymm])
      end
    end

    context "when given operands of types k{k}, ymm, mem256" do
      let(:operands) { [k_k, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :mem256]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :mem256])
      end
    end

    context "when given operands of types k, ymm, mem256" do
      let(:operands) { [k, ymm, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :mem256]" do
        expect(subject.form).to eq([:k, :ymm, :mem256])
      end
    end

    context "when given operands of types k{k}, zmm, zmm" do
      let(:operands) { [k_k, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm])
      end
    end

    context "when given operands of types k, zmm, zmm" do
      let(:operands) { [k, zmm, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :zmm]" do
        expect(subject.form).to eq([:k, :zmm, :zmm])
      end
    end

    context "when given operands of types k{k}, zmm, mem512" do
      let(:operands) { [k_k, zmm, mem512] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :mem512]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :mem512])
      end
    end

    context "when given operands of types k, zmm, mem512" do
      let(:operands) { [k, zmm, mem512] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :mem512]" do
        expect(subject.form).to eq([:k, :zmm, :mem512])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vptestmw #{operands.map(&:type).join(', ')}")
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
