require 'spec_helper'
require 'ronin/asm/x86/special_operand'

describe Ronin::ASM::X86::SpecialOperand do
  it "must inherit from Ronin::ASM::SpecialOperand" do
    expect(described_class).to be < Ronin::ASM::SpecialOperand
  end

  it "must include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end
end
