require 'spec_helper'
require 'ronin/asm/x86/syntax/att'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/memory'
require 'ronin/asm/x86/instruction'
require 'ronin/asm/program'

require_relative 'common_examples'

describe Ronin::ASM::X86::Syntax::ATT do
  it "must inherit from Ronin::ASM::X86::Syntax::Common" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::Common
  end

  subject { described_class }

  describe ".format_register" do
    let(:register) { Ronin::ASM::X86::Registers::EAX }

    it "must prepend a '%' to the register name" do
      expect(subject.format_register(register)).to eq("%eax")
    end
  end

  describe ".format_immediate" do
    let(:operand) { Ronin::ASM::X86::Immediate.new(255) }

    it "must prepend a '$' to the immediate" do
      expect(subject.format_immediate(operand)).to eq("$0xff")
    end
  end


  describe ".format_memory" do
    let(:register) { Ronin::ASM::X86::Registers::EAX }
    let(:operand)  { Ronin::ASM::X86::Memory.new(base: register) }

    it "must enclose the memory operand's base register in parenthesis" do
      expect(subject.format_memory(operand)).to eq("(%eax)")
    end

    context "when the Ronin::ASM::X86::Memory object has a displacement" do
      let(:displacement) { 255 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, displacement: displacement)
      end

      it "must prepend the displacement as a decimal integer" do
        expect(subject.format_memory(operand)).to eq("#{displacement}(%eax)")
      end

      context "but it's 0" do
        let(:displacement) { 0 }

        it "must omit the displacement" do
          expect(subject.format_memory(operand)).to eq("(%eax)")
        end
      end

      context "but it's negative" do
        let(:displacement) { -4 }

        it "must prepend the negative displacement as a decimal integer" do
          expect(subject.format_memory(operand)).to eq("#{displacement}(%eax)")
        end
      end
    end

    context "when the Ronin::ASM::X86::Memory object has an index" do
      let(:index)   { Ronin::ASM::X86::Registers::ESI }
      let(:operand) { Ronin::ASM::X86::Memory.new(base: register, index: index) }

      it "must include the index argument" do
        expect(subject.format_memory(operand)).to eq("(%eax,%esi)")
      end

      context "and a scale" do
        let(:scale)   { 4 }
        let(:operand) do
          Ronin::ASM::X86::Memory.new(base: register, index: index, scale: scale)
        end

        it "must prepend the scale argument as a decimal" do
          expect(subject.format_memory(operand)).to eq("(%eax,%esi,#{scale})")
        end
      end
    end
  end

  describe ".format_operands" do
    context "when given more than one operand" do
      let(:operand1) { Ronin::ASM::X86::Registers::EAX }
      let(:operand2) { Ronin::ASM::X86::Immediate.new(255) }
      let(:operands) { [operand1, operand2] }

      it "must format the operands as a tab and comma separated list, with the first operand as the last operand" do
        expect(subject.format_operands(operands)).to eq(
          "#{subject.format_operand(operand2)},\t#{subject.format_operand(operand1)}"
        )
      end
    end

    context "when only given one operand" do
      let(:operand)  { Ronin::ASM::X86::Immediate.new(255) }
      let(:operands) { [operand] }

      it "must format the single operand" do
        expect(subject.format_operands(operands)).to eq(
          "#{subject.format_operand(operand)}"
        )
      end
    end
  end

  describe ".format_instruction_name" do
    context "when the instruction has no operands" do
      let(:instruction) { Ronin::ASM::X86::Instruction.new(:ret) }

      it "must return the instruction name" do
        expect(subject.format_instruction_name(instruction)).to eq(
          instruction.name.to_s
        )
      end
    end

    context "when the instruction has operands" do
      let(:immediate)   { Ronin::ASM::X86::Immediate.new(0x80) }
      let(:instruction) { Ronin::ASM::X86::Instruction.new(:int,immediate) }

      it "must return the instruction name" do
        expect(subject.format_instruction_name(instruction)).to eq(
          instruction.name.to_s
        )
      end

      context "but the instruction's first operand is of type :mem and the second operand is of type :imm" do
        let(:register)    { Ronin::ASM::X86::Registers::EAX }
        let(:memory)      { Ronin::ASM::X86::Memory.new(base: register) }
        let(:immediate)   { Ronin::ASM::X86::Immediate.new(value) }
        let(:operands)    { [memory, immediate] }
        let(:instruction) { Ronin::ASM::X86::Instruction.new(:mov, *operands) }

        context "and the immediate's value fits within 8 bits" do
          let(:value) { 0xff }

          it "must return the instruction name plus a 'b' size suffix to disambiguate desired instruction operand sizes" do
            expect(subject.format_instruction_name(instruction)).to eq(
              "#{instruction.name}b"
            )
          end
        end

        context "and the immediate's value fits within 16 bits" do
          let(:value) { 0xffff }

          it "must return the instruction name plus a 'w' size suffix to disambiguate desired instruction operand sizes" do
            expect(subject.format_instruction_name(instruction)).to eq(
              "#{instruction.name}w"
            )
          end
        end

        context "and the immediate's value fits within 32 bits" do
          let(:value) { 0xffffffff }

          it "must return the instruction name plus a 'l' size suffix to disambiguate desired instruction operand sizes" do
            expect(subject.format_instruction_name(instruction)).to eq(
              "#{instruction.name}l"
            )
          end
        end
      end
    end
  end

  describe ".format_instruction" do
    context "when the instruction has no operands" do
      let(:instruction) { Ronin::ASM::X86::Instruction.new(:ret) }

      it "must return the instruction name only" do
        expect(subject.format_instruction(instruction)).to eq(
          instruction.name.to_s
        )
      end
    end

    context "when the instruction has one operand" do
      context "and the operand has a size of 1" do
        let(:operand)     { Ronin::ASM::X86::Immediate.new(0x80) }
        let(:operands)    { [operand] }
        let(:instruction) { Ronin::ASM::X86::Instruction.new(:int, *operands) }

        it "must omit the size suffix from the instruction name" do
          expect(subject.format_instruction(instruction)).to eq(
            "#{instruction.name}\t#{subject.format_operands(operands)}"
          )
        end
      end
    end

    context "when the instruction has multiple operands" do
      let(:operand1)    { Ronin::ASM::X86::Registers::EAX }
      let(:operand2)    { Ronin::ASM::X86::Immediate.new(0xff) }
      let(:operands)    { [operand1, operand2] }
      let(:instruction) { Ronin::ASM::X86::Instruction.new(:mov, *operands) }

      it "must return the instruction name and the formatted operands, separated by a tab" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.name}\t#{subject.format_operands(operands)}"
        )
      end
    end

    context "when the instruction starts with a 'j' character (jump instruction)" do
      context "and it's operand is a Ronin::ASM::X86::Register operand" do
        let(:register)    { Ronin::ASM::X86::Registers::EAX }
        let(:instruction) { Ronin::ASM::X86::Instruction.new(:jmp, register) }

        it "must prepend a '*' character to the register" do
          expect(subject.format_instruction(instruction)).to eq(
            "#{instruction.name}\t*#{subject.format_register(register)}"
          )
        end
      end

      context "and it's operand is a Ronin::ASM::X86::Memory operand" do
        let(:register)    { Ronin::ASM::X86::Registers::EAX }
        let(:memory)      { Ronin::ASM::X86::Memory.new(base: register) }
        let(:instruction) { Ronin::ASM::X86::Instruction.new(:jmp, memory) }

        it "must prepend a '*' character to the register" do
          expect(subject.format_instruction(instruction)).to eq(
            "#{instruction.name}\t*#{subject.format_memory(memory)}"
          )
        end
      end
    end

    context "when the instruction name is :call" do
      context "and it's operand is a Ronin::ASM::X86::Register operand" do
        let(:register)    { Ronin::ASM::X86::Registers::EAX }
        let(:instruction) { Ronin::ASM::X86::Instruction.new(:call, register) }

        it "must prepend a '*' character to the register" do
          expect(subject.format_instruction(instruction)).to eq(
            "#{instruction.name}\t*#{subject.format_register(register)}"
          )
        end
      end

      context "and it's operand is a Ronin::ASM::X86::Memory operand" do
        let(:register)    { Ronin::ASM::X86::Registers::EAX }
        let(:memory)      { Ronin::ASM::X86::Memory.new(base: register) }
        let(:instruction) { Ronin::ASM::X86::Instruction.new(:call, memory) }

        it "must prepend a '*' character to the register" do
          expect(subject.format_instruction(instruction)).to eq(
            "#{instruction.name}\t*#{subject.format_memory(memory)}"
          )
        end
      end
    end
  end

  describe ".format_section" do
    it "must return the section name" do
      expect(subject.format_section(:text)).to eq(".text")
    end
  end

  describe ".format_prologue" do
    let(:program) do
      Ronin::ASM::Program.new(arch: :x86) do
        mov eax, 0xff
        ret
      end
    end

    it "must return '.code32'" do
      expect(subject.format_prologue(program)).to eq('.code32')
    end
  end

  include_context "Ronin::ASM::X86::Syntax::Common methods"
end
