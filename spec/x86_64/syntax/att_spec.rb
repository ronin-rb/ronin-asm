require 'spec_helper'
require 'ronin/asm/x86_64/syntax/att'

require 'ronin/asm/x86_64/immediate'
require 'ronin/asm/x86_64/registers'
require 'ronin/asm/x86_64/memory'
require 'ronin/asm/x86_64/instruction'
require 'ronin/asm/program'

describe Ronin::ASM::X86_64::Syntax::ATT do
  it "must inherit from Ronin::ASM::X86::Syntax::ATT" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::ATT
  end

  subject { described_class }

  describe ".format_instruction_name" do
    context "when the instruction's first operand is of type :mem and the second operand is of type :imm" do
      let(:register)    { Ronin::ASM::X86_64::Registers::RAX }
      let(:memory)      { Ronin::ASM::X86_64::Memory.new(base: register) }
      let(:immediate)   { Ronin::ASM::X86_64::Immediate.new(value) }
      let(:operands)    { [memory, immediate] }
      let(:instruction) { Ronin::ASM::X86_64::Instruction.new(:mov, *operands) }

      context "and the immediate's value fits within 64 bits" do
        let(:value) { 0xffffffffffffffff }

        it "must return the instruction name plus a 'q' size suffix to disambiguate desired instruction operand sizes" do
          expect(subject.format_instruction_name(instruction)).to eq(
            "#{instruction.name}q"
          )
        end
      end
    end
  end

  describe ".format_prologue" do
    let(:program) do
      Ronin::ASM::Program.new(arch: :x86_64) do
        mov rax, 0xff
        ret
      end
    end

    it "must return '.code64'" do
      expect(subject.format_prologue(program)).to eq('.code64')
    end
  end
end
