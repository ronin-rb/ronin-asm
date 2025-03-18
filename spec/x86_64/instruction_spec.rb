require 'spec_helper'
require 'ronin/asm/x86_64/instruction'

require 'ronin/asm/x86_64/registers'
require 'ronin/asm/x86_64/immediate'
require 'ronin/asm/x86_64/memory'

describe Ronin::ASM::X86_64::Instruction do
  it "must inherit from Ronin::ASM::Instruction" do
    expect(described_class).to be < Ronin::ASM::Instruction
  end

  let(:register)  { Ronin::ASM::X86_64::Registers::EAX }
  let(:immediate) { Ronin::ASM::X86_64::Immediate.new(0xff, size: 1) }

  let(:name)     { :mov }
  let(:operands) { [register, immediate] }

  subject { described_class.new(name, *operands) }

  describe "#to_s" do
    it "must call Ronin::ASM::X86_64::Syntax::Intel.format_instruction" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86_64::Syntax::Intel.format_instruction(subject)
      )
    end
  end
end
