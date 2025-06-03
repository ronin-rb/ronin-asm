require 'spec_helper'
require 'ronin/asm/x86_64/instruction'

require 'ronin/asm/x86_64/registers'
require 'ronin/asm/x86_64/immediate'
require 'ronin/asm/x86_64/memory'

describe Ronin::ASM::X86_64::Instruction do
  it "must inherit from Ronin::ASM::X86::Instruction" do
    expect(described_class).to be < Ronin::ASM::X86::Instruction
  end

  it "must include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end

  module TestX86_64Instructions
    class MOV < Ronin::ASM::X86_64::Instruction

      def name = :mov

    end
  end

  let(:register)  { Ronin::ASM::X86_64::Registers::EAX }
  let(:immediate) { Ronin::ASM::X86_64::Immediate.new(0xff, size: 1) }
  let(:operands)  { [register, immediate] }

  let(:instruction_class) { TestX86_64Instructions::MOV }

  subject { instruction_class.new(*operands) }

  describe "#to_s" do
    it "must call Ronin::ASM::X86_64::Syntax::Intel.format_instruction" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86_64::Syntax::Intel.format_instruction(subject)
      )
    end
  end
end
