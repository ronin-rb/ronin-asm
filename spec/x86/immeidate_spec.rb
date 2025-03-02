require 'spec_helper'
require 'ronin/asm/x86/immediate'

describe Ronin::ASM::X86::Immediate do
  it "must inherit from Ronin::ASM::Immediate" do
    expect(described_class).to be < Ronin::ASM::Immediate
  end

  it "must include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end
end
