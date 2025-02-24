require 'spec_helper'
require 'ronin/asm/x86/register'

describe Ronin::ASM::X86::Register do
  it "must inherit from Ronin::ASM::Register" do
    expect(described_class).to be < Ronin::ASM::Register
  end
end
