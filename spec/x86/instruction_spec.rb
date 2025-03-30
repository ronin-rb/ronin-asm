require 'spec_helper'
require 'ronin/asm/x86/instruction'

require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/memory'

describe Ronin::ASM::X86::Instruction do
  it "must inherit from Ronin::ASM::Instruction" do
    expect(described_class).to be < Ronin::ASM::Instruction
  end

  let(:register)  { Ronin::ASM::X86::Registers::EAX }
  let(:immediate) { Ronin::ASM::X86::Immediate.new(0xff, size: 1) }
  let(:name)      { :mov }
  let(:operands)  { [register, immediate] }

  subject { described_class.new(name, *operands) }

  describe "#initialize" do
    it "must not set #form by default" do
      expect(subject.form).to be(nil)
    end
  end

  describe "#intel_name" do
    it "must return the #name" do
      expect(subject.intel_name).to eq(name)
    end
  end

  describe "#to_s" do
    it "must call Ronin::ASM::X86::Syntax::Intel.format_instruction" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86::Syntax::Intel.format_instruction(subject)
      )
    end
  end
end
