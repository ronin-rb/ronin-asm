#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vrsqrt28sd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VRSQRT28SD do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vrsqrt28sd" do
      expect(subject.name).to be(:vrsqrt28sd)
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

    context "when given operands of types xmm{k}{z}, xmm, mem64" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem64(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :mem64]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :mem64])
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

    context "when given operands of types xmm, xmm, mem64" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem64])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm, xmm, {sae}" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2), sae(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :xmm, :"{sae}"]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :xmm, :"{sae}"])
      end
    end

    context "when given operands of types xmm, xmm, xmm, {sae}" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :xmm, :"{sae}"]' do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :"{sae}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vrsqrt28sd #{operands.map(&:type).join(', ')}")
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
    it "must return :vrsqrt28sd" do
      expect(subject.name).to eq(:vrsqrt28sd)
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

    context "when #operands contains operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vrsqrt28sd_xmm{k}{z}_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, mem64" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem64(2)] }

      let(:bin_file_name) { "vrsqrt28sd_xmm{k}{z}_xmm_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vrsqrt28sd_xmm_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem64" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      let(:bin_file_name) { "vrsqrt28sd_xmm_xmm_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, xmm, {sae}" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2), sae(3)] }

      let(:bin_file_name) { "vrsqrt28sd_xmm{k}{z}_xmm_xmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, xmm, {sae}" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      let(:bin_file_name) { "vrsqrt28sd_xmm_xmm_xmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
