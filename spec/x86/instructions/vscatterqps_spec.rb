#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vscatterqps'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VSCATTERQPS do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [vm64x_k, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterqps" do
      expect(subject.name).to be(:vscatterqps)
    end

    context "when given operands of types vm64x{k}, xmm" do
      let(:operands) { [vm64x_k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types vm64y{k}, xmm" do
      let(:operands) { [vm64y_k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types vm64z{k}, ymm" do
      let(:operands) { [vm64z_k, ymm] }

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
