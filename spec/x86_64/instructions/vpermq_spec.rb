#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpermq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPERMQ do
  include Helpers::X86_64::Operands

  let(:operands) { [ymm_k_z(0), mem256_mem64_bcst(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpermq" do
      expect(subject.name).to be(:vpermq)
    end

    context "when given operands of types ymm{k}{z}, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm_k_z(0), mem256_mem64_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :"mem256/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :"mem256/mem64bcst", :imm8])
      end
    end

    context "when given operands of types zmm{k}{z}, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm_k_z(0), mem512_mem64_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :"mem512/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :"mem512/mem64bcst", :imm8])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem256/mem64bcst" do
      let(:operands) { [ymm_k_z(0), ymm(1), mem256_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, imm8" do
      let(:operands) { [ymm_k_z(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :imm8]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :imm8])
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

    context "when given operands of types zmm{k}{z}, zmm, mem512/mem64bcst" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem512_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :"mem512/mem64bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :imm8]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :imm8])
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

    context "when given operands of types ymm, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm(0), mem256_mem64_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :"mem256/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:ymm, :"mem256/mem64bcst", :imm8])
      end
    end

    context "when given operands of types ymm, ymm, mem256/mem64bcst" do
      let(:operands) { [ymm(0), ymm(1), mem256_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :ymm, :"mem256/mem64bcst"]' do
        expect(subject.form).to eq([:ymm, :ymm, :"mem256/mem64bcst"])
      end
    end

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :imm8])
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

    context "when given operands of types ymm, mem256, imm8" do
      let(:operands) { [ymm(0), mem256(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem256, :imm8]" do
        expect(subject.form).to eq([:ymm, :mem256, :imm8])
      end
    end

    context "when given operands of types zmm, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm(0), mem512_mem64_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :"mem512/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:zmm, :"mem512/mem64bcst", :imm8])
      end
    end

    context "when given operands of types zmm, zmm, mem512/mem64bcst" do
      let(:operands) { [zmm(0), zmm(1), mem512_mem64_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:zmm, :zmm, :"mem512/mem64bcst"])
      end
    end

    context "when given operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :imm8])
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

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpermq #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types ymm{k}{z}, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm_k_z(0), mem256_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_ymm{k}{z}_mem256mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm_k_z(0), mem512_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_zmm{k}{z}_mem512mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, mem256/mem64bcst" do
      let(:operands) { [ymm_k_z(0), ymm(1), mem256_mem64_bcst(2)] }

      let(:bin_file_name) { "vpermq_ymm{k}{z}_ymm_mem256mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, imm8" do
      let(:operands) { [ymm_k_z(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_ymm{k}{z}_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, ymm" do
      let(:operands) { [ymm_k_z(0), ymm(1), ymm(2)] }

      let(:bin_file_name) { "vpermq_ymm{k}{z}_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, mem512/mem64bcst" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem512_mem64_bcst(2)] }

      let(:bin_file_name) { "vpermq_zmm{k}{z}_zmm_mem512mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_zmm{k}{z}_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1), zmm(2)] }

      let(:bin_file_name) { "vpermq_zmm{k}{z}_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm(0), mem256_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_ymm_mem256mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, mem256/mem64bcst" do
      let(:operands) { [ymm(0), ymm(1), mem256_mem64_bcst(2)] }

      let(:bin_file_name) { "vpermq_ymm_ymm_mem256mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_ymm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2)] }

      let(:bin_file_name) { "vpermq_ymm_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem256, imm8" do
      let(:operands) { [ymm(0), mem256(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_ymm_mem256_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm(0), mem512_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_zmm_mem512mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, mem512/mem64bcst" do
      let(:operands) { [zmm(0), zmm(1), mem512_mem64_bcst(2)] }

      let(:bin_file_name) { "vpermq_zmm_zmm_mem512mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vpermq_zmm_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      let(:bin_file_name) { "vpermq_zmm_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
