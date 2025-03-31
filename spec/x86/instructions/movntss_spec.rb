#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movntss'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::MOVNTSS do
  include Helpers::X86::Operands

  let(:operands) { [mem32(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movntss" do
      expect(subject.name).to be(:movntss)
    end

    context "when given operands of types mem32, xmm" do
      let(:operands) { [mem32(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :xmm]" do
        expect(subject.form).to eq([:mem32, :xmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: movntss #{operands.map(&:type).join(', ')}")
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
