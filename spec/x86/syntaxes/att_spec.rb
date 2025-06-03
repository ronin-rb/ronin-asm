require 'spec_helper'
require 'ronin/asm/x86/syntaxes/att'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/memory'
require 'ronin/asm/x86/instruction'
require 'ronin/asm/program'

require_relative 'assembly_examples'

describe Ronin::ASM::X86::Syntaxes::ATT do
  it "must inherit from Ronin::ASM::X86::Syntaxes::Assembly" do
    expect(described_class).to be < Ronin::ASM::X86::Syntaxes::Assembly
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
    context "when only given one operand" do
      let(:operand)  { Ronin::ASM::X86::Immediate.new(255) }
      let(:operands) { [operand] }

      it "must format the single operand" do
        expect(subject.format_operands(operands)).to eq(
          "#{subject.format_operand(operand)}"
        )
      end
    end

    context "when given two operands" do
      let(:operand1) { Ronin::ASM::X86::Registers::EAX }
      let(:operand2) { Ronin::ASM::X86::Immediate.new(255) }
      let(:operands) { [operand1, operand2] }

      it "must format the operands as a tab and comma separated list, with the first operand as the last operand" do
        expect(subject.format_operands(operands)).to eq(
          "#{subject.format_operand(operand2)},\t#{subject.format_operand(operand1)}"
        )
      end
    end

    context "when given more than two operands" do
      let(:operand1) { Ronin::ASM::X86::Registers::XMM1 }
      let(:operand2) { Ronin::ASM::X86::Registers::XMM2 }
      let(:operand3) { Ronin::ASM::X86::Immediate.new(1) }
      let(:operands) { [operand1, operand2, operand3] }

      it "must format the operands as a tab and comma separated list, but in reverse order" do
        expect(subject.format_operands(operands)).to eq(
          "#{subject.format_operand(operand3)},\t#{subject.format_operand(operand2)},\t#{subject.format_operand(operand1)}"
        )
      end
    end
  end

  describe ".format_instruction" do
    context "when the instruction has no operands" do
      module TestX86Instructions
        class RET < Ronin::ASM::X86::Instruction

          def initialize(**kwargs) = super(**kwargs)

          def name = :ret

        end
      end

      let(:instruction_class) { TestX86Instructions::MOV }
      let(:instruction)       { instruction_class.new }

      it "must return the instruction's GAS name only" do
        expect(subject.format_instruction(instruction)).to eq(
          instruction.gas_name.to_s
        )
      end
    end

    context "when the instruction has one operand" do
      module TestX86Instructions
        class INT < Ronin::ASM::X86::Instruction

          def initialize(number,**kwargs) = super(number,**kwargs)

          def name = :int

        end
      end

      let(:operand)     { Ronin::ASM::X86::Immediate.new(0x80) }
      let(:operands)    { [operand] }

      let(:instruction_class) { TestX86Instructions::INT }
      let(:instruction)       { instruction_class.new(*operands) }

      it "must return the instruction's GAS name, followed by a tab, and then the singular operand" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.gas_name}\t#{subject.format_operands(operands)}"
        )
      end
    end

    context "when the instruction has multiple operands" do
      module TestX86Instructions
        class MOV < Ronin::ASM::X86::Instruction

          def name = :mov

        end
      end

      let(:operand1)    { Ronin::ASM::X86::Registers::EAX }
      let(:operand2)    { Ronin::ASM::X86::Immediate.new(0xff) }
      let(:operands)    { [operand1, operand2] }

      let(:instruction_class) { TestX86Instructions::MOV }
      let(:instruction)       { instruction_class.new(*operands) }

      it "must return the instruction's GAS name, followed by a tab, and the formatted operand list" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.name}\t#{subject.format_operands(operands)}"
        )
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

  include_context "Ronin::ASM::X86::Syntaxes::Assembly methods"
end
