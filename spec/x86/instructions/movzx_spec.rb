#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movzx'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::MOVZX do
  include Helpers::X86::Operands

  let(:operands) { [reg16(0), reg8(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movzx" do
      expect(subject.name).to be(:movzx)
    end

    context "when given operands of types reg16, reg8" do
      let(:operands) { [reg16(0), reg8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :reg8]" do
        expect(subject.form).to eq([:reg16, :reg8])
      end
    end

    context "when given operands of types reg16, mem8" do
      let(:operands) { [reg16(0), mem8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :mem8]" do
        expect(subject.form).to eq([:reg16, :mem8])
      end
    end

    context "when given operands of types reg32, reg8" do
      let(:operands) { [reg32(0), reg8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg8]" do
        expect(subject.form).to eq([:reg32, :reg8])
      end
    end

    context "when given operands of types reg32, reg16" do
      let(:operands) { [reg32(0), reg16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg16]" do
        expect(subject.form).to eq([:reg32, :reg16])
      end
    end

    context "when given operands of types reg32, mem8" do
      let(:operands) { [reg32(0), mem8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem8]" do
        expect(subject.form).to eq([:reg32, :mem8])
      end
    end

    context "when given operands of types reg32, mem16" do
      let(:operands) { [reg32(0), mem16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem16]" do
        expect(subject.form).to eq([:reg32, :mem16])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: movzx #{operands.map(&:type).join(', ')}")
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
    it "must return :movzx" do
      expect(subject.name).to eq(:movzx)
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

    context "when #operands contains operands of types reg16, reg8" do
      let(:operands) { [reg16(0), reg8(1)] }

      let(:bin_file_name) { "movzx_reg16_reg8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg16, mem8" do
      let(:operands) { [reg16(0), mem8(1)] }

      let(:bin_file_name) { "movzx_reg16_mem8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, reg8" do
      let(:operands) { [reg32(0), reg8(1)] }

      let(:bin_file_name) { "movzx_reg32_reg8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, reg16" do
      let(:operands) { [reg32(0), reg16(1)] }

      let(:bin_file_name) { "movzx_reg32_reg16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, mem8" do
      let(:operands) { [reg32(0), mem8(1)] }

      let(:bin_file_name) { "movzx_reg32_mem8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, mem16" do
      let(:operands) { [reg32(0), mem16(1)] }

      let(:bin_file_name) { "movzx_reg32_mem16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
