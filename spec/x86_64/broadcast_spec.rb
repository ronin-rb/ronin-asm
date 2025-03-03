require 'spec_helper'
require 'ronin/asm/x86_64/broadcast'

require 'ronin/asm/x86_64/register'
require 'ronin/asm/x86_64/memory'

describe Ronin::ASM::X86_64::Broadcast do
  it "must inherit from Ronin::ASM::X86::Broadcast" do
    expect(described_class).to be < Ronin::ASM::X86::Broadcast
  end

  it "must include Ronin::ASM::X86_64::Decorator" do
    expect(described_class).to include(Ronin::ASM::X86_64::Decorator)
  end

  let(:base)   { Ronin::ASM::X86_64::Register.new(:eax, size: 4) }
  let(:index)  { Ronin::ASM::X86_64::Register.new(:esi, size: 4) }
  let(:scale)  { 4 }
  let(:displacement) { 10 }
  let(:memory) do
    Ronin::ASM::X86_64::Memory.new(
      base:  base,
      index: index,
      scale: scale,
      displacement: displacement
    )
  end

  let(:ratio) { {1=>4} }

  subject { described_class.new(memory,ratio) }

  describe "#to_s" do
    let(:formatted_broadcast) do
      double('formatted Ronin::ASM::X86_64::Broadcast')
    end

    it "must call Ronin::ASM::X86_64::Syntax::Intel.format_broadcast" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86_64::Syntax::Intel.format_broadcast(subject)
      )
    end
  end
end
