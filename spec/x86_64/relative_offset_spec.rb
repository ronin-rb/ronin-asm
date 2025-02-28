require 'spec_helper'
require 'ronin/asm/x86_64/relative_offset'

describe Ronin::ASM::X86_64::RelativeOffset do
  it "must inherit from Ronin::ASM::X86::RelativeOffset" do
    expect(described_class).to be < Ronin::ASM::X86::RelativeOffset
  end
end
