require 'spec_helper'
require 'ronin/asm/x86_64/register'

describe Ronin::ASM::X86_64::Register do
  it "must inherit from Ronin::ASM::X86::Register" do
    expect(described_class).to be < Ronin::ASM::X86::Register
  end

  it "must also include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end
end
