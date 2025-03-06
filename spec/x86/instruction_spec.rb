require 'spec_helper'
require 'ronin/asm/x86/instruction'

require 'ronin/asm/x86/register'
require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/memory'

describe Ronin::ASM::X86::Instruction do
  it "must inherit from Ronin::ASM::Instruction" do
    expect(described_class).to be < Ronin::ASM::Instruction
  end

  let(:register) do
    Ronin::ASM::X86::Register.new(:eax, width: 4)
  end
  let(:immediate) do
    Ronin::ASM::X86::Immediate.new(0xff, width: 1)
  end

  let(:name)     { :mov }
  let(:operands) { [register, immediate] }

  subject { described_class.new(name, *operands) }

  describe "#to_s" do
    it "must call Ronin::ASM::X86::Syntax::Intel.format_instruction" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86::Syntax::Intel.format_instruction(subject)
      )
    end
  end
end
