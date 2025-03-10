require 'spec_helper'
require 'ronin/asm/x86_64/symbol_ref'

describe Ronin::ASM::X86_64::SymbolRef do
  it "must inherit from Ronin::ASM::X86::SymbolRef" do
    expect(described_class).to be < Ronin::ASM::X86::SymbolRef
  end
end
