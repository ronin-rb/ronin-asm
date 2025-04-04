#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpmovm2b'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VPMOVM2B do
  include Helpers::X86::Operands

  let(:operands) { [xmm(0), k(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpmovm2b" do
      expect(subject.name).to be(:vpmovm2b)
    end

    context "when given operands of types xmm, k" do
      let(:operands) { [xmm(0), k(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :k]" do
        expect(subject.form).to eq([:xmm, :k])
      end
    end

    context "when given operands of types ymm, k" do
      let(:operands) { [ymm(0), k(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :k]" do
        expect(subject.form).to eq([:ymm, :k])
      end
    end

    context "when given operands of types zmm, k" do
      let(:operands) { [zmm(0), k(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :k]" do
        expect(subject.form).to eq([:zmm, :k])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpmovm2b #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm, k" do
      let(:operands) { [xmm(0), k(1)] }

      let(:bin_file_name) { "vpmovm2b_xmm_k.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, k" do
      let(:operands) { [ymm(0), k(1)] }

      let(:bin_file_name) { "vpmovm2b_ymm_k.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, k" do
      let(:operands) { [zmm(0), k(1)] }

      let(:bin_file_name) { "vpmovm2b_zmm_k.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
