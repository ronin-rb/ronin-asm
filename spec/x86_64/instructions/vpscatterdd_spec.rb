#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpscatterdd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VPSCATTERDD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [vm32x_k, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpscatterdd" do
      expect(subject.name).to be(:vpscatterdd)
    end

    context "when given operands of types vm32x{k}, xmm" do
      let(:operands) { [vm32x_k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32x{k}", :xmm]' do
        expect(subject.form).to eq([:"vm32x{k}", :xmm])
      end
    end

    context "when given operands of types vm32y{k}, ymm" do
      let(:operands) { [vm32y_k, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32y{k}", :ymm]' do
        expect(subject.form).to eq([:"vm32y{k}", :ymm])
      end
    end

    context "when given operands of types vm32z{k}, zmm" do
      let(:operands) { [vm32z_k, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32z{k}", :zmm]' do
        expect(subject.form).to eq([:"vm32z{k}", :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpscatterdd #{operands.map(&:type).join(', ')}")
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
