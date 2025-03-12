require 'spec_helper'
require 'ronin/asm/x86_64/assembler'

require 'ronin/asm/program'
require 'stringio'

describe Ronin::ASM::X86_64::Assembler do
  let(:program) do
    Ronin::ASM::Program.new(arch: :x86_64) do
      mov rcx, qword(0x0)

      _loop do
        inc rcx

        cmp cl, 0x10
        jne _loop
      end

      mov rax, rcx
    end
  end

  subject { described_class.new(program) }

  describe "#relative_offset" do
    let(:value) { -4 }

    it "must return a new Ronin::ASM::X86_64::RelativeOffset object for the value" do
      relative_offset = subject.relative_offset(value)

      expect(relative_offset).to be_a(Ronin::ASM::X86_64::RelativeOffset)
      expect(relative_offset.value).to eq(value)
    end
  end

  describe "#encoder" do
    let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

    it "must return a new Ronin::ASM::X86_64::Encoder object for the output object" do
      encoder = subject.encoder(output)

      expect(encoder).to be_a(Ronin::ASM::X86_64::Encoder)
      expect(encoder.output).to be(output)
    end
  end
end
