#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/pop'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::POP do
  include Helpers::X86_64::Operands

  let(:operands) { [reg16(0)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pop" do
      expect(subject.name).to be(:pop)
    end

    context "when given operands of types reg16" do
      let(:operands) { [reg16(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16]" do
        expect(subject.form).to eq([:reg16])
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

    context "when given operands of types mem16" do
      let(:operands) { [mem16(0)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16]" do
        expect(subject.form).to eq([:mem16])
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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: pop #{operands.map(&:type).join(', ')}")
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
    it "must return :pop" do
      expect(subject.name).to eq(:pop)
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

    context "when #operands contains operands of types reg16" do
      let(:operands) { [reg16(0)] }

      let(:bin_file_name) { "pop_reg16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64" do
      let(:operands) { [reg64(0)] }

      let(:bin_file_name) { "pop_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem16" do
      let(:operands) { [mem16(0)] }

      let(:bin_file_name) { "pop_mem16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64" do
      let(:operands) { [mem64(0)] }

      let(:bin_file_name) { "pop_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
