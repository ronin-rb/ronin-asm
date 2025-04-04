#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/cmpbxadd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::CMPBXADD do
  include Helpers::X86_64::Operands

  let(:operands) { [mem32(0), reg32(1), reg32(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :cmpbxadd" do
      expect(subject.name).to be(:cmpbxadd)
    end

    context "when given operands of types mem32, reg32, reg32" do
      let(:operands) { [mem32(0), reg32(1), reg32(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32, :reg32]" do
        expect(subject.form).to eq([:mem32, :reg32, :reg32])
      end
    end

    context "when given operands of types mem64, reg64, reg64" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64, :reg64]" do
        expect(subject.form).to eq([:mem64, :reg64, :reg64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: cmpbxadd #{operands.map(&:type).join(', ')}")
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

  describe "#encode", :compatibility do
    require 'ronin/asm/x86_64/encoder'
    require 'stringio'

    let(:output)  { StringIO.new(String.new(encoding: Encoding::ASCII_8BIT)) }
    let(:encoder) { Ronin::ASM::X86_64::Encoder.new(output) }

    let(:fixtures_dir)      { File.join(__dir__,'fixtures') }
    let(:bin_file_path)     { File.join(fixtures_dir,bin_file_name) }
    let(:expected_encoding) { File.binread(bin_file_path) }

    context "when #operands contains operands of types mem32, reg32, reg32" do
      let(:operands) { [mem32(0), reg32(1), reg32(2)] }

      let(:bin_file_name) { "cmpbxadd_mem32_reg32_reg32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, reg64, reg64" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      let(:bin_file_name) { "cmpbxadd_mem64_reg64_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
