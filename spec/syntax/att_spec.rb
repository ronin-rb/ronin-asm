require 'spec_helper'
require 'ronin/asm/syntax/att'

require 'ronin/asm/register'
require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/instruction'
require 'ronin/asm/program'

describe Ronin::ASM::Syntax::ATT do
  subject { described_class }

  describe ".emit_register" do
    let(:register) { Ronin::ASM::Register.new(:eax, width: 4) }

    it "must prepend a '%' to the register name" do
      expect(subject.emit_register(register)).to eq("%eax")
    end
  end

  describe ".emit_immediate" do
    let(:operand) { Ronin::ASM::Immediate.new(255, width: 1) }

    it "must prepend a '$' to the immediate" do
      expect(subject.emit_immediate(operand)).to eq("$0xff")
    end
  end

  describe ".emit_memory" do
    let(:register) { Ronin::ASM::Register.new(:eax, width: 4) }
    let(:operand)  { Ronin::ASM::Memory.new(base: register) }

    it "must enclose the memory in parenthesis" do
      expect(subject.emit_memory(operand)).to eq("(%eax)")
    end

    context "with an displacement" do
      let(:displacement) { 255 }
      let(:operand) do
        Ronin::ASM::Memory.new(base: register, displacement: displacement)
      end

      it "must prepend the displacement as an integer" do
        expect(subject.emit_memory(operand)).to eq("0xff(%eax)")
      end

      context "when 0" do
        let(:operand) do
          Ronin::ASM::Memory.new(base: register, displacement: 0)
        end

        it "must omit the displacement" do
          expect(subject.emit_memory(operand)).to eq("(%eax)")
        end
      end
    end

    context "with an index" do
      let(:index)   { Ronin::ASM::Register.new(:esi, width: 4) }
      let(:operand) { Ronin::ASM::Memory.new(base: register, index: index) }

      it "must include the index argument" do
        expect(subject.emit_memory(operand)).to eq("(%eax,%esi)")
      end

      context "with a scale" do
        let(:scale)   { 4 }
        let(:operand) do
          Ronin::ASM::Memory.new(base: register, index: index, scale: scale)
        end

        it "must prepend the scale argument as a decimal" do
          expect(subject.emit_memory(operand)).to eq("(%eax,%esi,#{scale})")
        end
      end
    end
  end

  describe ".emit_instruction" do
    context "with no operands" do
      let(:instruction) { Ronin::ASM::Instruction.new(:ret) }

      it "must emit the instruction name" do
        expect(subject.emit_instruction(instruction)).to eq('ret')
      end
    end

    context "with one operand" do
      context "with width of 1" do
        let(:immediate)   { Ronin::ASM::Immediate.new(0x80, width: 1) }
        let(:instruction) { Ronin::ASM::Instruction.new(:int, immediate) }

        it "must not append a size specifier to the instruction name" do
          expect(subject.emit_instruction(instruction)).to eq("int\t$0x80")
        end
      end
    end

    context "with multiple operands" do
      let(:register)    { Ronin::ASM::Register.new(:eax, width: 4) }
      let(:immediate)   { Ronin::ASM::Immediate.new(0xff, width: 1)  }
      let(:instruction) { Ronin::ASM::Instruction.new(:mov, register, immediate) }

      it "must add a size specifier to the instruction name" do
        expect(subject.emit_instruction(instruction)).to match(/^movl/)
      end

      it "must emit the operands" do
        expect(subject.emit_instruction(instruction)).to eq("movl\t$0xff,\t%eax")
      end
    end
  end

  describe ".emit_section" do
    it "must emit the section name" do
      expect(subject.emit_section(:text)).to eq(".text")
    end
  end

  describe ".emit_program" do
    let(:program) do
      Ronin::ASM::Program.new(arch: :x86) do
        mov eax, 0xff
        ret
      end
    end

    it "must output the _start label and the program" do
      asm = subject.emit_program(program)

      expect(asm).to eq([
        ".code32",
        ".text",
        "_start:",
        "\tmovl\t$0xff,\t%eax",
        "\tret",
        ""
      ].join($/))
    end

    context "when emitting labels" do
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

      it "must emit both labels and instructions" do
        expect(subject.emit_program(program)).to eq([
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
        expect(subject.emit_program(program)).to match(/^\.code64$/)
      end
    end
  end
end
