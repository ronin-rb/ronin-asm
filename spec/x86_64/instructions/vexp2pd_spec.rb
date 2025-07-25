#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vexp2pd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VEXP2PD do
  include Helpers::X86_64::Operands

  let(:operands) { [zmm_k_z(0), mem512_mem64_bcst(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vexp2pd" do
      expect(subject.name).to be(:vexp2pd)
    end

    context "when given operands of types zmm{k}{z}, mem512/mem64bcst" do
      let(:operands) { [zmm_k_z(0), mem512_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :"mem512/mem64bcst"])
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

    context "when given operands of types zmm, mem512/mem64bcst" do
      let(:operands) { [zmm(0), mem512_mem64_bcst(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :"mem512/mem64bcst"]' do
        expect(subject.form).to eq([:zmm, :"mem512/mem64bcst"])
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

    context "when given operands of types zmm{k}{z}, zmm, {sae}" do
      let(:operands) { [zmm_k_z(0), zmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :zmm, :"{sae}"]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :zmm, :"{sae}"])
      end
    end

    context "when given operands of types zmm, zmm, {sae}" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:zmm, :zmm, :"{sae}"]' do
        expect(subject.form).to eq([:zmm, :zmm, :"{sae}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vexp2pd #{operands.map(&:type).join(', ')}")
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
    it "must return :vexp2pd" do
      expect(subject.name).to eq(:vexp2pd)
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

    context "when #operands contains operands of types zmm{k}{z}, mem512/mem64bcst" do
      let(:operands) { [zmm_k_z(0), mem512_mem64_bcst(1)] }

      let(:bin_file_name) { "vexp2pd_zmm{k}{z}_mem512mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm" do
      let(:operands) { [zmm_k_z(0), zmm(1)] }

      let(:bin_file_name) { "vexp2pd_zmm{k}{z}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem512/mem64bcst" do
      let(:operands) { [zmm(0), mem512_mem64_bcst(1)] }

      let(:bin_file_name) { "vexp2pd_zmm_mem512mem64bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1)] }

      let(:bin_file_name) { "vexp2pd_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, zmm, {sae}" do
      let(:operands) { [zmm_k_z(0), zmm(1), sae(2)] }

      let(:bin_file_name) { "vexp2pd_zmm{k}{z}_zmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, {sae}" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      let(:bin_file_name) { "vexp2pd_zmm_zmm_{sae}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
