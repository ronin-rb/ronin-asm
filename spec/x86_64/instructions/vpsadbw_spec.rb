#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpsadbw'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPSADBW do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm(0), xmm(1), xmm(2)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpsadbw" do
      expect(subject.name).to be(:vpsadbw)
    end

    context "when given operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm, :xmm])
      end
    end

    context "when given operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm, :mem128]" do
        expect(subject.form).to eq([:xmm, :xmm, :mem128])
      end
    end

    context "when given operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :ymm]" do
        expect(subject.form).to eq([:ymm, :ymm, :ymm])
      end
    end

    context "when given operands of types ymm, ymm, mem256" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :ymm, :mem256]" do
        expect(subject.form).to eq([:ymm, :ymm, :mem256])
      end
    end

    context "when given operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :zmm]" do
        expect(subject.form).to eq([:zmm, :zmm, :zmm])
      end
    end

    context "when given operands of types zmm, zmm, mem512" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :zmm, :mem512]" do
        expect(subject.form).to eq([:zmm, :zmm, :mem512])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpsadbw #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm, xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      let(:bin_file_name) { "vpsadbw_xmm_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm, mem128" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      let(:bin_file_name) { "vpsadbw_xmm_xmm_mem128.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, ymm" do
      let(:operands) { [ymm(0), ymm(1), ymm(2)] }

      let(:bin_file_name) { "vpsadbw_ymm_ymm_ymm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, ymm, mem256" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      let(:bin_file_name) { "vpsadbw_ymm_ymm_mem256.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, zmm" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      let(:bin_file_name) { "vpsadbw_zmm_zmm_zmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, zmm, mem512" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      let(:bin_file_name) { "vpsadbw_zmm_zmm_mem512.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
