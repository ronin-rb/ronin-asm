#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vinsertf128'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VINSERTF128 do
  include Helpers::X86_64::Operands

  let(:operands) { [ymm(0), ymm(1), xmm(2), imm8(3)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vinsertf128" do
      expect(subject.name).to be(:vinsertf128)
    end

    context "when given operands of types ymm, ymm, xmm, imm8" do
      let(:operands) { [ymm(0), ymm(1), xmm(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :xmm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :xmm, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, mem128, imm8" do
      let(:operands) { [ymm(0), ymm(1), mem128(2), imm8(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem128, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem128, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vinsertf128 #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types ymm, ymm, xmm, imm8" do
      let(:operands) { [ymm(0), ymm(1), xmm(2), imm8(3)] }

      let(:bin_file_name) { "vinsertf128_ymm_ymm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, mem128, imm8" do
      let(:operands) { [ymm(0), ymm(1), mem128(2), imm8(3)] }

      let(:bin_file_name) { "vinsertf128_ymm_ymm_mem128_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
