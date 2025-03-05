require 'spec_helper'
require 'ronin/asm/syntax/intel'

require 'ronin/asm/register'
require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/instruction'
require 'ronin/asm/program'

describe Ronin::ASM::Syntax::Intel do
  subject { described_class }

  describe ".format_register" do
    let(:register) { Ronin::ASM::X86::Register.new(:eax, width: 4) }

    it "must return the register name" do
      expect(subject.format_register(register)).to eq("eax")
    end
  end

  describe ".format_immediate" do
    let(:operand) { Ronin::ASM::X86::Immediate.new(255, width: 1) }

    it "must prepend a size specifier" do
      expect(subject.format_immediate(operand)).to eq("BYTE 0xff")
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

    context "when the instruction has operands" do
      let(:operand1) { Ronin::ASM::X86::Register.new(:eax, width: 4) }
      let(:operand2) { Ronin::ASM::X86::Immediate.new(0xff, width: 1) }
      let(:operands) { [operand1, operand2] }
      let(:instruction) do
        Ronin::ASM::Instruction.new(:mov, *operands)
      end

      it "must return the instruction name followed by the formatted operands, separated by tabs" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.name}\t#{subject.format_operands(operands)}"
        )
      end
    end
  end

  describe ".format_section" do
    it "must return the section name" do
      expect(subject.format_section(:text)).to eq("section .text")
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
        "BITS 32",
        "section .text",
        "_start:",
        "\tmov\teax,\tBYTE 0xff",
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
          "BITS 32",
          "section .text",
          "_start:",
          "\tmov\teax,\tBYTE 0x0",
          "_loop:",
          "\tinc\teax",
          "\tcmp\teax,\tBYTE 0xa",
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
          mov  rax, 0xff
          ret
        end
      end

      it "must include start with the '.code64' directive" do
        expect(subject.format_program(program)).to match(/^BITS 64$/)
      end
    end
  end
end
