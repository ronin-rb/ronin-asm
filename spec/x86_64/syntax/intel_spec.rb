require 'spec_helper'
require 'ronin/asm/x86_64/syntax/intel'

describe Ronin::ASM::X86_64::Syntax::Intel do
  it "must inherit from Ronin::ASM::X86::Syntax::Intel" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::Intel
  end

  subject { described_class }

  describe ".format_prologue" do
    let(:program) do
      Ronin::ASM::Program.new(arch: :x86_64) do
        mov rax, 0xff
        ret
      end
    end

    it "must return 'BITS 64'" do
      expect(subject.format_prologue(program)).to eq('BITS 64')
    end
  end
end
