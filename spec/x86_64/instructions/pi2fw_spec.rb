#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/pi2fw'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::PI2FW do
  include Helpers::X86_64::Operands

  let(:operands) { [mmx(0), mmx(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pi2fw" do
      expect(subject.name).to be(:pi2fw)
    end

    context "when given operands of types mmx, mmx" do
      let(:operands) { [mmx(0), mmx(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mmx, :mmx]" do
        expect(subject.form).to eq([:mmx, :mmx])
      end
    end

    context "when given operands of types mmx, mem64" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mmx, :mem64]" do
        expect(subject.form).to eq([:mmx, :mem64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: pi2fw #{operands.map(&:type).join(', ')}")
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
