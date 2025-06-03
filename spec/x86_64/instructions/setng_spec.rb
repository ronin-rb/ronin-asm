#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/setng'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::SETNG do
  include Helpers::X86_64::Operands

  let(:operands) { [reg8(0)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :setng" do
      expect(subject.name).to be(:setng)
    end

    context "when given operands of types reg8" do
      let(:operands) { [reg8(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8]" do
        expect(subject.form).to eq([:reg8])
      end
    end

    context "when given operands of types mem8" do
      let(:operands) { [mem8(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8]" do
        expect(subject.form).to eq([:mem8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: setng #{operands.map(&:type).join(', ')}")
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

  describe "#name" do
    it "must return :setng" do
      expect(subject.name).to eq(:setng)
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

    context "when #operands contains operands of types reg8" do
      let(:operands) { [reg8(0)] }

      let(:bin_file_name) { "setng_reg8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem8" do
      let(:operands) { [mem8(0)] }

      let(:bin_file_name) { "setng_mem8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
