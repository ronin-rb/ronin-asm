#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvtss2usi'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VCVTSS2USI do
  include Helpers::X86_64::Operands

  let(:operands) { [reg32(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtss2usi" do
      expect(subject.name).to be(:vcvtss2usi)
    end

    context "when given operands of types reg32, xmm" do
      let(:operands) { [reg32(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :xmm]" do
        expect(subject.form).to eq([:reg32, :xmm])
      end
    end

    context "when given operands of types reg32, mem32" do
      let(:operands) { [reg32(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg32, :mem32]" do
        expect(subject.form).to eq([:reg32, :mem32])
      end
    end

    context "when given operands of types reg64, xmm" do
      let(:operands) { [reg64(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :xmm]" do
        expect(subject.form).to eq([:reg64, :xmm])
      end
    end

    context "when given operands of types reg64, mem32" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:reg64, :mem32]" do
        expect(subject.form).to eq([:reg64, :mem32])
      end
    end

    context "when given operands of types reg32, xmm, {er}" do
      let(:operands) { [reg32(0), xmm(1), er(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg32, :xmm, :"{er}"]' do
        expect(subject.form).to eq([:reg32, :xmm, :"{er}"])
      end
    end

    context "when given operands of types reg64, xmm, {er}" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:reg64, :xmm, :"{er}"]' do
        expect(subject.form).to eq([:reg64, :xmm, :"{er}"])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtss2usi #{operands.map(&:type).join(', ')}")
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
    it "must return :vcvtss2usi" do
      expect(subject.name).to eq(:vcvtss2usi)
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

    context "when #operands contains operands of types reg32, xmm" do
      let(:operands) { [reg32(0), xmm(1)] }

      let(:bin_file_name) { "vcvtss2usi_reg32_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, mem32" do
      let(:operands) { [reg32(0), mem32(1)] }

      let(:bin_file_name) { "vcvtss2usi_reg32_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, xmm" do
      let(:operands) { [reg64(0), xmm(1)] }

      let(:bin_file_name) { "vcvtss2usi_reg64_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, mem32" do
      let(:operands) { [reg64(0), mem32(1)] }

      let(:bin_file_name) { "vcvtss2usi_reg64_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg32, xmm, {er}" do
      let(:operands) { [reg32(0), xmm(1), er(2)] }

      let(:bin_file_name) { "vcvtss2usi_reg32_xmm_{er}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types reg64, xmm, {er}" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      let(:bin_file_name) { "vcvtss2usi_reg64_xmm_{er}.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
