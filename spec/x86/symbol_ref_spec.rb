require 'spec_helper'
require 'ronin/asm/x86/symbol_ref'

describe Ronin::ASM::X86::SymbolRef do
  it "must inherit from Ronin::ASM::SymbolRef" do
    expect(described_class).to be < Ronin::ASM::SymbolRef
  end

  subject { described_class.new('_label') }

  describe "#type" do
    it "must return :rel32" do
      expect(subject.type).to eq(:rel32)
    end
  end

  describe "#to_i" do
    it "must return 0" do
      expect(subject.to_i).to eq(0)
    end
  end
end
