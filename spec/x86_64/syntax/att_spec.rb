require 'spec_helper'
require 'ronin/asm/x86_64/syntax/att'

describe Ronin::ASM::X86_64::Syntax::ATT do
  it "must inherit from Ronin::ASM::X86::Syntax::ATT" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::ATT
  end

  subject { described_class }

  describe ".format_prologue" do
    let(:program) do
      Ronin::ASM::Program.new(arch: :x86_64) do
        mov rax, 0xff
        ret
      end
    end

    it "must return '.code64'" do
      expect(subject.format_prologue(program)).to eq('.code64')
    end
  end
end
