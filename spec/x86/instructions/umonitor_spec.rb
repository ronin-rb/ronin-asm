#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/umonitor'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::UMONITOR do
  include Helpers::X86::Operands

  let(:operands) { [reg32(0)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :umonitor" do
      expect(subject.name).to be(:umonitor)
    end

    context "when given operands of types reg32" do
      let(:operands) { [reg32(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32]" do
        expect(subject.form).to eq([:reg32])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: umonitor #{operands.map(&:type).join(', ')}")
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
    it "must return :umonitor" do
      expect(subject.name).to eq(:umonitor)
    end
  end

  describe "#encode", :compatibility do
    require 'ronin/asm/x86/encoder'
    require 'stringio'

    let(:output)  { StringIO.new(String.new(encoding: Encoding::ASCII_8BIT)) }
    let(:encoder) { Ronin::ASM::X86::Encoder.new(output) }

    let(:fixtures_dir)      { File.join(__dir__,'fixtures') }
    let(:bin_file_path)     { File.join(fixtures_dir,bin_file_name) }
    let(:expected_encoding) { File.binread(bin_file_path) }

    context "when #operands contains operands of types reg32" do
      let(:operands) { [reg32(0)] }

      let(:bin_file_name) { "umonitor_reg32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
