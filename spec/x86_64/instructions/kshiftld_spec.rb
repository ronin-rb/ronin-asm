#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/kshiftld'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::KSHIFTLD do
  include Helpers::X86_64::Operands

  let(:operands) { [k(0), k(1), imm8(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :kshiftld" do
      expect(subject.name).to be(:kshiftld)
    end

    context "when given operands of types k, k, imm8" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:k, :k, :imm8]" do
        expect(subject.form).to eq([:k, :k, :imm8])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: kshiftld #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types k, k, imm8" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      let(:bin_file_name) { "kshiftld_k_k_imm8.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
