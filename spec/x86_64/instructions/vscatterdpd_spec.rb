#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vscatterdpd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VSCATTERDPD do
  include Helpers::X86_64::Operands

  let(:operands) { [vm32x_k(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterdpd" do
      expect(subject.name).to be(:vscatterdpd)
    end

    context "when given operands of types vm32x{k}, xmm" do
      let(:operands) { [vm32x_k(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32x{k}", :xmm]' do
        expect(subject.form).to eq([:"vm32x{k}", :xmm])
      end
    end

    context "when given operands of types vm32x{k}, ymm" do
      let(:operands) { [vm32x_k(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32x{k}", :ymm]' do
        expect(subject.form).to eq([:"vm32x{k}", :ymm])
      end
    end

    context "when given operands of types vm32y{k}, zmm" do
      let(:operands) { [vm32y_k(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm32y{k}", :zmm]' do
        expect(subject.form).to eq([:"vm32y{k}", :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vscatterdpd #{operands.map(&:type).join(', ')}")
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
    it "must return :vscatterdpd" do
      expect(subject.name).to eq(:vscatterdpd)
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

    context "when #operands contains operands of types vm32x{k}, xmm" do
      let(:operands) { [vm32x_k(0), xmm(1)] }

      let(:bin_file_name) { "vscatterdpd_vm32x{k}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types vm32x{k}, ymm" do
      let(:operands) { [vm32x_k(0), ymm(1)] }

      let(:bin_file_name) { "vscatterdpd_vm32x{k}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types vm32y{k}, zmm" do
      let(:operands) { [vm32y_k(0), zmm(1)] }

      let(:bin_file_name) { "vscatterdpd_vm32y{k}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
