#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vscatterpf0dpd'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VSCATTERPF0DPD do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [vm32y_k] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterpf0dpd" do
      expect(subject.name).to be(:vscatterpf0dpd)
    end

    context "when given operands of types vm32y{k}" do
      let(:operands) { [vm32y_k] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32y{k}"]' do
        expect(subject.form).to eq([:"vm32y{k}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vscatterpf0dpd #{operands.map(&:type).join(', ')}")
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
