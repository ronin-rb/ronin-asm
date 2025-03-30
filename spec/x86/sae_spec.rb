require 'spec_helper'
require 'ronin/asm/x86/sae'

describe Ronin::ASM::X86::SAE do
  it "must inherit from Ronin::ASM::SpecialOperand" do
    expect(described_class).to be < Ronin::ASM::SpecialOperand
  end

  it "must include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end

  describe "#initialize" do
    it 'must set #type to :"{sae}"' do
      expect(subject.type).to eq(:"{sae}")
    end
  end

  describe "#name" do
    it 'must return :"{sae}"' do
      expect(subject.name).to eq(:"{sae}")
    end
  end

  describe "#sae?" do
    it "must return true" do
      expect(subject.sae?).to be(true)
    end
  end
end
