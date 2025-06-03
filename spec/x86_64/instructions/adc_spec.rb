#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/adc'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::ADC do
  include Helpers::X86_64::Operands

  let(:operands) { [al(0), imm8(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :adc" do
      expect(subject.name).to be(:adc)
    end

    context "when given operands of types al, imm8" do
      let(:operands) { [al(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:al, :imm8]" do
        expect(subject.form).to eq([:al, :imm8])
      end
    end

    context "when given operands of types reg8, imm8" do
      let(:operands) { [reg8(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :imm8]" do
        expect(subject.form).to eq([:reg8, :imm8])
      end
    end

    context "when given operands of types reg8, reg8" do
      let(:operands) { [reg8(0), reg8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :reg8]" do
        expect(subject.form).to eq([:reg8, :reg8])
      end
    end

    context "when given operands of types reg8, mem8" do
      let(:operands) { [reg8(0), mem8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg8, :mem8]" do
        expect(subject.form).to eq([:reg8, :mem8])
      end
    end

    context "when given operands of types ax, imm16" do
      let(:operands) { [ax(0), imm16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ax, :imm16]" do
        expect(subject.form).to eq([:ax, :imm16])
      end
    end

    context "when given operands of types reg16, imm8" do
      let(:operands) { [reg16(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :imm8]" do
        expect(subject.form).to eq([:reg16, :imm8])
      end
    end

    context "when given operands of types reg16, imm16" do
      let(:operands) { [reg16(0), imm16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :imm16]" do
        expect(subject.form).to eq([:reg16, :imm16])
      end
    end

    context "when given operands of types reg16, reg16" do
      let(:operands) { [reg16(0), reg16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :reg16]" do
        expect(subject.form).to eq([:reg16, :reg16])
      end
    end

    context "when given operands of types reg16, mem16" do
      let(:operands) { [reg16(0), mem16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg16, :mem16]" do
        expect(subject.form).to eq([:reg16, :mem16])
      end
    end

    context "when given operands of types eax, imm32" do
      let(:operands) { [eax(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:eax, :imm32]" do
        expect(subject.form).to eq([:eax, :imm32])
      end
    end

    context "when given operands of types reg32, imm8" do
      let(:operands) { [reg32(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :imm8]" do
        expect(subject.form).to eq([:reg32, :imm8])
      end
    end

    context "when given operands of types reg32, imm32" do
      let(:operands) { [reg32(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :imm32]" do
        expect(subject.form).to eq([:reg32, :imm32])
      end
    end

    context "when given operands of types reg32, reg32" do
      let(:operands) { [reg32(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :reg32]" do
        expect(subject.form).to eq([:reg32, :reg32])
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :mem32])
      end
    end

    context "when given operands of types rax, imm32" do
      let(:operands) { [rax(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:rax, :imm32]" do
        expect(subject.form).to eq([:rax, :imm32])
      end
    end

    context "when given operands of types reg64, imm8" do
      let(:operands) { [reg64(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :imm8]" do
        expect(subject.form).to eq([:reg64, :imm8])
      end
    end

    context "when given operands of types reg64, imm32" do
      let(:operands) { [reg64(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :imm32]" do
        expect(subject.form).to eq([:reg64, :imm32])
      end
    end

    context "when given operands of types reg64, reg64" do
      let(:operands) { [reg64(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :reg64]" do
        expect(subject.form).to eq([:reg64, :reg64])
      end
    end

    context "when given operands of types reg64, mem64" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem64]" do
        expect(subject.form).to eq([:reg64, :mem64])
      end
    end

    context "when given operands of types mem8, imm8" do
      let(:operands) { [mem8(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :imm8]" do
        expect(subject.form).to eq([:mem8, :imm8])
      end
    end

    context "when given operands of types mem8, reg8" do
      let(:operands) { [mem8(0), reg8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem8, :reg8]" do
        expect(subject.form).to eq([:mem8, :reg8])
      end
    end

    context "when given operands of types mem16, imm8" do
      let(:operands) { [mem16(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :imm8]" do
        expect(subject.form).to eq([:mem16, :imm8])
      end
    end

    context "when given operands of types mem16, imm16" do
      let(:operands) { [mem16(0), imm16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :imm16]" do
        expect(subject.form).to eq([:mem16, :imm16])
      end
    end

    context "when given operands of types mem16, reg16" do
      let(:operands) { [mem16(0), reg16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem16, :reg16]" do
        expect(subject.form).to eq([:mem16, :reg16])
      end
    end

    context "when given operands of types mem32, imm8" do
      let(:operands) { [mem32(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :imm8]" do
        expect(subject.form).to eq([:mem32, :imm8])
      end
    end

    context "when given operands of types mem32, imm32" do
      let(:operands) { [mem32(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :imm32]" do
        expect(subject.form).to eq([:mem32, :imm32])
      end
    end

    context "when given operands of types mem32, reg32" do
      let(:operands) { [mem32(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :reg32]" do
        expect(subject.form).to eq([:mem32, :reg32])
      end
    end

    context "when given operands of types mem64, imm8" do
      let(:operands) { [mem64(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :imm8]" do
        expect(subject.form).to eq([:mem64, :imm8])
      end
    end

    context "when given operands of types mem64, imm32" do
      let(:operands) { [mem64(0), imm32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :imm32]" do
        expect(subject.form).to eq([:mem64, :imm32])
      end
    end

    context "when given operands of types mem64, reg64" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :reg64]" do
        expect(subject.form).to eq([:mem64, :reg64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: adc #{operands.map(&:type).join(', ')}")
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
    it "must return :adc" do
      expect(subject.name).to eq(:adc)
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

    context "when #operands contains operands of types al, imm8" do
      let(:operands) { [al(0), imm8(1)] }

      let(:bin_file_name) { "adc_al_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg8, imm8" do
      let(:operands) { [reg8(0), imm8(1)] }

      let(:bin_file_name) { "adc_reg8_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg8, reg8" do
      let(:operands) { [reg8(0), reg8(1)] }

      let(:bin_file_name) { "adc_reg8_reg8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg8, mem8" do
      let(:operands) { [reg8(0), mem8(1)] }

      let(:bin_file_name) { "adc_reg8_mem8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ax, imm16" do
      let(:operands) { [ax(0), imm16(1)] }

      let(:bin_file_name) { "adc_ax_imm16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg16, imm8" do
      let(:operands) { [reg16(0), imm8(1)] }

      let(:bin_file_name) { "adc_reg16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg16, imm16" do
      let(:operands) { [reg16(0), imm16(1)] }

      let(:bin_file_name) { "adc_reg16_imm16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg16, reg16" do
      let(:operands) { [reg16(0), reg16(1)] }

      let(:bin_file_name) { "adc_reg16_reg16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg16, mem16" do
      let(:operands) { [reg16(0), mem16(1)] }

      let(:bin_file_name) { "adc_reg16_mem16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types eax, imm32" do
      let(:operands) { [eax(0), imm32(1)] }

      let(:bin_file_name) { "adc_eax_imm32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, imm8" do
      let(:operands) { [reg32(0), imm8(1)] }

      let(:bin_file_name) { "adc_reg32_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, imm32" do
      let(:operands) { [reg32(0), imm32(1)] }

      let(:bin_file_name) { "adc_reg32_imm32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, reg32" do
      let(:operands) { [reg32(0), reg32(1)] }

      let(:bin_file_name) { "adc_reg32_reg32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, mem32" do
      let(:operands) { [reg32(0), mem32(1)] }

      let(:bin_file_name) { "adc_reg32_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types rax, imm32" do
      let(:operands) { [rax(0), imm32(1)] }

      let(:bin_file_name) { "adc_rax_imm32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, imm8" do
      let(:operands) { [reg64(0), imm8(1)] }

      let(:bin_file_name) { "adc_reg64_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, imm32" do
      let(:operands) { [reg64(0), imm32(1)] }

      let(:bin_file_name) { "adc_reg64_imm32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, reg64" do
      let(:operands) { [reg64(0), reg64(1)] }

      let(:bin_file_name) { "adc_reg64_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, mem64" do
      let(:operands) { [reg64(0), mem64(1)] }

      let(:bin_file_name) { "adc_reg64_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem8, imm8" do
      let(:operands) { [mem8(0), imm8(1)] }

      let(:bin_file_name) { "adc_mem8_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem8, reg8" do
      let(:operands) { [mem8(0), reg8(1)] }

      let(:bin_file_name) { "adc_mem8_reg8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem16, imm8" do
      let(:operands) { [mem16(0), imm8(1)] }

      let(:bin_file_name) { "adc_mem16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem16, imm16" do
      let(:operands) { [mem16(0), imm16(1)] }

      let(:bin_file_name) { "adc_mem16_imm16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem16, reg16" do
      let(:operands) { [mem16(0), reg16(1)] }

      let(:bin_file_name) { "adc_mem16_reg16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, imm8" do
      let(:operands) { [mem32(0), imm8(1)] }

      let(:bin_file_name) { "adc_mem32_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, imm32" do
      let(:operands) { [mem32(0), imm32(1)] }

      let(:bin_file_name) { "adc_mem32_imm32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, reg32" do
      let(:operands) { [mem32(0), reg32(1)] }

      let(:bin_file_name) { "adc_mem32_reg32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, imm8" do
      let(:operands) { [mem64(0), imm8(1)] }

      let(:bin_file_name) { "adc_mem64_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, imm32" do
      let(:operands) { [mem64(0), imm32(1)] }

      let(:bin_file_name) { "adc_mem64_imm32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, reg64" do
      let(:operands) { [mem64(0), reg64(1)] }

      let(:bin_file_name) { "adc_mem64_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
