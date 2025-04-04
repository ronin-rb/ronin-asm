#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpmovq2m'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VPMOVQ2M do
  include Helpers::X86::Operands

  let(:operands) { [k(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovq2m" do
      expect(subject.name).to be(:vpmovq2m)
    end

    context "when given operands of types k, xmm" do
      let(:operands) { [k(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :xmm]" do
        expect(subject.form).to eq([:k, :xmm])
      end
    end

    context "when given operands of types k, ymm" do
      let(:operands) { [k(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :ymm]" do
        expect(subject.form).to eq([:k, :ymm])
      end
    end

    context "when given operands of types k, zmm" do
      let(:operands) { [k(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :zmm]" do
        expect(subject.form).to eq([:k, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovq2m #{operands.map(&:type).join(', ')}")
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
    require 'ronin/asm/x86/encoder'
    require 'stringio'

    let(:output)  { StringIO.new(String.new(encoding: Encoding::ASCII_8BIT)) }
    let(:encoder) { Ronin::ASM::X86::Encoder.new(output) }

    let(:fixtures_dir)      { File.join(__dir__,'fixtures') }
    let(:bin_file_path)     { File.join(fixtures_dir,bin_file_name) }
    let(:expected_encoding) { File.binread(bin_file_path) }

    context "when #operands contains operands of types k, xmm" do
      let(:operands) { [k(0), xmm(1)] }

      let(:bin_file_name) { "vpmovq2m_k_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, ymm" do
      let(:operands) { [k(0), ymm(1)] }

      let(:bin_file_name) { "vpmovq2m_k_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types k, zmm" do
      let(:operands) { [k(0), zmm(1)] }

      let(:bin_file_name) { "vpmovq2m_k_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
