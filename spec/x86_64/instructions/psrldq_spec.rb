#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/psrldq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::PSRLDQ do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), imm8(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :psrldq" do
      expect(subject.name).to be(:psrldq)
    end

    context "when given operands of types xmm, imm8" do
      let(:operands) { [xmm(0), imm8(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :imm8]" do
        expect(subject.form).to eq([:xmm, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: psrldq #{operands.map(&:type).join(', ')}")
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
    it "must return :psrldq" do
      expect(subject.name).to eq(:psrldq)
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

    context "when #operands contains operands of types xmm, imm8" do
      let(:operands) { [xmm(0), imm8(1)] }

      let(:bin_file_name) { "psrldq_xmm_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
