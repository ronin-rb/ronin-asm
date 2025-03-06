require 'spec_helper'
require 'ronin/asm/x86_64/immediate'

describe Ronin::ASM::X86_64::Immediate do
  it "must inherit from Ronin::ASM::X86::Immediate" do
    expect(described_class).to be < Ronin::ASM::X86::Immediate
  end

  it "must also include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end

  let(:value) { 0xff }

  subject { described_class.new(value) }

  describe "#to_s" do
    it "must call Ronin::ASM::X86_64::Syntax::Intel.format_immediate" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86_64::Syntax::Intel.format_immediate(subject)
      )
    end
  end
end
