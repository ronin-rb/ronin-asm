#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vbroadcastf32x8'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VBROADCASTF32X8 do
  include Helpers::X86_64::Operands

  let(:operands) { [zmm_k_z(0), mem256(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbroadcastf32x8" do
      expect(subject.name).to be(:vbroadcastf32x8)
    end

    context "when given operands of types zmm{k}{z}, mem256" do
      let(:operands) { [zmm_k_z(0), mem256(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :mem256]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :mem256])
      end
    end

    context "when given operands of types zmm, mem256" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem256]" do
        expect(subject.form).to eq([:zmm, :mem256])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vbroadcastf32x8 #{operands.map(&:type).join(', ')}")
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
