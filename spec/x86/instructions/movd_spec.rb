#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/movd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::MOVD do
  include Helpers::X86::Operands

  let(:operands) { [reg32(0), mmx(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :movd" do
      expect(subject.name).to be(:movd)
    end

    context "when given operands of types reg32, mmx" do
      let(:operands) { [reg32(0), mmx(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mmx]" do
        expect(subject.form).to eq([:reg32, :mmx])
      end
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :xmm]" do
        expect(subject.form).to eq([:reg32, :xmm])
      end
    end

    context "when given operands of types mmx, reg32" do
      let(:operands) { [mmx(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mmx, :reg32]" do
        expect(subject.form).to eq([:mmx, :reg32])
      end
    end

    context "when given operands of types mmx, mem32" do
      let(:operands) { [mmx(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mmx, :mem32]" do
        expect(subject.form).to eq([:mmx, :mem32])
      end
    end

    context "when given operands of types xmm, reg32" do
      let(:operands) { [xmm(0), reg32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :reg32]" do
        expect(subject.form).to eq([:xmm, :reg32])
      end
    end

    context "when given operands of types xmm, mem32" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :mem32])
      end
    end

    context "when given operands of types mem32, mmx" do
      let(:operands) { [mem32(0), mmx(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :mmx]" do
        expect(subject.form).to eq([:mem32, :mmx])
      end
    end

    context "when given operands of types mem32, xmm" do
      let(:operands) { [mem32(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem32, :xmm]" do
        expect(subject.form).to eq([:mem32, :xmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: movd #{operands.map(&:type).join(', ')}")
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
    it "must return :movd" do
      expect(subject.name).to eq(:movd)
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

    context "when #operands contains operands of types reg32, mmx" do
      let(:operands) { [reg32(0), mmx(1)] }

      let(:bin_file_name) { "movd_reg32_mmx.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, xmm" do
      let(:operands) { [reg32(0), xmm(1)] }

      let(:bin_file_name) { "movd_reg32_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mmx, reg32" do
      let(:operands) { [mmx(0), reg32(1)] }

      let(:bin_file_name) { "movd_mmx_reg32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mmx, mem32" do
      let(:operands) { [mmx(0), mem32(1)] }

      let(:bin_file_name) { "movd_mmx_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, reg32" do
      let(:operands) { [xmm(0), reg32(1)] }

      let(:bin_file_name) { "movd_xmm_reg32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem32" do
      let(:operands) { [xmm(0), mem32(1)] }

      let(:bin_file_name) { "movd_xmm_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, mmx" do
      let(:operands) { [mem32(0), mmx(1)] }

      let(:bin_file_name) { "movd_mem32_mmx.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, xmm" do
      let(:operands) { [mem32(0), xmm(1)] }

      let(:bin_file_name) { "movd_mem32_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
