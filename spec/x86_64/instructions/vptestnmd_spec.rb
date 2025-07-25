#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vptestnmd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPTESTNMD do
  include Helpers::X86_64::Operands

  let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vptestnmd" do
      expect(subject.name).to be(:vptestnmd)
    end

    context "when given operands of types k{k}, xmm, mem128/mem32bcst" do
      let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :"mem128/mem32bcst"]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :"mem128/mem32bcst"])
      end
    end

    context "when given operands of types k, xmm, mem128/mem32bcst" do
      let(:operands) { [k(0), xmm(1), mem128_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :xmm, :"mem128/mem32bcst"]' do
        expect(subject.form).to eq([:k, :xmm, :"mem128/mem32bcst"])
      end
    end

    context "when given operands of types k{k}, xmm, xmm" do
      let(:operands) { [k_k(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm])
      end
    end

    context "when given operands of types k, xmm, xmm" do
      let(:operands) { [k(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :xmm]" do
        expect(subject.form).to eq([:k, :xmm, :xmm])
      end
    end

    context "when given operands of types k{k}, ymm, mem256/mem32bcst" do
      let(:operands) { [k_k(0), ymm(1), mem256_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :"mem256/mem32bcst"])
      end
    end

    context "when given operands of types k, ymm, mem256/mem32bcst" do
      let(:operands) { [k(0), ymm(1), mem256_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :ymm, :"mem256/mem32bcst"]' do
        expect(subject.form).to eq([:k, :ymm, :"mem256/mem32bcst"])
      end
    end

    context "when given operands of types k{k}, ymm, ymm" do
      let(:operands) { [k_k(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :ymm]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :ymm])
      end
    end

    context "when given operands of types k, ymm, ymm" do
      let(:operands) { [k(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :ymm]" do
        expect(subject.form).to eq([:k, :ymm, :ymm])
      end
    end

    context "when given operands of types k{k}, zmm, mem512/mem32bcst" do
      let(:operands) { [k_k(0), zmm(1), mem512_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types k, zmm, mem512/mem32bcst" do
      let(:operands) { [k(0), zmm(1), mem512_mem32_bcst(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :zmm, :"mem512/mem32bcst"]' do
        expect(subject.form).to eq([:k, :zmm, :"mem512/mem32bcst"])
      end
    end

    context "when given operands of types k{k}, zmm, zmm" do
      let(:operands) { [k_k(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm])
      end
    end

    context "when given operands of types k, zmm, zmm" do
      let(:operands) { [k(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :zmm]" do
        expect(subject.form).to eq([:k, :zmm, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vptestnmd #{operands.map(&:type).join(', ')}")
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
    it "must return :vptestnmd" do
      expect(subject.name).to eq(:vptestnmd)
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

    context "when #operands contains operands of types k{k}, xmm, mem128/mem32bcst" do
      let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2)] }

      let(:bin_file_name) { "vptestnmd_k{k}_xmm_mem128mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, mem128/mem32bcst" do
      let(:operands) { [k(0), xmm(1), mem128_mem32_bcst(2)] }

      let(:bin_file_name) { "vptestnmd_k_xmm_mem128mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, xmm, xmm" do
      let(:operands) { [k_k(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vptestnmd_k{k}_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, xmm" do
      let(:operands) { [k(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vptestnmd_k_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, ymm, mem256/mem32bcst" do
      let(:operands) { [k_k(0), ymm(1), mem256_mem32_bcst(2)] }

      let(:bin_file_name) { "vptestnmd_k{k}_ymm_mem256mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, ymm, mem256/mem32bcst" do
      let(:operands) { [k(0), ymm(1), mem256_mem32_bcst(2)] }

      let(:bin_file_name) { "vptestnmd_k_ymm_mem256mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, ymm, ymm" do
      let(:operands) { [k_k(0), ymm(1), ymm(2)] }

      let(:bin_file_name) { "vptestnmd_k{k}_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, ymm, ymm" do
      let(:operands) { [k(0), ymm(1), ymm(2)] }

      let(:bin_file_name) { "vptestnmd_k_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, zmm, mem512/mem32bcst" do
      let(:operands) { [k_k(0), zmm(1), mem512_mem32_bcst(2)] }

      let(:bin_file_name) { "vptestnmd_k{k}_zmm_mem512mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, zmm, mem512/mem32bcst" do
      let(:operands) { [k(0), zmm(1), mem512_mem32_bcst(2)] }

      let(:bin_file_name) { "vptestnmd_k_zmm_mem512mem32bcst.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, zmm, zmm" do
      let(:operands) { [k_k(0), zmm(1), zmm(2)] }

      let(:bin_file_name) { "vptestnmd_k{k}_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, zmm, zmm" do
      let(:operands) { [k(0), zmm(1), zmm(2)] }

      let(:bin_file_name) { "vptestnmd_k_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
