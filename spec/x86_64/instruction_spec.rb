require 'spec_helper'
require 'ronin/asm/x86_64/instruction'

describe Ronin::ASM::X86_64::Instruction do
  it "must inherit from Ronin::ASM::Instruction" do
    expect(described_class).to be < Ronin::ASM::Instruction
  end
end
