#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vminss'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VMINSS do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vminss" do
      expect(subject.name).to be(:vminss)
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

    context "when given operands of types xmm{k}{z}, xmm, mem32" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem32(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm, :mem32]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm, :mem32])
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

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem32])
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
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vminss #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm{k}{z}, xmm, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vminss_xmm{k}{z}_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, mem32" do
      let(:operands) { [xmm_k_z(0), xmm(1), mem32(2)] }

      let(:bin_file_name) { "vminss_xmm{k}{z}_xmm_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vminss_xmm_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      let(:bin_file_name) { "vminss_xmm_xmm_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm, xmm, {sae}" do
      let(:operands) { [xmm_k_z(0), xmm(1), xmm(2), sae(3)] }

      let(:bin_file_name) { "vminss_xmm{k}{z}_xmm_xmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, xmm, {sae}" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      let(:bin_file_name) { "vminss_xmm_xmm_xmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
