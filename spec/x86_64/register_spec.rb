require 'spec_helper'
require 'ronin/asm/x86_64/register'

describe Ronin::ASM::X86_64::Register do
  it "must inherit from Ronin::ASM::Register" do
    expect(described_class).to be < Ronin::ASM::Register
  end
end
