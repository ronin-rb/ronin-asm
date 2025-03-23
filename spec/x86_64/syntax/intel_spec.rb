require 'spec_helper'
require 'ronin/asm/x86_64/syntax/intel'

require 'ronin/asm/x86_64/immediate'
require 'ronin/asm/x86_64/registers'
require 'ronin/asm/x86_64/memory'
require 'ronin/asm/x86_64/instruction'
require 'ronin/asm/program'

describe Ronin::ASM::X86_64::Syntax::Intel do
  it "must inherit from Ronin::ASM::X86::Syntax::Intel" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::Intel
  end

  subject { described_class }

  describe ".format_operands" do
    context "when the first operand is of type :mem and the second operand is of type :imm" do
      let(:register)  { Ronin::ASM::X86_64::Registers::RBX }
      let(:memory)    { Ronin::ASM::X86_64::Memory.new(base: register) }
      let(:immediate) { Ronin::ASM::X86_64::Immediate.new(value) }
      let(:operands)  { [memory, immediate] }

      context "and the immediate's value bit length is between 64 and 32 bits" do
        let(:value) { 0xffffffffffffffff }

        it "must add a QWORD size specifier to the immediate operand to disambiguate their desired sizes" do
          expect(subject.format_operands(operands)).to eq(
            "QWORD #{subject.format_memory(memory)},\t#{subject.format_immediate(immediate)}"
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

    it "must return 'BITS 64'" do
      expect(subject.format_prologue(program)).to eq('BITS 64')
    end
  end
end
