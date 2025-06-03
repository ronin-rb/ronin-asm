#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vinserti64x4'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VINSERTI64X4 do
  include Helpers::X86::Operands

  let(:operands) { [zmm_k_z(0), zmm(1), ymm(2), imm8(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vinserti64x4" do
      expect(subject.name).to be(:vinserti64x4)
    end

    context "when given operands of types zmm{k}{z}, zmm, ymm, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :ymm, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem256, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem256(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :mem256, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :mem256, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, ymm, imm8" do
      let(:operands) { [zmm(0), zmm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :ymm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :ymm, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, mem256, imm8" do
      let(:operands) { [zmm(0), zmm(1), mem256(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :mem256, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :mem256, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vinserti64x4 #{operands.map(&:type).join(', ')}")
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
    it "must return :vinserti64x4" do
      expect(subject.name).to eq(:vinserti64x4)
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

    context "when #operands contains operands of types zmm{k}{z}, zmm, ymm, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), ymm(2), imm8(3)] }

      let(:bin_file_name) { "vinserti64x4_zmm{k}{z}_zmm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, mem256, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem256(2), imm8(3)] }

      let(:bin_file_name) { "vinserti64x4_zmm{k}{z}_zmm_mem256_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, ymm, imm8" do
      let(:operands) { [zmm(0), zmm(1), ymm(2), imm8(3)] }

      let(:bin_file_name) { "vinserti64x4_zmm_zmm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, mem256, imm8" do
      let(:operands) { [zmm(0), zmm(1), mem256(2), imm8(3)] }

      let(:bin_file_name) { "vinserti64x4_zmm_zmm_mem256_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
