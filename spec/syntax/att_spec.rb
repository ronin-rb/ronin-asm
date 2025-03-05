require 'spec_helper'
require 'ronin/asm/syntax/att'

require 'ronin/asm/register'
require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/instruction'
require 'ronin/asm/program'

describe Ronin::ASM::Syntax::ATT do
  subject { described_class }

  describe ".format_register" do
    let(:register) { Ronin::ASM::X86::Register.new(:eax, width: 4) }

    it "must prepend a '%' to the register name" do
      expect(subject.format_register(register)).to eq("%eax")
    end
  end

  describe ".format_immediate" do
    let(:operand) { Ronin::ASM::X86::Immediate.new(255, width: 1) }

    it "must prepend a '$' to the immediate" do
      expect(subject.format_immediate(operand)).to eq("$0xff")
    end
  end

  describe ".format_instruction" do
    context "when the instruction has no operands" do
      let(:instruction) { Ronin::ASM::Instruction.new(:ret) }

      it "must return the instruction name only" do
        expect(subject.format_instruction(instruction)).to eq(
          instruction.name.to_s
        )
      end
    end

    context "when the instruction has one operand" do
      context "and the operand has a width of 1" do
        let(:operand)     { Ronin::ASM::Immediate.new(0x80, width: 1) }
        let(:operands)    { [operand] }
        let(:instruction) { Ronin::ASM::Instruction.new(:int, *operands) }

        it "must omit the size suffix from the instruction name" do
          expect(subject.format_instruction(instruction)).to eq(
            "#{instruction.name}\t#{subject.format_operands(operands)}"
          )
        end
      end
    end

    context "when the instruction has multiple operands" do
      let(:operand1)    { Ronin::ASM::Register.new(:eax, width: 4, type: :reg32) }
      let(:operand2)    { Ronin::ASM::Immediate.new(0xff, width: 1) }
      let(:operands)    { [operand1, operand2] }
      let(:instruction) { Ronin::ASM::Instruction.new(:mov, *operands) }

      it "must return the instruction name, with a size suffix, and the formatted operands, separated by a tab" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.name}l\t#{subject.format_operands(operands)}"
        )
      end
    end
  end

  describe ".format_section" do
    it "must return the section name" do
      expect(subject.format_section(:text)).to eq(".text")
    end
  end

  describe ".format_program" do
    let(:program) do
      Ronin::ASM::Program.new(arch: :x86) do
        mov eax, 0xff
        ret
      end
    end

    it "must output the _start label and the program" do
      asm = subject.format_program(program)

      expect(asm).to eq([
        ".code32",
        ".text",
        "_start:",
        "\tmovl\t$0xff,\t%eax",
        "\tret",
        ""
      ].join($/))
    end

    context "when formatting labels" do
      let(:program) do
        Ronin::ASM::Program.new(arch: :x86) do
          mov eax, 0

          _loop do
            inc eax
            cmp eax, 10
            jl  :_loop
          end

          ret
        end
      end

      it "must format both labels and instructions" do
        expect(subject.format_program(program)).to eq([
          ".code32",
          ".text",
          "_start:",
          "\tmovl\t$0x0,\t%eax",
          "_loop:",
          "\tincl\t%eax",
          "\tcmpl\t$0xa,\t%eax",
          "\tjl\t_loop",
          "\tret",
          ""
        ].join($/))
      end
    end

    context "when the program arch is :amd64" do
      let(:program) do
        Ronin::ASM::Program.new(arch: :amd64) do
          push rax
          push rbx
          mov 0xff, rax
          ret
        end
      end

      it "must include start with the '.code64' directive" do
        expect(subject.format_program(program)).to match(/^\.code64$/)
      end
    end
  end
end
