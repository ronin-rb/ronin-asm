require 'spec_helper'
require 'ronin/asm/x86/operands'

describe Ronin::ASM::X86::Operands do
  describe "ER" do
    subject { described_class::ER }

    it "must have a #type of :'{er}'" do
      expect(subject.type).to eq(:"{er}")
    end
  end

  describe "SAE" do
    subject { described_class::SAE }

    it "must have a #type of :'{sae}'" do
      expect(subject.type).to eq(:"{sae}")
    end
  end
end
