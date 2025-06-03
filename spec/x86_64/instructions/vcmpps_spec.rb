#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcmpps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VCMPPS do
  include Helpers::X86_64::Operands

  let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcmpps" do
      expect(subject.name).to be(:vcmpps)
    end

    context "when given operands of types k{k}, xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :"mem128/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :"mem128/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k, xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :xmm, :"mem128/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:k, :xmm, :"mem128/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, xmm, xmm, imm8" do
      let(:operands) { [k_k(0), xmm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k, xmm, xmm, imm8" do
      let(:operands) { [k(0), xmm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types k{k}, ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [k_k(0), ymm(1), mem256_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :"mem256/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :"mem256/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k, ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [k(0), ymm(1), mem256_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :ymm, :"mem256/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:k, :ymm, :"mem256/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, ymm, ymm, imm8" do
      let(:operands) { [k_k(0), ymm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :ymm, :ymm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types k, ymm, ymm, imm8" do
      let(:operands) { [k(0), ymm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:k, :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [k_k(0), zmm(1), mem512_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :"mem512/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :"mem512/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k, zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [k(0), zmm(1), mem512_mem32_bcst(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :zmm, :"mem512/mem32bcst", :imm8]' do
        expect(subject.form).to eq([:k, :zmm, :"mem512/mem32bcst", :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, zmm, imm8" do
      let(:operands) { [k_k(0), zmm(1), zmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types k, zmm, zmm, imm8" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:k, :zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, xmm, mem128, imm8" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), ymm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, mem256, imm8" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256, :imm8])
      end
    end

    context "when given operands of types k{k}, zmm, zmm, {sae}, imm8" do
      let(:operands) { [k_k(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :zmm, :zmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :zmm, :zmm, :"{sae}", :imm8])
      end
    end

    context "when given operands of types k, zmm, zmm, {sae}, imm8" do
      let(:operands) { [k(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :zmm, :zmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:k, :zmm, :zmm, :"{sae}", :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcmpps #{operands.map(&:type).join(', ')}")
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
    it "must return :vcmpps" do
      expect(subject.name).to eq(:vcmpps)
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

    context "when #operands contains operands of types k{k}, xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [k_k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k{k}_xmm_mem128mem32bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, mem128/mem32bcst, imm8" do
      let(:operands) { [k(0), xmm(1), mem128_mem32_bcst(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k_xmm_mem128mem32bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, xmm, xmm, imm8" do
      let(:operands) { [k_k(0), xmm(1), xmm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k{k}_xmm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, xmm, imm8" do
      let(:operands) { [k(0), xmm(1), xmm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k_xmm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [k_k(0), ymm(1), mem256_mem32_bcst(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k{k}_ymm_mem256mem32bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, ymm, mem256/mem32bcst, imm8" do
      let(:operands) { [k(0), ymm(1), mem256_mem32_bcst(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k_ymm_mem256mem32bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, ymm, ymm, imm8" do
      let(:operands) { [k_k(0), ymm(1), ymm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k{k}_ymm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, ymm, ymm, imm8" do
      let(:operands) { [k(0), ymm(1), ymm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k_ymm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [k_k(0), zmm(1), mem512_mem32_bcst(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k{k}_zmm_mem512mem32bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, zmm, mem512/mem32bcst, imm8" do
      let(:operands) { [k(0), zmm(1), mem512_mem32_bcst(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k_zmm_mem512mem32bcst_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, zmm, zmm, imm8" do
      let(:operands) { [k_k(0), zmm(1), zmm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k{k}_zmm_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, zmm, zmm, imm8" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_k_zmm_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_xmm_xmm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem128, imm8" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_xmm_xmm_mem128_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), ymm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_ymm_ymm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, mem256, imm8" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      let(:bin_file_name) { "vcmpps_ymm_ymm_mem256_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, zmm, zmm, {sae}, imm8" do
      let(:operands) { [k_k(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      let(:bin_file_name) { "vcmpps_k{k}_zmm_zmm_{sae}_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, zmm, zmm, {sae}, imm8" do
      let(:operands) { [k(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      let(:bin_file_name) { "vcmpps_k_zmm_zmm_{sae}_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
