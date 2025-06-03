#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcvttph2qq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VCVTTPH2QQ do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), mem32_mem16_bcst(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvttph2qq" do
      expect(subject.name).to be(:vcvttph2qq)
    end

    context "when given operands of types xmm{k}{z}, mem32/mem16bcst" do
      let(:operands) { [xmm_k_z(0), mem32_mem16_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :"mem32/mem16bcst"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :"mem32/mem16bcst"])
      end
    end

    context "when given operands of types ymm{k}{z}, mem64/mem16bcst" do
      let(:operands) { [ymm_k_z(0), mem64_mem16_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :"mem64/mem16bcst"]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :"mem64/mem16bcst"])
      end
    end

    context "when given operands of types zmm{k}{z}, mem128/mem16bcst" do
      let(:operands) { [zmm_k_z(0), mem128_mem16_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :"mem128/mem16bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :"mem128/mem16bcst"])
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

    context "when given operands of types ymm{k}{z}, xmm" do
      let(:operands) { [ymm_k_z(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :xmm])
      end
    end

    context "when given operands of types zmm{k}{z}, xmm" do
      let(:operands) { [zmm_k_z(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types xmm, mem32/mem16bcst" do
      let(:operands) { [xmm(0), mem32_mem16_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :"mem32/mem16bcst"]' do
        expect(subject.form).to eq([:xmm, :"mem32/mem16bcst"])
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

    context "when given operands of types ymm, mem64/mem16bcst" do
      let(:operands) { [ymm(0), mem64_mem16_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:ymm, :"mem64/mem16bcst"]' do
        expect(subject.form).to eq([:ymm, :"mem64/mem16bcst"])
      end
    end

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :xmm]" do
        expect(subject.form).to eq([:ymm, :xmm])
      end
    end

    context "when given operands of types zmm, mem128/mem16bcst" do
      let(:operands) { [zmm(0), mem128_mem16_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :"mem128/mem16bcst"]' do
        expect(subject.form).to eq([:zmm, :"mem128/mem16bcst"])
      end
    end

    context "when given operands of types zmm, xmm" do
      let(:operands) { [zmm(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :xmm]" do
        expect(subject.form).to eq([:zmm, :xmm])
      end
    end

    context "when given operands of types zmm{k}{z}, xmm, {sae}" do
      let(:operands) { [zmm_k_z(0), xmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :xmm, :"{sae}"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :xmm, :"{sae}"])
      end
    end

    context "when given operands of types zmm, xmm, {sae}" do
      let(:operands) { [zmm(0), xmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :xmm, :"{sae}"]' do
        expect(subject.form).to eq([:zmm, :xmm, :"{sae}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvttph2qq #{operands.map(&:type).join(', ')}")
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
    it "must return :vcvttph2qq" do
      expect(subject.name).to eq(:vcvttph2qq)
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

    context "when #operands contains operands of types xmm{k}{z}, mem32/mem16bcst" do
      let(:operands) { [xmm_k_z(0), mem32_mem16_bcst(1)] }

      let(:bin_file_name) { "vcvttph2qq_xmm{k}{z}_mem32mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, mem64/mem16bcst" do
      let(:operands) { [ymm_k_z(0), mem64_mem16_bcst(1)] }

      let(:bin_file_name) { "vcvttph2qq_ymm{k}{z}_mem64mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, mem128/mem16bcst" do
      let(:operands) { [zmm_k_z(0), mem128_mem16_bcst(1)] }

      let(:bin_file_name) { "vcvttph2qq_zmm{k}{z}_mem128mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vcvttph2qq_xmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, xmm" do
      let(:operands) { [ymm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vcvttph2qq_ymm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, xmm" do
      let(:operands) { [zmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vcvttph2qq_zmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem32/mem16bcst" do
      let(:operands) { [xmm(0), mem32_mem16_bcst(1)] }

      let(:bin_file_name) { "vcvttph2qq_xmm_mem32mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      let(:bin_file_name) { "vcvttph2qq_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem64/mem16bcst" do
      let(:operands) { [ymm(0), mem64_mem16_bcst(1)] }

      let(:bin_file_name) { "vcvttph2qq_ymm_mem64mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, xmm" do
      let(:operands) { [ymm(0), xmm(1)] }

      let(:bin_file_name) { "vcvttph2qq_ymm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem128/mem16bcst" do
      let(:operands) { [zmm(0), mem128_mem16_bcst(1)] }

      let(:bin_file_name) { "vcvttph2qq_zmm_mem128mem16bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, xmm" do
      let(:operands) { [zmm(0), xmm(1)] }

      let(:bin_file_name) { "vcvttph2qq_zmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, xmm, {sae}" do
      let(:operands) { [zmm_k_z(0), xmm(1), sae(2)] }

      let(:bin_file_name) { "vcvttph2qq_zmm{k}{z}_xmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, xmm, {sae}" do
      let(:operands) { [zmm(0), xmm(1), sae(2)] }

      let(:bin_file_name) { "vcvttph2qq_zmm_xmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
