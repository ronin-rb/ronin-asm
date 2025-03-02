require 'spec_helper'
require 'ronin/asm/x86_64/immediate'

describe Ronin::ASM::X86_64::Immediate do
  it "must inherit from Ronin::ASM::X86::Immediate" do
    expect(described_class).to be < Ronin::ASM::X86::Immediate
  end

  it "must also include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end
end
