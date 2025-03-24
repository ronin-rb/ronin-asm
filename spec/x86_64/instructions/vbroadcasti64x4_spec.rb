#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vbroadcasti64x4'

require_relative 'operand_examples'

describe Ronin::ASM::X86_64::Instructions::VBROADCASTI64X4 do
  include_context "Ronin::ASM::X86_64 Operands"

  let(:operands) { [zmm_k_z, mem256] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbroadcasti64x4" do
      expect(subject.name).to be(:vbroadcasti64x4)
    end

    context "when given operands of types zmm{k}{z}, mem256" do
      let(:operands) { [zmm_k_z, mem256] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end
    end

    context "when given operands of types zmm, mem256" do
      let(:operands) { [zmm, mem256] }

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
