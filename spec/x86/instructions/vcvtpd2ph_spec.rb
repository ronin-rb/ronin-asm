#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvtpd2ph'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VCVTPD2PH do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), mem128_mem64_bcst(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtpd2ph" do
      expect(subject.name).to be(:vcvtpd2ph)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem64bcst" do
      let(:operands) { [xmm_k_z(0), mem128_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem128/mem64bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem128/mem64bcst"])
      end
    end

    context "when given operands of types xmm{k}{z}, mem256/mem64bcst" do
      let(:operands) { [xmm_k_z(0), mem256_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types xmm{k}{z}, mem512/mem64bcst" do
      let(:operands) { [xmm_k_z(0), mem512_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem512/mem64bcst"])
      end
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

    context "when given operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :ymm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :ymm])
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

    context "when given operands of types xmm, mem128/mem64bcst" do
      let(:operands) { [xmm(0), mem128_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem128/mem64bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem128/mem64bcst"])
      end
    end

    context "when given operands of types xmm, mem256/mem64bcst" do
      let(:operands) { [xmm(0), mem256_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types xmm, mem512/mem64bcst" do
      let(:operands) { [xmm(0), mem512_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem512/mem64bcst"])
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

    context "when given operands of types xmm{k}{z}, zmm, {er}" do
      let(:operands) { [xmm_k_z(0), zmm(1), er(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :zmm, :"{er}"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :zmm, :"{er}"])
      end
    end

    context "when given operands of types xmm, zmm, {er}" do
      let(:operands) { [xmm(0), zmm(1), er(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :zmm, :"{er}"]' do
        expect(subject.form).to eq([:xmm, :zmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtpd2ph #{operands.map(&:type).join(', ')}")
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
    it "must return :vcvtpd2ph" do
      expect(subject.name).to eq(:vcvtpd2ph)
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

    context "when #operands contains operands of types xmm{k}{z}, mem128/mem64bcst" do
      let(:operands) { [xmm_k_z(0), mem128_mem64_bcst(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm{k}{z}_mem128mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, mem256/mem64bcst" do
      let(:operands) { [xmm_k_z(0), mem256_mem64_bcst(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm{k}{z}_mem256mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, mem512/mem64bcst" do
      let(:operands) { [xmm_k_z(0), mem512_mem64_bcst(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm{k}{z}_mem512mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, ymm" do
      let(:operands) { [xmm_k_z(0), ymm(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm{k}{z}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, zmm" do
      let(:operands) { [xmm_k_z(0), zmm(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm{k}{z}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem128/mem64bcst" do
      let(:operands) { [xmm(0), mem128_mem64_bcst(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm_mem128mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem256/mem64bcst" do
      let(:operands) { [xmm(0), mem256_mem64_bcst(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm_mem256mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem512/mem64bcst" do
      let(:operands) { [xmm(0), mem512_mem64_bcst(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm_mem512mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, ymm" do
      let(:operands) { [xmm(0), ymm(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, zmm" do
      let(:operands) { [xmm(0), zmm(1)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, zmm, {er}" do
      let(:operands) { [xmm_k_z(0), zmm(1), er(2)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm{k}{z}_zmm_{er}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, zmm, {er}" do
      let(:operands) { [xmm(0), zmm(1), er(2)] }

      let(:bin_file_name) { "vcvtpd2ph_xmm_zmm_{er}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
