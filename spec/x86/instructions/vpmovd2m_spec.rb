#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpmovd2m'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VPMOVD2M do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [k, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovd2m" do
      expect(subject.name).to be(:vpmovd2m)
    end

    context "when given operands of types k, xmm" do
      let(:operands) { [k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm]" do
        expect(subject.form).to eq([:k, :xmm])
      end
    end

    context "when given operands of types k, ymm" do
      let(:operands) { [k, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm]" do
        expect(subject.form).to eq([:k, :ymm])
      end
    end

    context "when given operands of types k, zmm" do
      let(:operands) { [k, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm]" do
        expect(subject.form).to eq([:k, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovd2m #{operands.map(&:type).join(', ')}")
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
