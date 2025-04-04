#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/call'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::CALL do
  include Helpers::X86_64::Operands

  let(:operands) { [rel32(0)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :call" do
      expect(subject.name).to be(:call)
    end

    context "when given operands of types rel32" do
      let(:operands) { [rel32(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:rel32]" do
        expect(subject.form).to eq([:rel32])
      end
    end

    context "when given operands of types reg64" do
      let(:operands) { [reg64(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64]" do
        expect(subject.form).to eq([:reg64])
      end
    end

    context "when given operands of types mem64" do
      let(:operands) { [mem64(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64]" do
        expect(subject.form).to eq([:mem64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: call #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types rel32" do
      let(:operands) { [rel32(0)] }

      let(:bin_file_name) { "call_rel32.bin" }

      it do
        skip "currently cannot convert Ronin::ASM::X86_64::RelativeOffset or Ronin::ASM::X86_64::MemoryOffset operands to ASM syntax"

        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64" do
      let(:operands) { [reg64(0)] }

      let(:bin_file_name) { "call_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64" do
      let(:operands) { [mem64(0)] }

      let(:bin_file_name) { "call_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
