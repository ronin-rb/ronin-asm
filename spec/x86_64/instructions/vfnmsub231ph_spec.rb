#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vfnmsub231ph'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VFNMSUB231PH do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm_k_z(0), xmm(1), mem128_mem16_bcst(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfnmsub231ph" do
      expect(subject.name).to be(:vfnmsub231ph)
    end

    context "when given operands of types xmm{k}{z}, xmm, mem128/mem16bcst" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem128_mem16_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :"mem128/mem16bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :"mem128/mem16bcst"])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :xmm])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem256/mem16bcst" do
      let(:operands) { [ymm_k_z(0), ymm(1), mem256_mem16_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :"mem256/mem16bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :"mem256/mem16bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :ymm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :ymm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem512/mem16bcst" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem512_mem16_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :"mem512/mem16bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :"mem512/mem16bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :zmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :zmm])
      end
    end

    context "when given operands of types xmm, xmm, mem128/mem16bcst" do
      let(:operands) { [xmm(0), xmm(1), mem128_mem16_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :"mem128/mem16bcst"]' do
        expect(subject.form).to eq([:xmm, :xmm, :"mem128/mem16bcst"])
      end
    end

    context "when given operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm])
      end
    end

    context "when given operands of types ymm, ymm, mem256/mem16bcst" do
      let(:operands) { [ymm(0), ymm(1), mem256_mem16_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :ymm, :"mem256/mem16bcst"]' do
        expect(subject.form).to eq([:ymm, :ymm, :"mem256/mem16bcst"])
      end
    end

    context "when given operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types zmm, zmm, mem512/mem16bcst" do
      let(:operands) { [zmm(0), zmm(1), mem512_mem16_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :"mem512/mem16bcst"]' do
        expect(subject.form).to eq([:zmm, :zmm, :"mem512/mem16bcst"])
      end
    end

    context "when given operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :zmm]" do
        expect(subject.form).to eq([:zmm, :zmm, :zmm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, zmm, {er}" do
      let(:operands) { [zmm_k_z(0), zmm(1), zmm(2), er(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :zmm, :"{er}"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :zmm, :"{er}"])
      end
    end

    context "when given operands of types zmm, zmm, zmm, {er}" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :zmm, :"{er}"]' do
        expect(subject.form).to eq([:zmm, :zmm, :zmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfnmsub231ph #{operands.map(&:type).join(', ')}")
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
    it "must return :vfnmsub231ph" do
      expect(subject.name).to eq(:vfnmsub231ph)
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

    context "when #operands contains operands of types xmm{k}{z}, xmm, mem128/mem16bcst" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem128_mem16_bcst(2)] }

      let(:bin_file_name) { "vfnmsub231ph_xmm{k}{z}_xmm_mem128mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vfnmsub231ph_xmm{k}{z}_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, mem256/mem16bcst" do
      let(:operands) { [ymm_k_z(0), ymm(1), mem256_mem16_bcst(2)] }

      let(:bin_file_name) { "vfnmsub231ph_ymm{k}{z}_ymm_mem256mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1), ymm(2)] }

      let(:bin_file_name) { "vfnmsub231ph_ymm{k}{z}_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, mem512/mem16bcst" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem512_mem16_bcst(2)] }

      let(:bin_file_name) { "vfnmsub231ph_zmm{k}{z}_zmm_mem512mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1), zmm(2)] }

      let(:bin_file_name) { "vfnmsub231ph_zmm{k}{z}_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem128/mem16bcst" do
      let(:operands) { [xmm(0), xmm(1), mem128_mem16_bcst(2)] }

      let(:bin_file_name) { "vfnmsub231ph_xmm_xmm_mem128mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vfnmsub231ph_xmm_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, mem256/mem16bcst" do
      let(:operands) { [ymm(0), ymm(1), mem256_mem16_bcst(2)] }

      let(:bin_file_name) { "vfnmsub231ph_ymm_ymm_mem256mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2)] }

      let(:bin_file_name) { "vfnmsub231ph_ymm_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, mem512/mem16bcst" do
      let(:operands) { [zmm(0), zmm(1), mem512_mem16_bcst(2)] }

      let(:bin_file_name) { "vfnmsub231ph_zmm_zmm_mem512mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      let(:bin_file_name) { "vfnmsub231ph_zmm_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, zmm, {er}" do
      let(:operands) { [zmm_k_z(0), zmm(1), zmm(2), er(3)] }

      let(:bin_file_name) { "vfnmsub231ph_zmm{k}{z}_zmm_zmm_{er}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, zmm, {er}" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      let(:bin_file_name) { "vfnmsub231ph_zmm_zmm_zmm_{er}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
