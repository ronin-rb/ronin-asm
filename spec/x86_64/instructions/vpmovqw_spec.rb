#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpmovqw'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPMOVQW do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm_k_z(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovqw" do
      expect(subject.name).to be(:vpmovqw)
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

    context "when given operands of types mem32{k}, xmm" do
      let(:operands) { [mem32_k(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem32{k}", :xmm]' do
        expect(subject.form).to eq([:"mem32{k}", :xmm])
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

    context "when given operands of types mem64{k}, ymm" do
      let(:operands) { [mem64_k(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem64{k}", :ymm]' do
        expect(subject.form).to eq([:"mem64{k}", :ymm])
      end
    end

    context "when given operands of types xmm{k}{z}, zmm" do
      let(:operands) { [xmm_k_z(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :zmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :zmm])
      end
    end

    context "when given operands of types mem128{k}, zmm" do
      let(:operands) { [mem128_k(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :zmm]' do
        expect(subject.form).to eq([:"mem128{k}", :zmm])
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

    context "when given operands of types xmm, zmm" do
      let(:operands) { [xmm(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :zmm]" do
        expect(subject.form).to eq([:xmm, :zmm])
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

    context "when given operands of types mem64, ymm" do
      let(:operands) { [mem64(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem64, :ymm]" do
        expect(subject.form).to eq([:mem64, :ymm])
      end
    end

    context "when given operands of types mem128, zmm" do
      let(:operands) { [mem128(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :zmm]" do
        expect(subject.form).to eq([:mem128, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovqw #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vpmovqw_xmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32{k}, xmm" do
      let(:operands) { [mem32_k(0), xmm(1)] }

      let(:bin_file_name) { "vpmovqw_mem32{k}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z(0), ymm(1)] }

      let(:bin_file_name) { "vpmovqw_xmm{k}{z}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64{k}, ymm" do
      let(:operands) { [mem64_k(0), ymm(1)] }

      let(:bin_file_name) { "vpmovqw_mem64{k}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, zmm" do
      let(:operands) { [xmm_k_z(0), zmm(1)] }

      let(:bin_file_name) { "vpmovqw_xmm{k}{z}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128{k}, zmm" do
      let(:operands) { [mem128_k(0), zmm(1)] }

      let(:bin_file_name) { "vpmovqw_mem128{k}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      let(:bin_file_name) { "vpmovqw_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, ymm" do
      let(:operands) { [xmm(0), ymm(1)] }

      let(:bin_file_name) { "vpmovqw_xmm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, zmm" do
      let(:operands) { [xmm(0), zmm(1)] }

      let(:bin_file_name) { "vpmovqw_xmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem32, xmm" do
      let(:operands) { [mem32(0), xmm(1)] }

      let(:bin_file_name) { "vpmovqw_mem32_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem64, ymm" do
      let(:operands) { [mem64(0), ymm(1)] }

      let(:bin_file_name) { "vpmovqw_mem64_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128, zmm" do
      let(:operands) { [mem128(0), zmm(1)] }

      let(:bin_file_name) { "vpmovqw_mem128_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
