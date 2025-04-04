#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vmovapd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VMOVAPD do
  include Helpers::X86::Operands

  let(:operands) { [mem128_k(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vmovapd" do
      expect(subject.name).to be(:vmovapd)
    end

    context "when given operands of types mem128{k}, xmm" do
      let(:operands) { [mem128_k(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem128{k}", :xmm]' do
        expect(subject.form).to eq([:"mem128{k}", :xmm])
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

    context "when given operands of types mem256{k}, ymm" do
      let(:operands) { [mem256_k(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem256{k}", :ymm]' do
        expect(subject.form).to eq([:"mem256{k}", :ymm])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm])
      end
    end

    context "when given operands of types mem512{k}, zmm" do
      let(:operands) { [mem512_k(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"mem512{k}", :zmm]' do
        expect(subject.form).to eq([:"mem512{k}", :zmm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm])
      end
    end

    context "when given operands of types xmm{k}{z}, mem128" do
      let(:operands) { [xmm_k_z(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :mem128]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :mem128])
      end
    end

    context "when given operands of types ymm{k}{z}, mem256" do
      let(:operands) { [ymm_k_z(0), mem256(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :mem256]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :mem256])
      end
    end

    context "when given operands of types zmm{k}{z}, mem512" do
      let(:operands) { [zmm_k_z(0), mem512(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :mem512]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :mem512])
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

    context "when given operands of types xmm, mem128" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :mem128])
      end
    end

    context "when given operands of types ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm])
      end
    end

    context "when given operands of types ymm, mem256" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :mem256])
      end
    end

    context "when given operands of types zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm]" do
        expect(subject.form).to eq([:zmm, :zmm])
      end
    end

    context "when given operands of types zmm, mem512" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem512]" do
        expect(subject.form).to eq([:zmm, :mem512])
      end
    end

    context "when given operands of types mem128, xmm" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :xmm]" do
        expect(subject.form).to eq([:mem128, :xmm])
      end
    end

    context "when given operands of types mem256, ymm" do
      let(:operands) { [mem256(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :ymm]" do
        expect(subject.form).to eq([:mem256, :ymm])
      end
    end

    context "when given operands of types mem512, zmm" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem512, :zmm]" do
        expect(subject.form).to eq([:mem512, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vmovapd #{operands.map(&:type).join(', ')}")
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
    require 'ronin/asm/x86/encoder'
    require 'stringio'

    let(:output)  { StringIO.new(String.new(encoding: Encoding::ASCII_8BIT)) }
    let(:encoder) { Ronin::ASM::X86::Encoder.new(output) }

    let(:fixtures_dir)      { File.join(__dir__,'fixtures') }
    let(:bin_file_path)     { File.join(fixtures_dir,bin_file_name) }
    let(:expected_encoding) { File.binread(bin_file_path) }

    context "when #operands contains operands of types mem128{k}, xmm" do
      let(:operands) { [mem128_k(0), xmm(1)] }

      let(:bin_file_name) { "vmovapd_mem128{k}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vmovapd_xmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem256{k}, ymm" do
      let(:operands) { [mem256_k(0), ymm(1)] }

      let(:bin_file_name) { "vmovapd_mem256{k}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1)] }

      let(:bin_file_name) { "vmovapd_ymm{k}{z}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem512{k}, zmm" do
      let(:operands) { [mem512_k(0), zmm(1)] }

      let(:bin_file_name) { "vmovapd_mem512{k}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1)] }

      let(:bin_file_name) { "vmovapd_zmm{k}{z}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, mem128" do
      let(:operands) { [xmm_k_z(0), mem128(1)] }

      let(:bin_file_name) { "vmovapd_xmm{k}{z}_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, mem256" do
      let(:operands) { [ymm_k_z(0), mem256(1)] }

      let(:bin_file_name) { "vmovapd_ymm{k}{z}_mem256.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, mem512" do
      let(:operands) { [zmm_k_z(0), mem512(1)] }

      let(:bin_file_name) { "vmovapd_zmm{k}{z}_mem512.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      let(:bin_file_name) { "vmovapd_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem128" do
      let(:operands) { [xmm(0), mem128(1)] }

      let(:bin_file_name) { "vmovapd_xmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1)] }

      let(:bin_file_name) { "vmovapd_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem256" do
      let(:operands) { [ymm(0), mem256(1)] }

      let(:bin_file_name) { "vmovapd_ymm_mem256.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1)] }

      let(:bin_file_name) { "vmovapd_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem512" do
      let(:operands) { [zmm(0), mem512(1)] }

      let(:bin_file_name) { "vmovapd_zmm_mem512.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem128, xmm" do
      let(:operands) { [mem128(0), xmm(1)] }

      let(:bin_file_name) { "vmovapd_mem128_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem256, ymm" do
      let(:operands) { [mem256(0), ymm(1)] }

      let(:bin_file_name) { "vmovapd_mem256_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem512, zmm" do
      let(:operands) { [mem512(0), zmm(1)] }

      let(:bin_file_name) { "vmovapd_mem512_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
