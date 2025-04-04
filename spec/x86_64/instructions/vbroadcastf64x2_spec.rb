#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vbroadcastf64x2'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VBROADCASTF64X2 do
  include Helpers::X86_64::Operands

  let(:operands) { [ymm_k_z(0), mem128(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbroadcastf64x2" do
      expect(subject.name).to be(:vbroadcastf64x2)
    end

    context "when given operands of types ymm{k}{z}, mem128" do
      let(:operands) { [ymm_k_z(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :mem128]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :mem128])
      end
    end

    context "when given operands of types zmm{k}{z}, mem128" do
      let(:operands) { [zmm_k_z(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :mem128]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :mem128])
      end
    end

    context "when given operands of types ymm, mem128" do
      let(:operands) { [ymm(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem128]" do
        expect(subject.form).to eq([:ymm, :mem128])
      end
    end

    context "when given operands of types zmm, mem128" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem128]" do
        expect(subject.form).to eq([:zmm, :mem128])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vbroadcastf64x2 #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types ymm{k}{z}, mem128" do
      let(:operands) { [ymm_k_z(0), mem128(1)] }

      let(:bin_file_name) { "vbroadcastf64x2_ymm{k}{z}_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, mem128" do
      let(:operands) { [zmm_k_z(0), mem128(1)] }

      let(:bin_file_name) { "vbroadcastf64x2_zmm{k}{z}_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem128" do
      let(:operands) { [ymm(0), mem128(1)] }

      let(:bin_file_name) { "vbroadcastf64x2_ymm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem128" do
      let(:operands) { [zmm(0), mem128(1)] }

      let(:bin_file_name) { "vbroadcastf64x2_zmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
