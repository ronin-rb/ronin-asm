require 'spec_helper'
require 'ronin/asm/x86_64/memory_offset'

describe Ronin::ASM::X86_64::MemoryOffset do
  it "must inherit from Ronin::ASM::X86::MemoryOffset" do
    expect(described_class).to be < Ronin::ASM::X86::MemoryOffset
  end
end
