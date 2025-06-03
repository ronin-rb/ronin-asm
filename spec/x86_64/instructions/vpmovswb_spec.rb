#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpmovswb'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPMOVSWB do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm_k_z(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovswb" do
      expect(subject.name).to be(:vpmovswb)
    end

    context "when given operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types mem64{k}, xmm" do
      let(:operands) { [mem64_k(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem64{k}", :xmm]' do
        expect(subject.form).to eq([:"mem64{k}", :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :ymm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :ymm])
      end
    end

    context "when given operands of types mem128{k}, ymm" do
      let(:operands) { [mem128_k(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :ymm]' do
        expect(subject.form).to eq([:"mem128{k}", :ymm])
      end
    end

    context "when given operands of types ymm{k}{z}, zmm" do
      let(:operands) { [ymm_k_z(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :zmm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :zmm])
      end
    end

    context "when given operands of types mem256{k}, zmm" do
      let(:operands) { [mem256_k(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem256{k}", :zmm]' do
        expect(subject.form).to eq([:"mem256{k}", :zmm])
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, ymm" do
      let(:operands) { [xmm(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :ymm]" do
        expect(subject.form).to eq([:xmm, :ymm])
      end
    end

    context "when given operands of types ymm, zmm" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :zmm]" do
        expect(subject.form).to eq([:ymm, :zmm])
      end
    end

    context "when given operands of types mem64, xmm" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :xmm]" do
        expect(subject.form).to eq([:mem64, :xmm])
      end
    end

    context "when given operands of types mem128, ymm" do
      let(:operands) { [mem128(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :ymm]" do
        expect(subject.form).to eq([:mem128, :ymm])
      end
    end

    context "when given operands of types mem256, zmm" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :zmm]" do
        expect(subject.form).to eq([:mem256, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovswb #{operands.map(&:type).join(', ')}")
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
    it "must return :vpmovswb" do
      expect(subject.name).to eq(:vpmovswb)
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

    context "when #operands contains operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vpmovswb_xmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64{k}, xmm" do
      let(:operands) { [mem64_k(0), xmm(1)] }

      let(:bin_file_name) { "vpmovswb_mem64{k}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z(0), ymm(1)] }

      let(:bin_file_name) { "vpmovswb_xmm{k}{z}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128{k}, ymm" do
      let(:operands) { [mem128_k(0), ymm(1)] }

      let(:bin_file_name) { "vpmovswb_mem128{k}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, zmm" do
      let(:operands) { [ymm_k_z(0), zmm(1)] }

      let(:bin_file_name) { "vpmovswb_ymm{k}{z}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem256{k}, zmm" do
      let(:operands) { [mem256_k(0), zmm(1)] }

      let(:bin_file_name) { "vpmovswb_mem256{k}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      let(:bin_file_name) { "vpmovswb_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, ymm" do
      let(:operands) { [xmm(0), ymm(1)] }

      let(:bin_file_name) { "vpmovswb_xmm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, zmm" do
      let(:operands) { [ymm(0), zmm(1)] }

      let(:bin_file_name) { "vpmovswb_ymm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, xmm" do
      let(:operands) { [mem64(0), xmm(1)] }

      let(:bin_file_name) { "vpmovswb_mem64_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128, ymm" do
      let(:operands) { [mem128(0), ymm(1)] }

      let(:bin_file_name) { "vpmovswb_mem128_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem256, zmm" do
      let(:operands) { [mem256(0), zmm(1)] }

      let(:bin_file_name) { "vpmovswb_mem256_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
