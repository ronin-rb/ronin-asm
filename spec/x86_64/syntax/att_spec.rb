require 'spec_helper'
require 'ronin/asm/x86_64/syntax/att'

describe Ronin::ASM::X86_64::Syntax::ATT do
  it "must inherit from Ronin::ASM::X86::Syntax::ATT" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::ATT
  end
end
