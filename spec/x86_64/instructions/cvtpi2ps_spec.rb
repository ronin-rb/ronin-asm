#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/cvtpi2ps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::CVTPI2PS do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), mmx(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :cvtpi2ps" do
      expect(subject.name).to be(:cvtpi2ps)
    end

    context "when given operands of types xmm, mmx" do
      let(:operands) { [xmm(0), mmx(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mmx]" do
        expect(subject.form).to eq([:xmm, :mmx])
      end
    end

    context "when given operands of types xmm, mem64" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :mem64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: cvtpi2ps #{operands.map(&:type).join(', ')}")
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
    it "must return :cvtpi2ps" do
      expect(subject.name).to eq(:cvtpi2ps)
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

    context "when #operands contains operands of types xmm, mmx" do
      let(:operands) { [xmm(0), mmx(1)] }

      let(:bin_file_name) { "cvtpi2ps_xmm_mmx.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem64" do
      let(:operands) { [xmm(0), mem64(1)] }

      let(:bin_file_name) { "cvtpi2ps_xmm_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
