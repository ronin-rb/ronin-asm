require 'spec_helper'
require 'ronin/asm/x86/syntax/intel'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/register'
require 'ronin/asm/x86/memory'
require 'ronin/asm/x86/instruction'
require 'ronin/asm/program'

require_relative 'common_examples'

describe Ronin::ASM::X86::Syntax::Intel do
  it "must inherit from Ronin::ASM::X86::Syntax::Common" do
    expect(described_class).to be < Ronin::ASM::X86::Syntax::Common
  end

  subject { described_class }

  describe ".format_immediate" do
    let(:operand) { Ronin::ASM::Immediate.new(255, size: 1) }

    it "must prepend a size specifier" do
      expect(subject.format_immediate(operand)).to eq("BYTE 0xff")
    end
  end

  describe ".format_register" do
    let(:register) { Ronin::ASM::Register.new(:eax, size: 4, type: :reg32) }

    it "must return the register name" do
      expect(subject.format_register(register)).to eq("eax")
    end
  end

  describe ".format_memory" do
    let(:register) { Ronin::ASM::X86::Register.new(:eax, size: 4) }
    let(:operand)  { Ronin::ASM::X86::Memory.new(base: register) }

    it "must enclose the memory in brackets" do
      expect(subject.format_memory(operand)).to eq("[eax]")
    end

    context "when operand size does not match the base size" do
      let(:size) { 2 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, size: size)
      end

      it "must specify the size" do
        expect(subject.format_memory(operand)).to eq("WORD [eax]")
      end
    end

    context "with an displacement" do
      let(:displacement) { 255 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, displacement: displacement)
      end

      it "must add the displacement to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+0xff]")
      end

      context "when 0" do
        let(:operand) { Ronin::ASM::X86::Memory.new(base: register, displacement: 0) }

        it "must omit the displacement" do
          expect(subject.format_memory(operand)).to eq("[eax]")
        end
      end
    end

    context "with an index" do
      let(:index)   { Ronin::ASM::X86::Register.new(:esi, size: 4) }
      let(:operand) { Ronin::ASM::X86::Memory.new(base: register, index: index) }

      it "must add the index to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+esi]")
      end

      context "with a scale" do
        let(:scale)   { 4 }
        let(:operand) do
          Ronin::ASM::X86::Memory.new(base: register, index: index, scale: scale)
        end

        it "must multiple the index by the scale" do
          expect(subject.format_memory(operand)).to eq("[eax+esi*0x4]")
        end
      end
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
      let(:operand1) { Ronin::ASM::Register.new(:eax, size: 4, type: :reg32) }
      let(:operand2) { Ronin::ASM::Immediate.new(0xff, size: 1) }
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
            jl  _loop
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

  include_context "Ronin::ASM::X86::Syntax::Common methods"
end
