#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vscatterpf1qps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VSCATTERPF1QPS do
  include Helpers::X86_64::Operands

  let(:operands) { [vm64z_k(0)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterpf1qps" do
      expect(subject.name).to be(:vscatterpf1qps)
    end

    context "when given operands of types vm64z{k}" do
      let(:operands) { [vm64z_k(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm64z{k}"]' do
        expect(subject.form).to eq([:"vm64z{k}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vscatterpf1qps #{operands.map(&:type).join(', ')}")
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
