#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vcvtusi2sd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VCVTUSI2SD do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), xmm(1), reg32(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vcvtusi2sd" do
      expect(subject.name).to be(:vcvtusi2sd)
    end

    context "when given operands of types xmm, xmm, reg32" do
      let(:operands) { [xmm(0), xmm(1), reg32(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :reg32]" do
        expect(subject.form).to eq([:xmm, :xmm, :reg32])
      end
    end

    context "when given operands of types xmm, xmm, reg64" do
      let(:operands) { [xmm(0), xmm(1), reg64(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :reg64]" do
        expect(subject.form).to eq([:xmm, :xmm, :reg64])
      end
    end

    context "when given operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem32]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem32])
      end
    end

    context "when given operands of types xmm, xmm, mem64" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem64])
      end
    end

    context "when given operands of types xmm, xmm, {er}, reg64" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:xmm, :xmm, :"{er}", :reg64]' do
        expect(subject.form).to eq([:xmm, :xmm, :"{er}", :reg64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vcvtusi2sd #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm, xmm, reg32" do
      let(:operands) { [xmm(0), xmm(1), reg32(2)] }

      let(:bin_file_name) { "vcvtusi2sd_xmm_xmm_reg32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, reg64" do
      let(:operands) { [xmm(0), xmm(1), reg64(2)] }

      let(:bin_file_name) { "vcvtusi2sd_xmm_xmm_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem32" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      let(:bin_file_name) { "vcvtusi2sd_xmm_xmm_mem32.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem64" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      let(:bin_file_name) { "vcvtusi2sd_xmm_xmm_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, {er}, reg64" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      let(:bin_file_name) { "vcvtusi2sd_xmm_xmm_{er}_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
