#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vbcstnebf162ps'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VBCSTNEBF162PS do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), mem16(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vbcstnebf162ps" do
      expect(subject.name).to be(:vbcstnebf162ps)
    end

    context "when given operands of types xmm, mem16" do
      let(:operands) { [xmm(0), mem16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem16]" do
        expect(subject.form).to eq([:xmm, :mem16])
      end
    end

    context "when given operands of types ymm, mem16" do
      let(:operands) { [ymm(0), mem16(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem16]" do
        expect(subject.form).to eq([:ymm, :mem16])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vbcstnebf162ps #{operands.map(&:type).join(', ')}")
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
    it "must return :vbcstnebf162ps" do
      expect(subject.name).to eq(:vbcstnebf162ps)
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

    context "when #operands contains operands of types xmm, mem16" do
      let(:operands) { [xmm(0), mem16(1)] }

      let(:bin_file_name) { "vbcstnebf162ps_xmm_mem16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem16" do
      let(:operands) { [ymm(0), mem16(1)] }

      let(:bin_file_name) { "vbcstnebf162ps_ymm_mem16.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
