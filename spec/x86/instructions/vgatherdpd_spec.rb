#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vgatherdpd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VGATHERDPD do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k(0), vm32x(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vgatherdpd" do
      expect(subject.name).to be(:vgatherdpd)
    end

    context "when given operands of types xmm{k}, vm32x" do
      let(:operands) { [xmm_k(0), vm32x(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}", :vm32x]' do
        expect(subject.form).to eq([:"xmm{k}", :vm32x])
      end
    end

    context "when given operands of types ymm{k}, vm32x" do
      let(:operands) { [ymm_k(0), vm32x(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}", :vm32x]' do
        expect(subject.form).to eq([:"ymm{k}", :vm32x])
      end
    end

    context "when given operands of types zmm{k}, vm32y" do
      let(:operands) { [zmm_k(0), vm32y(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}", :vm32y]' do
        expect(subject.form).to eq([:"zmm{k}", :vm32y])
      end
    end

    context "when given operands of types xmm, vm32x, xmm" do
      let(:operands) { [xmm(0), vm32x(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :vm32x, :xmm]" do
        expect(subject.form).to eq([:xmm, :vm32x, :xmm])
      end
    end

    context "when given operands of types ymm, vm32x, ymm" do
      let(:operands) { [ymm(0), vm32x(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :vm32x, :ymm]" do
        expect(subject.form).to eq([:ymm, :vm32x, :ymm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vgatherdpd #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm{k}, vm32x" do
      let(:operands) { [xmm_k(0), vm32x(1)] }

      let(:bin_file_name) { "vgatherdpd_xmm{k}_vm32x.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}, vm32x" do
      let(:operands) { [ymm_k(0), vm32x(1)] }

      let(:bin_file_name) { "vgatherdpd_ymm{k}_vm32x.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}, vm32y" do
      let(:operands) { [zmm_k(0), vm32y(1)] }

      let(:bin_file_name) { "vgatherdpd_zmm{k}_vm32y.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, vm32x, xmm" do
      let(:operands) { [xmm(0), vm32x(1), xmm(2)] }

      let(:bin_file_name) { "vgatherdpd_xmm_vm32x_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, vm32x, ymm" do
      let(:operands) { [ymm(0), vm32x(1), ymm(2)] }

      let(:bin_file_name) { "vgatherdpd_ymm_vm32x_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
