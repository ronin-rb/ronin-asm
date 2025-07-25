#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vextractf64x4'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VEXTRACTF64X4 do
  include Helpers::X86_64::Operands

  let(:operands) { [ymm_k_z(0), zmm(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vextractf64x4" do
      expect(subject.name).to be(:vextractf64x4)
    end

    context "when given operands of types ymm{k}{z}, zmm, imm8" do
      let(:operands) { [ymm_k_z(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :zmm, :imm8])
      end
    end

    context "when given operands of types mem256{k}, zmm, imm8" do
      let(:operands) { [mem256_k(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem256{k}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"mem256{k}", :zmm, :imm8])
      end
    end

    context "when given operands of types ymm, zmm, imm8" do
      let(:operands) { [ymm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :zmm, :imm8]" do
        expect(subject.form).to eq([:ymm, :zmm, :imm8])
      end
    end

    context "when given operands of types mem256, zmm, imm8" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :zmm, :imm8]" do
        expect(subject.form).to eq([:mem256, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vextractf64x4 #{operands.map(&:type).join(', ')}")
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
    it "must return :vextractf64x4" do
      expect(subject.name).to eq(:vextractf64x4)
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

    context "when #operands contains operands of types ymm{k}{z}, zmm, imm8" do
      let(:operands) { [ymm_k_z(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x4_ymm{k}{z}_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem256{k}, zmm, imm8" do
      let(:operands) { [mem256_k(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x4_mem256{k}_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, zmm, imm8" do
      let(:operands) { [ymm(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x4_ymm_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem256, zmm, imm8" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x4_mem256_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
