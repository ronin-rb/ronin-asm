#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vscatterdpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VSCATTERDPD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [vm32x_k, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterdpd" do
      expect(subject.name).to be(:vscatterdpd)
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

    context "when given operands of types vm32x{k}, ymm" do
      let(:operands) { [vm32x_k, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32x{k}", :ymm]' do
        expect(subject.form).to eq([:"vm32x{k}", :ymm])
      end
    end

    context "when given operands of types vm32y{k}, zmm" do
      let(:operands) { [vm32y_k, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32y{k}", :zmm]' do
        expect(subject.form).to eq([:"vm32y{k}", :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vscatterdpd #{operands.map(&:type).join(', ')}")
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
