#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/pinsrw'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::PINSRW do
  include Helpers::X86_64::Operands

  let(:operands) { [mmx(0), reg32(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :pinsrw" do
      expect(subject.name).to be(:pinsrw)
    end

    context "when given operands of types mmx, reg32, imm8" do
      let(:operands) { [mmx(0), reg32(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mmx, :reg32, :imm8]" do
        expect(subject.form).to eq([:mmx, :reg32, :imm8])
      end
    end

    context "when given operands of types mmx, mem16, imm8" do
      let(:operands) { [mmx(0), mem16(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mmx, :mem16, :imm8]" do
        expect(subject.form).to eq([:mmx, :mem16, :imm8])
      end
    end

    context "when given operands of types xmm, reg32, imm8" do
      let(:operands) { [xmm(0), reg32(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :reg32, :imm8]" do
        expect(subject.form).to eq([:xmm, :reg32, :imm8])
      end
    end

    context "when given operands of types xmm, mem16, imm8" do
      let(:operands) { [xmm(0), mem16(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem16, :imm8]" do
        expect(subject.form).to eq([:xmm, :mem16, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: pinsrw #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types mmx, reg32, imm8" do
      let(:operands) { [mmx(0), reg32(1), imm8(2)] }

      let(:bin_file_name) { "pinsrw_mmx_reg32_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mmx, mem16, imm8" do
      let(:operands) { [mmx(0), mem16(1), imm8(2)] }

      let(:bin_file_name) { "pinsrw_mmx_mem16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, reg32, imm8" do
      let(:operands) { [xmm(0), reg32(1), imm8(2)] }

      let(:bin_file_name) { "pinsrw_xmm_reg32_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem16, imm8" do
      let(:operands) { [xmm(0), mem16(1), imm8(2)] }

      let(:bin_file_name) { "pinsrw_xmm_mem16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
