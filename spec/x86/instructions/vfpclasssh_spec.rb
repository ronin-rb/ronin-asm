#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vfpclasssh'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VFPCLASSSH do
  include Helpers::X86::Operands

  let(:operands) { [k_k(0), xmm(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vfpclasssh" do
      expect(subject.name).to be(:vfpclasssh)
    end

    context "when given operands of types k{k}, xmm, imm8" do
      let(:operands) { [k_k(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :xmm, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :xmm, :imm8])
      end
    end

    context "when given operands of types k, xmm, imm8" do
      let(:operands) { [k(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm, :imm8]" do
        expect(subject.form).to eq([:k, :xmm, :imm8])
      end
    end

    context "when given operands of types k{k}, mem16, imm8" do
      let(:operands) { [k_k(0), mem16(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"k{k}", :mem16, :imm8]' do
        expect(subject.form).to eq([:"k{k}", :mem16, :imm8])
      end
    end

    context "when given operands of types k, mem16, imm8" do
      let(:operands) { [k(0), mem16(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :mem16, :imm8]" do
        expect(subject.form).to eq([:k, :mem16, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vfpclasssh #{operands.map(&:type).join(', ')}")
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
    it "must return :vfpclasssh" do
      expect(subject.name).to eq(:vfpclasssh)
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

    context "when #operands contains operands of types k{k}, xmm, imm8" do
      let(:operands) { [k_k(0), xmm(1), imm8(2)] }

      let(:bin_file_name) { "vfpclasssh_k{k}_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, xmm, imm8" do
      let(:operands) { [k(0), xmm(1), imm8(2)] }

      let(:bin_file_name) { "vfpclasssh_k_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k{k}, mem16, imm8" do
      let(:operands) { [k_k(0), mem16(1), imm8(2)] }

      let(:bin_file_name) { "vfpclasssh_k{k}_mem16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, mem16, imm8" do
      let(:operands) { [k(0), mem16(1), imm8(2)] }

      let(:bin_file_name) { "vfpclasssh_k_mem16_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
