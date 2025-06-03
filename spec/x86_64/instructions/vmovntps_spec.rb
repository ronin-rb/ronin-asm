#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vmovntps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VMOVNTPS do
  include Helpers::X86_64::Operands

  let(:operands) { [mem128(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vmovntps" do
      expect(subject.name).to be(:vmovntps)
    end

    context "when given operands of types mem128, xmm" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem128, :xmm]" do
        expect(subject.form).to eq([:mem128, :xmm])
      end
    end

    context "when given operands of types mem256, ymm" do
      let(:operands) { [mem256(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem256, :ymm]" do
        expect(subject.form).to eq([:mem256, :ymm])
      end
    end

    context "when given operands of types mem512, zmm" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:mem512, :zmm]" do
        expect(subject.form).to eq([:mem512, :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vmovntps #{operands.map(&:type).join(', ')}")
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
    it "must return :vmovntps" do
      expect(subject.name).to eq(:vmovntps)
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

    context "when #operands contains operands of types mem128, xmm" do
      let(:operands) { [mem128(0), xmm(1)] }

      let(:bin_file_name) { "vmovntps_mem128_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem256, ymm" do
      let(:operands) { [mem256(0), ymm(1)] }

      let(:bin_file_name) { "vmovntps_mem256_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types mem512, zmm" do
      let(:operands) { [mem512(0), zmm(1)] }

      let(:bin_file_name) { "vmovntps_mem512_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
