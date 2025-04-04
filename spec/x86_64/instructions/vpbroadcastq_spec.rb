#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions/vpbroadcastq'

require_relative '../helpers/operands'

describe Ronin::ASM::X86_64::Instructions::VPBROADCASTQ do
  include Helpers::X86_64::Operands

  let(:operands) { [xmm_k_z(0), reg64(1)] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set #name to :vpbroadcastq" do
      expect(subject.name).to be(:vpbroadcastq)
    end

    context "when given operands of types xmm{k}{z}, reg64" do
      let(:operands) { [xmm_k_z(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :reg64]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :reg64])
      end
    end

    context "when given operands of types ymm{k}{z}, reg64" do
      let(:operands) { [ymm_k_z(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :reg64]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :reg64])
      end
    end

    context "when given operands of types zmm{k}{z}, reg64" do
      let(:operands) { [zmm_k_z(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :reg64]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :reg64])
      end
    end

    context "when given operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types ymm{k}{z}, xmm" do
      let(:operands) { [ymm_k_z(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :xmm])
      end
    end

    context "when given operands of types zmm{k}{z}, xmm" do
      let(:operands) { [zmm_k_z(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :xmm]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :xmm])
      end
    end

    context "when given operands of types xmm{k}{z}, mem64" do
      let(:operands) { [xmm_k_z(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"xmm{k}{z}", :mem64]' do
        expect(subject.form).to eq([:"xmm{k}{z}", :mem64])
      end
    end

    context "when given operands of types ymm{k}{z}, mem64" do
      let(:operands) { [ymm_k_z(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"ymm{k}{z}", :mem64]' do
        expect(subject.form).to eq([:"ymm{k}{z}", :mem64])
      end
    end

    context "when given operands of types zmm{k}{z}, mem64" do
      let(:operands) { [zmm_k_z(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it 'must set #form to [:"zmm{k}{z}", :mem64]' do
        expect(subject.form).to eq([:"zmm{k}{z}", :mem64])
      end
    end

    context "when given operands of types xmm, reg64" do
      let(:operands) { [xmm(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :reg64]" do
        expect(subject.form).to eq([:xmm, :reg64])
      end
    end

    context "when given operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :xmm]" do
        expect(subject.form).to eq([:xmm, :xmm])
      end
    end

    context "when given operands of types xmm, mem64" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:xmm, :mem64]" do
        expect(subject.form).to eq([:xmm, :mem64])
      end
    end

    context "when given operands of types ymm, reg64" do
      let(:operands) { [ymm(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :reg64]" do
        expect(subject.form).to eq([:ymm, :reg64])
      end
    end

    context "when given operands of types ymm, xmm" do
      let(:operands) { [ymm(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :xmm]" do
        expect(subject.form).to eq([:ymm, :xmm])
      end
    end

    context "when given operands of types ymm, mem64" do
      let(:operands) { [ymm(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:ymm, :mem64]" do
        expect(subject.form).to eq([:ymm, :mem64])
      end
    end

    context "when given operands of types zmm, reg64" do
      let(:operands) { [zmm(0), reg64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :reg64]" do
        expect(subject.form).to eq([:zmm, :reg64])
      end
    end

    context "when given operands of types zmm, xmm" do
      let(:operands) { [zmm(0), xmm(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :xmm]" do
        expect(subject.form).to eq([:zmm, :xmm])
      end
    end

    context "when given operands of types zmm, mem64" do
      let(:operands) { [zmm(0), mem64(1)] }

      it "must set #operands" do
        expect(subject.operands).to eq(operands)
      end

      it "must set #form to [:zmm, :mem64]" do
        expect(subject.form).to eq([:zmm, :mem64])
      end
    end

    context "when given operands that do not match any of the instruction's forms" do
      let(:operands) { [reg32, imm8, xmm] }

      it do
        expect {
          described_class.new(*operands)
        }.to raise_error(ArgumentError,"incompatible operands given for instruction: vpbroadcastq #{operands.map(&:type).join(', ')}")
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

    context "when #operands contains operands of types xmm{k}{z}, reg64" do
      let(:operands) { [xmm_k_z(0), reg64(1)] }

      let(:bin_file_name) { "vpbroadcastq_xmm{k}{z}_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, reg64" do
      let(:operands) { [ymm_k_z(0), reg64(1)] }

      let(:bin_file_name) { "vpbroadcastq_ymm{k}{z}_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, reg64" do
      let(:operands) { [zmm_k_z(0), reg64(1)] }

      let(:bin_file_name) { "vpbroadcastq_zmm{k}{z}_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, xmm" do
      let(:operands) { [xmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vpbroadcastq_xmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, xmm" do
      let(:operands) { [ymm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vpbroadcastq_ymm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, xmm" do
      let(:operands) { [zmm_k_z(0), xmm(1)] }

      let(:bin_file_name) { "vpbroadcastq_zmm{k}{z}_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm{k}{z}, mem64" do
      let(:operands) { [xmm_k_z(0), mem64(1)] }

      let(:bin_file_name) { "vpbroadcastq_xmm{k}{z}_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm{k}{z}, mem64" do
      let(:operands) { [ymm_k_z(0), mem64(1)] }

      let(:bin_file_name) { "vpbroadcastq_ymm{k}{z}_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm{k}{z}, mem64" do
      let(:operands) { [zmm_k_z(0), mem64(1)] }

      let(:bin_file_name) { "vpbroadcastq_zmm{k}{z}_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, reg64" do
      let(:operands) { [xmm(0), reg64(1)] }

      let(:bin_file_name) { "vpbroadcastq_xmm_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, xmm" do
      let(:operands) { [xmm(0), xmm(1)] }

      let(:bin_file_name) { "vpbroadcastq_xmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types xmm, mem64" do
      let(:operands) { [xmm(0), mem64(1)] }

      let(:bin_file_name) { "vpbroadcastq_xmm_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, reg64" do
      let(:operands) { [ymm(0), reg64(1)] }

      let(:bin_file_name) { "vpbroadcastq_ymm_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, xmm" do
      let(:operands) { [ymm(0), xmm(1)] }

      let(:bin_file_name) { "vpbroadcastq_ymm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types ymm, mem64" do
      let(:operands) { [ymm(0), mem64(1)] }

      let(:bin_file_name) { "vpbroadcastq_ymm_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, reg64" do
      let(:operands) { [zmm(0), reg64(1)] }

      let(:bin_file_name) { "vpbroadcastq_zmm_reg64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, xmm" do
      let(:operands) { [zmm(0), xmm(1)] }

      let(:bin_file_name) { "vpbroadcastq_zmm_xmm.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end

    context "when #operands contains operands of types zmm, mem64" do
      let(:operands) { [zmm(0), mem64(1)] }

      let(:bin_file_name) { "vpbroadcastq_zmm_mem64.bin" }

      it do
        subject.encode(encoder)

        expect(output.string).to eq(expected_encoding)
      end
    end
  end
end
