#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vscatterdpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VSCATTERDPD do
  include_context "Ronin::ASM::X86 Operands"

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
    end

    context "when given operands of types vm32x{k}, ymm" do
      let(:operands) { [vm32x_k, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types vm32y{k}, zmm" do
      let(:operands) { [vm32y_k, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
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
