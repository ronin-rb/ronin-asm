require 'spec_helper'
require 'ronin/asm/x86_64/register'

describe Ronin::ASM::X86_64::Register do
  it "must inherit from Ronin::ASM::X86::Register" do
    expect(described_class).to be < Ronin::ASM::X86::Register
  end
end
