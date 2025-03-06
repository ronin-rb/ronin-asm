require 'spec_helper'
require 'ronin/asm/x86/immediate'

describe Ronin::ASM::X86::Immediate do
  it "must inherit from Ronin::ASM::Immediate" do
    expect(described_class).to be < Ronin::ASM::Immediate
  end

  it "must include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end

  let(:value) { 0xff }

  subject { described_class.new(value) }

  describe "#to_s" do
    it "must call Ronin::ASM::X86::Syntax::Intel.format_immediate" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86::Syntax::Intel.format_immediate(subject)
      )
    end
  end
end
