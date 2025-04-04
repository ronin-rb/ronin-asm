#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpsrlq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPSRLQ do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm_k_z(0), mem128_mem64_bcst(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpsrlq" do
      expect(subject.name).to be(:vpsrlq)
    end

    context "when given operands of types xmm{k}{z}, mem128/mem64bcst, imm8" do
      let(:operands) { [xmm_k_z(0), mem128_mem64_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem128/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem128/mem64bcst", :imm8])
      end
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

    context "when given operands of types xmm{k}{z}, xmm, imm8" do
      let(:operands) { [xmm_k_z(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :imm8]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :imm8])
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

    context "when given operands of types xmm{k}{z}, xmm, mem128" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :mem128]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :mem128])
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

    context "when given operands of types ymm{k}{z}, ymm, xmm" do
      let(:operands) { [ymm_k_z(0), ymm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :xmm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :xmm])
      end
    end

    context "when given operands of types ymm{k}{z}, ymm, mem128" do
      let(:operands) { [ymm_k_z(0), ymm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :ymm, :mem128]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :ymm, :mem128])
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

    context "when given operands of types zmm{k}{z}, zmm, xmm" do
      let(:operands) { [zmm_k_z(0), zmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :xmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :xmm])
      end
    end

    context "when given operands of types zmm{k}{z}, zmm, mem128" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :mem128]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :mem128])
      end
    end

    context "when given operands of types xmm, mem128/mem64bcst, imm8" do
      let(:operands) { [xmm(0), mem128_mem64_bcst(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem128/mem64bcst", :imm8]' do
        expect(subject.form).to eq([:xmm, :"mem128/mem64bcst", :imm8])
      end
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :imm8])
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

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128])
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

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, xmm" do
      let(:operands) { [ymm(0), ymm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :xmm]" do
        expect(subject.form).to eq([:ymm, :ymm, :xmm])
      end
    end

    context "when given operands of types ymm, ymm, mem128" do
      let(:operands) { [ymm(0), ymm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem128]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem128])
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

    context "when given operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, xmm" do
      let(:operands) { [zmm(0), zmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :xmm]" do
        expect(subject.form).to eq([:zmm, :zmm, :xmm])
      end
    end

    context "when given operands of types zmm, zmm, mem128" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :mem128]" do
        expect(subject.form).to eq([:zmm, :zmm, :mem128])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpsrlq #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm{k}{z}, mem128/mem64bcst, imm8" do
      let(:operands) { [xmm_k_z(0), mem128_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_xmm{k}{z}_mem128mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm_k_z(0), mem256_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_ymm{k}{z}_mem256mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm_k_z(0), mem512_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_zmm{k}{z}_mem512mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, imm8" do
      let(:operands) { [xmm_k_z(0), xmm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_xmm{k}{z}_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vpsrlq_xmm{k}{z}_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, mem128" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem128(2)] }

      let(:bin_file_name) { "vpsrlq_xmm{k}{z}_xmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, imm8" do
      let(:operands) { [ymm_k_z(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_ymm{k}{z}_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, xmm" do
      let(:operands) { [ymm_k_z(0), ymm(1), xmm(2)] }

      let(:bin_file_name) { "vpsrlq_ymm{k}{z}_ymm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, ymm, mem128" do
      let(:operands) { [ymm_k_z(0), ymm(1), mem128(2)] }

      let(:bin_file_name) { "vpsrlq_ymm{k}{z}_ymm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, imm8" do
      let(:operands) { [zmm_k_z(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_zmm{k}{z}_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, xmm" do
      let(:operands) { [zmm_k_z(0), zmm(1), xmm(2)] }

      let(:bin_file_name) { "vpsrlq_zmm{k}{z}_zmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, mem128" do
      let(:operands) { [zmm_k_z(0), zmm(1), mem128(2)] }

      let(:bin_file_name) { "vpsrlq_zmm{k}{z}_zmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem128/mem64bcst, imm8" do
      let(:operands) { [xmm(0), mem128_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_xmm_mem128mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_xmm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vpsrlq_xmm_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      let(:bin_file_name) { "vpsrlq_xmm_xmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem256/mem64bcst, imm8" do
      let(:operands) { [ymm(0), mem256_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_ymm_mem256mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_ymm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, xmm" do
      let(:operands) { [ymm(0), ymm(1), xmm(2)] }

      let(:bin_file_name) { "vpsrlq_ymm_ymm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, mem128" do
      let(:operands) { [ymm(0), ymm(1), mem128(2)] }

      let(:bin_file_name) { "vpsrlq_ymm_ymm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem512/mem64bcst, imm8" do
      let(:operands) { [zmm(0), mem512_mem64_bcst(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_zmm_mem512mem64bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrlq_zmm_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, xmm" do
      let(:operands) { [zmm(0), zmm(1), xmm(2)] }

      let(:bin_file_name) { "vpsrlq_zmm_zmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, mem128" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      let(:bin_file_name) { "vpsrlq_zmm_zmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
