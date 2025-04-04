#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86/instructions/vgatherqpd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86::Instructions::VGATHERQPD do
  include Helpers::X86::Operands

  let(:operands) { [xmm_k(0), vm64x(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vgatherqpd" do
      expect(subject.name).to be(:vgatherqpd)
    end

    context "when given operands of types xmm{k}, vm64x" do
      let(:operands) { [xmm_k(0), vm64x(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}", :vm64x]' do
        expect(subject.form).to eq([:"xmm{k}", :vm64x])
      end
    end

    context "when given operands of types ymm{k}, vm64y" do
      let(:operands) { [ymm_k(0), vm64y(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}", :vm64y]' do
        expect(subject.form).to eq([:"ymm{k}", :vm64y])
      end
    end

    context "when given operands of types zmm{k}, vm64z" do
      let(:operands) { [zmm_k(0), vm64z(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}", :vm64z]' do
        expect(subject.form).to eq([:"zmm{k}", :vm64z])
      end
    end

    context "when given operands of types xmm, vm64x, xmm" do
      let(:operands) { [xmm(0), vm64x(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :vm64x, :xmm]" do
        expect(subject.form).to eq([:xmm, :vm64x, :xmm])
      end
    end

    context "when given operands of types ymm, vm64y, ymm" do
      let(:operands) { [ymm(0), vm64y(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :vm64y, :ymm]" do
        expect(subject.form).to eq([:ymm, :vm64y, :ymm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vgatherqpd #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm{k}, vm64x" do
      let(:operands) { [xmm_k(0), vm64x(1)] }

      let(:bin_file_name) { "vgatherqpd_xmm{k}_vm64x.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}, vm64y" do
      let(:operands) { [ymm_k(0), vm64y(1)] }

      let(:bin_file_name) { "vgatherqpd_ymm{k}_vm64y.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}, vm64z" do
      let(:operands) { [zmm_k(0), vm64z(1)] }

      let(:bin_file_name) { "vgatherqpd_zmm{k}_vm64z.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, vm64x, xmm" do
      let(:operands) { [xmm(0), vm64x(1), xmm(2)] }

      let(:bin_file_name) { "vgatherqpd_xmm_vm64x_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, vm64y, ymm" do
      let(:operands) { [ymm(0), vm64y(1), ymm(2)] }

      let(:bin_file_name) { "vgatherqpd_ymm_vm64y_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
