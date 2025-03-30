require 'spec_helper'
require 'ronin/asm/x86_64/er'

describe Ronin::ASM::X86_64::ER do
  it "must inherit from Ronin::ASM::X86::ER" do
    expect(described_class).to be < Ronin::ASM::X86::ER
  end

  it "must include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end
end
