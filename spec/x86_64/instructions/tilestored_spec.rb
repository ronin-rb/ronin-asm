#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/tilestored'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::TILESTORED do
  include Helpers::X86_64::Operands

  let(:operands) { [sibmem(0), tmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :tilestored" do
      expect(subject.name).to be(:tilestored)
    end

    context "when given operands of types sibmem, tmm" do
      let(:operands) { [sibmem(0), tmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:sibmem, :tmm]" do
        expect(subject.form).to eq([:sibmem, :tmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: tilestored #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types sibmem, tmm" do
      let(:operands) { [sibmem(0), tmm(1)] }

      let(:bin_file_name) { "tilestored_sibmem_tmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
