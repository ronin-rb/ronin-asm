#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpabsd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VPABSD do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), mem128_mem32_bcst(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpabsd" do
      expect(subject.name).to be(:vpabsd)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem32bcst" do
      let(:operands) { [xmm_k_z(0), mem128_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem128/mem32bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem128/mem32bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, mem256/mem32bcst" do
      let(:operands) { [ymm_k_z(0), mem256_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :"mem256/mem32bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, mem512/mem32bcst" do
      let(:operands) { [zmm_k_z(0), mem512_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :"mem512/mem32bcst"])
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

    context "when given operands of types ymm{k}{z}, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm])
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

    context "when given operands of types xmm, mem128/mem32bcst" do
      let(:operands) { [xmm(0), mem128_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem128/mem32bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem128/mem32bcst"])
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

    context "when given operands of types ymm, mem256/mem32bcst" do
      let(:operands) { [ymm(0), mem256_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:ymm, :"mem256/mem32bcst"])
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

    context "when given operands of types zmm, mem512/mem32bcst" do
      let(:operands) { [zmm(0), mem512_mem32_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:zmm, :"mem512/mem32bcst"])
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

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpabsd #{operands.map(&:type).join(', ')}")
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
    it "must return :vpabsd" do
      expect(subject.name).to eq(:vpabsd)
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

    context "when #operands contains operands of types xmm{k}{z}, mem128/mem32bcst" do
      let(:operands) { [xmm_k_z(0), mem128_mem32_bcst(1)] }

      let(:bin_file_name) { "vpabsd_xmm{k}{z}_mem128mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, mem256/mem32bcst" do
      let(:operands) { [ymm_k_z(0), mem256_mem32_bcst(1)] }

      let(:bin_file_name) { "vpabsd_ymm{k}{z}_mem256mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, mem512/mem32bcst" do
      let(:operands) { [zmm_k_z(0), mem512_mem32_bcst(1)] }

      let(:bin_file_name) { "vpabsd_zmm{k}{z}_mem512mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vpabsd_xmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1)] }

      let(:bin_file_name) { "vpabsd_ymm{k}{z}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1)] }

      let(:bin_file_name) { "vpabsd_zmm{k}{z}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem128/mem32bcst" do
      let(:operands) { [xmm(0), mem128_mem32_bcst(1)] }

      let(:bin_file_name) { "vpabsd_xmm_mem128mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      let(:bin_file_name) { "vpabsd_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem128" do
      let(:operands) { [xmm(0), mem128(1)] }

      let(:bin_file_name) { "vpabsd_xmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem256/mem32bcst" do
      let(:operands) { [ymm(0), mem256_mem32_bcst(1)] }

      let(:bin_file_name) { "vpabsd_ymm_mem256mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1)] }

      let(:bin_file_name) { "vpabsd_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem256" do
      let(:operands) { [ymm(0), mem256(1)] }

      let(:bin_file_name) { "vpabsd_ymm_mem256.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem512/mem32bcst" do
      let(:operands) { [zmm(0), mem512_mem32_bcst(1)] }

      let(:bin_file_name) { "vpabsd_zmm_mem512mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1)] }

      let(:bin_file_name) { "vpabsd_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
