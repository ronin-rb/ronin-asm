require 'spec_helper'
require 'ronin/asm/x86_64/syntaxes/att'

require 'ronin/asm/x86_64/immediate'
require 'ronin/asm/x86_64/registers'
require 'ronin/asm/x86_64/memory'
require 'ronin/asm/x86_64/instruction'
require 'ronin/asm/program'

describe Ronin::ASM::X86_64::Syntaxes::ATT do
  it "must inherit from Ronin::ASM::X86::Syntaxes::ATT" do
    expect(described_class).to be < Ronin::ASM::X86::Syntaxes::ATT
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
