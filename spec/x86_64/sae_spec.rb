require 'spec_helper'
require 'ronin/asm/x86_64/sae'

describe Ronin::ASM::X86_64::SAE do
  it "must inherit from Ronin::ASM::X86::SAE" do
    expect(described_class).to be < Ronin::ASM::X86::SAE
  end

  it "must include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end
end
