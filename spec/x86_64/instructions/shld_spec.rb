#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/shld'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::SHLD do
  include Helpers::X86_64::Operands

  let(:operands) { [reg16(0), reg16(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :shld" do
      expect(subject.name).to be(:shld)
    end

    context "when given operands of types reg16, reg16, imm8" do
      let(:operands) { [reg16(0), reg16(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :reg16, :imm8]" do
        expect(subject.form).to eq([:reg16, :reg16, :imm8])
      end
    end

    context "when given operands of types reg16, reg16, cl" do
      let(:operands) { [reg16(0), reg16(1), cl(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :reg16, :cl]" do
        expect(subject.form).to eq([:reg16, :reg16, :cl])
      end
    end

    context "when given operands of types reg32, reg32, imm8" do
      let(:operands) { [reg32(0), reg32(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :imm8]" do
        expect(subject.form).to eq([:reg32, :reg32, :imm8])
      end
    end

    context "when given operands of types reg32, reg32, cl" do
      let(:operands) { [reg32(0), reg32(1), cl(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32, :cl]" do
        expect(subject.form).to eq([:reg32, :reg32, :cl])
      end
    end

    context "when given operands of types reg64, reg64, imm8" do
      let(:operands) { [reg64(0), reg64(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64, :imm8]" do
        expect(subject.form).to eq([:reg64, :reg64, :imm8])
      end
    end

    context "when given operands of types reg64, reg64, cl" do
      let(:operands) { [reg64(0), reg64(1), cl(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64, :cl]" do
        expect(subject.form).to eq([:reg64, :reg64, :cl])
      end
    end

    context "when given operands of types mem16, reg16, imm8" do
      let(:operands) { [mem16(0), reg16(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :reg16, :imm8]" do
        expect(subject.form).to eq([:mem16, :reg16, :imm8])
      end
    end

    context "when given operands of types mem16, reg16, cl" do
      let(:operands) { [mem16(0), reg16(1), cl(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :reg16, :cl]" do
        expect(subject.form).to eq([:mem16, :reg16, :cl])
      end
    end

    context "when given operands of types mem32, reg32, imm8" do
      let(:operands) { [mem32(0), reg32(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32, :imm8]" do
        expect(subject.form).to eq([:mem32, :reg32, :imm8])
      end
    end

    context "when given operands of types mem32, reg32, cl" do
      let(:operands) { [mem32(0), reg32(1), cl(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32, :cl]" do
        expect(subject.form).to eq([:mem32, :reg32, :cl])
      end
    end

    context "when given operands of types mem64, reg64, imm8" do
      let(:operands) { [mem64(0), reg64(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64, :imm8]" do
        expect(subject.form).to eq([:mem64, :reg64, :imm8])
      end
    end

    context "when given operands of types mem64, reg64, cl" do
      let(:operands) { [mem64(0), reg64(1), cl(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64, :cl]" do
        expect(subject.form).to eq([:mem64, :reg64, :cl])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: shld #{operands.map(&:type).join(', ')}")
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
    it "must return :shld" do
      expect(subject.name).to eq(:shld)
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

    context "when #operands contains operands of types reg16, reg16, imm8" do
      let(:operands) { [reg16(0), reg16(1), imm8(2)] }

      let(:bin_file_name) { "shld_reg16_reg16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg16, reg16, cl" do
      let(:operands) { [reg16(0), reg16(1), cl(2)] }

      let(:bin_file_name) { "shld_reg16_reg16_cl.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, reg32, imm8" do
      let(:operands) { [reg32(0), reg32(1), imm8(2)] }

      let(:bin_file_name) { "shld_reg32_reg32_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, reg32, cl" do
      let(:operands) { [reg32(0), reg32(1), cl(2)] }

      let(:bin_file_name) { "shld_reg32_reg32_cl.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, reg64, imm8" do
      let(:operands) { [reg64(0), reg64(1), imm8(2)] }

      let(:bin_file_name) { "shld_reg64_reg64_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, reg64, cl" do
      let(:operands) { [reg64(0), reg64(1), cl(2)] }

      let(:bin_file_name) { "shld_reg64_reg64_cl.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem16, reg16, imm8" do
      let(:operands) { [mem16(0), reg16(1), imm8(2)] }

      let(:bin_file_name) { "shld_mem16_reg16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem16, reg16, cl" do
      let(:operands) { [mem16(0), reg16(1), cl(2)] }

      let(:bin_file_name) { "shld_mem16_reg16_cl.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, reg32, imm8" do
      let(:operands) { [mem32(0), reg32(1), imm8(2)] }

      let(:bin_file_name) { "shld_mem32_reg32_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, reg32, cl" do
      let(:operands) { [mem32(0), reg32(1), cl(2)] }

      let(:bin_file_name) { "shld_mem32_reg32_cl.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, reg64, imm8" do
      let(:operands) { [mem64(0), reg64(1), imm8(2)] }

      let(:bin_file_name) { "shld_mem64_reg64_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, reg64, cl" do
      let(:operands) { [mem64(0), reg64(1), cl(2)] }

      let(:bin_file_name) { "shld_mem64_reg64_cl.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
