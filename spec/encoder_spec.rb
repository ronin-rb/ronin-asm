require 'spec_helper'
require 'ronin/asm/encoder'

require 'stringio'

describe Ronin::ASM::Encoder do
  let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

  subject { described_class.new(output) }

  describe "#write_instruction" do
    let(:instruction) { double('Instruction') }
    let(:bytes_written) { 4 }

    it "must call #encode on the instruction object and pass it self and return the number of bytes written" do
      expect(instruction).to receive(:encode).with(subject).and_return(bytes_written)

      expect(subject.write_instruction(instruction)).to eq(bytes_written)
    end
  end

  describe "#write_int" do
    context "when the given size is 8" do
      let(:int) { 0x1122334455667788 }

      it "must write the integer as a packed 64bit little endian integer" do
        subject.write_int(int,8)

        expect(output.string).to eq([int].pack('Q<'))
      end

      it "must return 8" do
        expect(subject.write_int(int,8)).to eq(8)
      end
    end

    context "when the given size is 4" do
      let(:int) { 0x11223344 }

      it "must write the integer as a packed 32bit little endian integer" do
        subject.write_int(int,4)

        expect(output.string).to eq([int].pack('L<'))
      end

      it "must return 4" do
        expect(subject.write_int(int,4)).to eq(4)
      end
    end

    context "when the given size is 2" do
      let(:int) { 0x1122 }

      it "must write the integer as a packed 16bit little endian integer" do
        subject.write_int(int,2)

        expect(output.string).to eq([int].pack('S<'))
      end

      it "must return 2" do
        expect(subject.write_int(int,2)).to eq(2)
      end
    end

    context "when the given size is 1" do
      let(:int) { 0x41 }

      it "must write the integer as a single byte" do
        subject.write_int(int,1)

        expect(output.string).to eq(int.chr(Encoding::ASCII_8BIT))
      end

      it "must return 1" do
        expect(subject.write_int(int,1)).to eq(1)
      end
    end

    context "when the given size is 0" do
      let(:int) { 42 }

      before { subject.write_int(int,0) }

      it "must not write any bytes to the output stream" do
        expect(output.string).to be_empty
      end

      it "must return 0" do
        expect(subject.write_int(int,0)).to eq(0)
      end
    end

    context "but the given size is another value" do
      let(:size) { Object.new }

      it do
        expect {
          subject.write_int(42,size)
        }.to raise_error(ArgumentError,"invalid integer size given (#{size.inspect}), must be 0, 1, 2, 4, or 8")
      end
    end
  end

  describe "#write_bytes" do
    let(:bytes) { "\x41\x42\x43".b }

    it "must write the string of bytes to the output stream" do
      subject.write_bytes(bytes)

      expect(output.string).to eq(bytes)
    end

    it "must return the number of bytes written" do
      expect(subject.write_bytes(bytes)).to eq(bytes.size)
    end
  end

  describe "#write_byte" do
    let(:byte) { 0x41 }

    it "must write the byte to the output stream" do
      subject.write_byte(byte)

      expect(output.string).to eq(byte.chr(Encoding::ASCII_8BIT))
    end

    it "must return 1" do
      expect(subject.write_byte(byte)).to eq(1)
    end
  end
end
