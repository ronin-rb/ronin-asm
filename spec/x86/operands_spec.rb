require 'spec_helper'
require 'ronin/asm/x86/operands'

describe Ronin::ASM::X86::Operands do
  describe "RN_SAE" do
    subject { described_class::RN_SAE }

    it { expect(subject).to be_a(Ronin::ASM::X86::ER) }

    it "must have a #name of :'{rn-sae}'" do
      expect(subject.name).to eq(:"{rn-sae}")
    end
  end

  describe "RD_SAE" do
    subject { described_class::RD_SAE }

    it { expect(subject).to be_a(Ronin::ASM::X86::ER) }

    it "must have a #name of :'{rd-sae}'" do
      expect(subject.name).to eq(:"{rd-sae}")
    end
  end

  describe "RU_SAE" do
    subject { described_class::RU_SAE }

    it { expect(subject).to be_a(Ronin::ASM::X86::ER) }

    it "must have a #name of :'{ru-sae}'" do
      expect(subject.name).to eq(:"{ru-sae}")
    end
  end

  describe "RZ_SAE" do
    subject { described_class::RZ_SAE }

    it { expect(subject).to be_a(Ronin::ASM::X86::ER) }

    it "must have a #name of :'{rz-sae}'" do
      expect(subject.name).to eq(:"{rz-sae}")
    end
  end

  describe "SAE" do
    subject { described_class::SAE }

    it { expect(subject).to be_a(Ronin::ASM::X86::SAE) }
  end
end
