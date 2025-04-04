#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vpsrldq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VPSRLDQ do
  include Helpers::X86::Operands

  let(:operands) { [xmm(0), xmm(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpsrldq" do
      expect(subject.name).to be(:vpsrldq)
    end

    context "when given operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :xmm, :imm8])
      end
    end

    context "when given operands of types xmm, mem128, imm8" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem128, :imm8]" do
        expect(subject.form).to eq([:xmm, :mem128, :imm8])
      end
    end

    context "when given operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :imm8]" do
        expect(subject.form).to eq([:ymm, :ymm, :imm8])
      end
    end

    context "when given operands of types ymm, mem256, imm8" do
      let(:operands) { [ymm(0), mem256(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem256, :imm8]" do
        expect(subject.form).to eq([:ymm, :mem256, :imm8])
      end
    end

    context "when given operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :imm8]" do
        expect(subject.form).to eq([:zmm, :zmm, :imm8])
      end
    end

    context "when given operands of types zmm, mem512, imm8" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem512, :imm8]" do
        expect(subject.form).to eq([:zmm, :mem512, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpsrldq #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm, xmm, imm8" do
      let(:operands) { [xmm(0), xmm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrldq_xmm_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem128, imm8" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      let(:bin_file_name) { "vpsrldq_xmm_mem128_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, imm8" do
      let(:operands) { [ymm(0), ymm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrldq_ymm_ymm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem256, imm8" do
      let(:operands) { [ymm(0), mem256(1), imm8(2)] }

      let(:bin_file_name) { "vpsrldq_ymm_mem256_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, imm8" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      let(:bin_file_name) { "vpsrldq_zmm_zmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem512, imm8" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      let(:bin_file_name) { "vpsrldq_zmm_mem512_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
