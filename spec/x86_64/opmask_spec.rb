require 'spec_helper'
require 'ronin/asm/x86_64/opmask'

require 'ronin/asm/x86_64/registers'

describe Ronin::ASM::X86_64::Opmask do
  it "must inherit from Ronin::ASM::X86::Opasm" do
    expect(described_class).to be < Ronin::ASM::X86::Opmask
  end

  it "must include Ronin::ASM::X86_64::Decorator" do
    expect(described_class).to include(Ronin::ASM::X86_64::Decorator)
  end

  let(:operand) { Ronin::ASM::X86_64::Registers::XMM0 }
  let(:k)       { Ronin::ASM::X86_64::Registers::K1 }

  subject { described_class.new(operand,k) }

  describe "#to_s" do
    it "must return formatted operand and the opmask decorator" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86_64::Syntaxes::Intel.format_opmask(subject)
      )
    end
  end
end
