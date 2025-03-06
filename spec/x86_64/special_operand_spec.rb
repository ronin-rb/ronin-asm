require 'spec_helper'
require 'ronin/asm/x86_64/special_operand'

describe Ronin::ASM::X86_64::SpecialOperand do
  it "must inherit from Ronin::ASM::X86::SpecialOperand" do
    expect(described_class).to be < Ronin::ASM::X86::SpecialOperand
  end

  it "must include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end
end
