require 'spec_helper'
require 'ronin/asm/x86/instruction'

describe Ronin::ASM::X86::Instruction do
  it "must inherit from Ronin::ASM::Instruction" do
    expect(described_class).to be < Ronin::ASM::Instruction
  end
end
