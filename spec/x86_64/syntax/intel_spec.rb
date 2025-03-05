require 'spec_helper'
require 'ronin/asm/x86_64/syntax/intel'

describe Ronin::ASM::X86_64::Syntax::Intel do
  it "must inherit from Ronin::ASM::X86::Syntax::Intel" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::Intel
  end
end
