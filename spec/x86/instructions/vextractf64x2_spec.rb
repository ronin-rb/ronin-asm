#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vextractf64x2'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VEXTRACTF64X2 do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), ymm(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vextractf64x2" do
      expect(subject.name).to be(:vextractf64x2)
    end

    context "when given operands of types xmm{k}{z}, ymm, imm8" do
      let(:operands) { [xmm_k_z(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :ymm, :imm8])
      end
    end

    context "when given operands of types mem128{k}, ymm, imm8" do
      let(:operands) { [mem128_k(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"mem128{k}", :ymm, :imm8])
      end
    end

    context "when given operands of types xmm{k}{z}, zmm, imm8" do
      let(:operands) { [xmm_k_z(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :zmm, :imm8])
      end
    end

    context "when given operands of types mem128{k}, zmm, imm8" do
      let(:operands) { [mem128_k(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"mem128{k}", :zmm, :imm8])
      end
    end

    context "when given operands of types xmm, ymm, imm8" do
      let(:operands) { [xmm(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :ymm, :imm8]" do
        expect(subject.form).to eq([:xmm, :ymm, :imm8])
      end
    end

    context "when given operands of types xmm, zmm, imm8" do
      let(:operands) { [xmm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :zmm, :imm8])
      end
    end

    context "when given operands of types mem128, ymm, imm8" do
      let(:operands) { [mem128(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :ymm, :imm8]" do
        expect(subject.form).to eq([:mem128, :ymm, :imm8])
      end
    end

    context "when given operands of types mem128, zmm, imm8" do
      let(:operands) { [mem128(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :zmm, :imm8]" do
        expect(subject.form).to eq([:mem128, :zmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vextractf64x2 #{operands.map(&:type).join(', ')}")
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
    it "must return :vextractf64x2" do
      expect(subject.name).to eq(:vextractf64x2)
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

    context "when #operands contains operands of types xmm{k}{z}, ymm, imm8" do
      let(:operands) { [xmm_k_z(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_xmm{k}{z}_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128{k}, ymm, imm8" do
      let(:operands) { [mem128_k(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_mem128{k}_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, zmm, imm8" do
      let(:operands) { [xmm_k_z(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_xmm{k}{z}_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128{k}, zmm, imm8" do
      let(:operands) { [mem128_k(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_mem128{k}_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, ymm, imm8" do
      let(:operands) { [xmm(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_xmm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, zmm, imm8" do
      let(:operands) { [xmm(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_xmm_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128, ymm, imm8" do
      let(:operands) { [mem128(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_mem128_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128, zmm, imm8" do
      let(:operands) { [mem128(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vextractf64x2_mem128_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
