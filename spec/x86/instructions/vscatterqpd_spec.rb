#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vscatterqpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86::Instructions::VSCATTERQPD do
  include_context "Ronin::ASM::X86 Operands"

  let(:operands) { [vm64x_k, xmm] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterqpd" do
      expect(subject.name).to be(:vscatterqpd)
    end

    context "when given operands of types vm64x{k}, xmm" do
      let(:operands) { [vm64x_k, xmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm64x{k}", :xmm]' do
        expect(subject.form).to eq([:"vm64x{k}", :xmm])
      end
    end

    context "when given operands of types vm64y{k}, ymm" do
      let(:operands) { [vm64y_k, ymm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm64y{k}", :ymm]' do
        expect(subject.form).to eq([:"vm64y{k}", :ymm])
      end
    end

    context "when given operands of types vm64z{k}, zmm" do
      let(:operands) { [vm64z_k, zmm] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm64z{k}", :zmm]' do
        expect(subject.form).to eq([:"vm64z{k}", :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vscatterqpd #{operands.map(&:type).join(', ')}")
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
