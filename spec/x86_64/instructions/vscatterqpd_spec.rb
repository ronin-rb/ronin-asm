#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vscatterqpd'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VSCATTERQPD do
  include Helpers::X86_64::Operands

  let(:operands) { [vm64x_k(0), xmm(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vscatterqpd" do
      expect(subject.name).to be(:vscatterqpd)
    end

    context "when given operands of types vm64x{k}, xmm" do
      let(:operands) { [vm64x_k(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm64x{k}", :xmm]' do
        expect(subject.form).to eq([:"vm64x{k}", :xmm])
      end
    end

    context "when given operands of types vm64y{k}, ymm" do
      let(:operands) { [vm64y_k(0), ymm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm64y{k}", :ymm]' do
        expect(subject.form).to eq([:"vm64y{k}", :ymm])
      end
    end

    context "when given operands of types vm64z{k}, zmm" do
      let(:operands) { [vm64z_k(0), zmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"vm64z{k}", :zmm]' do
        expect(subject.form).to eq([:"vm64z{k}", :zmm])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vscatterqpd #{operands.map(&:type).join(', ')}")
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
    it "must return :vscatterqpd" do
      expect(subject.name).to eq(:vscatterqpd)
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

    context "when #operands contains operands of types vm64x{k}, xmm" do
      let(:operands) { [vm64x_k(0), xmm(1)] }

      let(:bin_file_name) { "vscatterqpd_vm64x{k}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types vm64y{k}, ymm" do
      let(:operands) { [vm64y_k(0), ymm(1)] }

      let(:bin_file_name) { "vscatterqpd_vm64y{k}_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types vm64z{k}, zmm" do
      let(:operands) { [vm64z_k(0), zmm(1)] }

      let(:bin_file_name) { "vscatterqpd_vm64z{k}_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
