require 'spec_helper'
require 'ronin/asm/x86_64/decorator'

describe Ronin::ASM::X86_64::Decorator do
  it "must include Ronin::ASM::X86::Decorator" do
    expect(described_class).to include(Ronin::ASM::X86::Decorator)
  end
end
