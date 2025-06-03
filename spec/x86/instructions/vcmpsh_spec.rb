#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vcmpsh'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VCMPSH do
  include Helpers::X86::Operands

  let(:operands) { [k_k(0), xmm(1), xmm(2), imm8(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcmpsh" do
      expect(subject.name).to be(:vcmpsh)
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

    context "when given operands of types k{k}, xmm, mem16, imm8" do
      let(:operands) { [k_k(0), xmm(1), mem16(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :mem16, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :mem16, :imm8])
      end
    end

    context "when given operands of types k, xmm, mem16, imm8" do
      let(:operands) { [k(0), xmm(1), mem16(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :mem16, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :mem16, :imm8])
      end
    end

    context "when given operands of types k{k}, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k_k(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :xmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :xmm, :"{sae}", :imm8])
      end
    end

    context "when given operands of types k, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:k, :xmm, :xmm, :"{sae}", :imm8]' do
        expect(subject.form).to eq([:k, :xmm, :xmm, :"{sae}", :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcmpsh #{operands.map(&:type).join(', ')}")
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
    it "must return :vcmpsh" do
      expect(subject.name).to eq(:vcmpsh)
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

    context "when #operands contains operands of types k{k}, xmm, xmm, imm8" do
      let(:operands) { [k_k(0), xmm(1), xmm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpsh_k{k}_xmm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, xmm, imm8" do
      let(:operands) { [k(0), xmm(1), xmm(2), imm8(3)] }

      let(:bin_file_name) { "vcmpsh_k_xmm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, xmm, mem16, imm8" do
      let(:operands) { [k_k(0), xmm(1), mem16(2), imm8(3)] }

      let(:bin_file_name) { "vcmpsh_k{k}_xmm_mem16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, mem16, imm8" do
      let(:operands) { [k(0), xmm(1), mem16(2), imm8(3)] }

      let(:bin_file_name) { "vcmpsh_k_xmm_mem16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k_k(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      let(:bin_file_name) { "vcmpsh_k{k}_xmm_xmm_{sae}_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, xmm, {sae}, imm8" do
      let(:operands) { [k(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      let(:bin_file_name) { "vcmpsh_k_xmm_xmm_{sae}_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
