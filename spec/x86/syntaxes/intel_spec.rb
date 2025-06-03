require 'spec_helper'
require 'ronin/asm/x86/syntaxes/intel'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/memory'
require 'ronin/asm/x86/instruction'
require 'ronin/asm/program'

require_relative 'common_examples'

describe Ronin::ASM::X86::Syntaxes::Intel do
  it "must inherit from Ronin::ASM::X86::Syntaxes::Common" do
    expect(described_class).to be < Ronin::ASM::X86::Syntaxes::Common
  end

  subject { described_class }

  describe ".format_immediate" do
    context "when the immediate's #size is 1" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(255, size: 1) }

      it "must prepend the BYTE size specifier" do
        expect(subject.format_immediate(operand)).to eq("BYTE 0xff")
      end
    end

    context "when the immediate's #size is 2" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(255, size: 2) }

      it "must prepend the WORD size specifier" do
        expect(subject.format_immediate(operand)).to eq("WORD 0xff")
      end
    end

    context "when the immediate's #size is 4" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(255, size: 4) }

      it "must prepend the DWORD size specifier" do
        expect(subject.format_immediate(operand)).to eq("DWORD 0xff")
      end
    end

    context "when the immediate's #size is 8" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(255, size: 8) }

      it "must prepend the QWORD size specifier" do
        expect(subject.format_immediate(operand)).to eq("QWORD 0xff")
      end
    end

    context "when the immediate's #size is 16" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(255, size: 16) }

      it "must prepend the OWORD size specifier" do
        expect(subject.format_immediate(operand)).to eq("OWORD 0xff")
      end
    end

    context "when the immediate's #size is 32" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(255, size: 32) }

      it "must prepend the YWORD size specifier" do
        expect(subject.format_immediate(operand)).to eq("YWORD 0xff")
      end
    end

    context "when the immediate's #size is 64" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(255, size: 64) }

      it "must prepend the ZWORD size specifier" do
        expect(subject.format_immediate(operand)).to eq("ZWORD 0xff")
      end
    end
  end

  describe ".format_register" do
    let(:register) { Ronin::ASM::X86::Registers::EAX }

    it "must return the register name" do
      expect(subject.format_register(register)).to eq("eax")
    end
  end

  describe ".format_memory" do
    let(:register) { Ronin::ASM::X86::Registers::EAX }
    let(:operand)  { Ronin::ASM::X86::Memory.new(base: register) }

    it "must enclose the memory operand's base register in brackets" do
      expect(subject.format_memory(operand)).to eq("[eax]")
    end

    context "when operand size does not match the base size" do
      let(:size) { 2 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, size: size)
      end

      it "must add a size specifier keyword" do
        expect(subject.format_memory(operand)).to eq("WORD [eax]")
      end
    end

    context "when the Ronin::ASM::X86::Memory object has a displacement" do
      let(:displacement) { 255 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, displacement: displacement)
      end

      it "must add the displacement to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+#{displacement}]")
      end

      context "but it's 0" do
        let(:displacement) { 0 }

        it "must omit the displacement" do
          expect(subject.format_memory(operand)).to eq("[eax]")
        end
      end

      context "but it's negative" do
        let(:displacement) { -4 }

        it "must subtract the diplacement from the base" do
          expect(subject.format_memory(operand)).to eq("[eax-#{displacement.abs}]")
        end
      end
    end

    context "when the Ronin::ASM::X86::Memory object has an index" do
      let(:index)   { Ronin::ASM::X86::Registers::ESI }
      let(:operand) { Ronin::ASM::X86::Memory.new(base: register, index: index) }

      it "must add the index to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+esi]")
      end

      context "and a scale" do
        let(:scale)   { 4 }
        let(:operand) do
          Ronin::ASM::X86::Memory.new(base: register, index: index, scale: scale)
        end

        it "must multiple the index by the scale" do
          expect(subject.format_memory(operand)).to eq("[eax+esi*4]")
        end
      end
    end
  end

  describe ".format_operands" do
    context "when the first operand is of type :mem and the second operand is of type :imm" do
      let(:register)  { Ronin::ASM::X86::Registers::EBX }
      let(:memory)    { Ronin::ASM::X86::Memory.new(base: register) }
      let(:immediate) { Ronin::ASM::X86::Immediate.new(value) }
      let(:operands)  { [memory, immediate] }

      context "and the immediate's value fits within 8 bits" do
        let(:value) { 0xff }

        it "must add a BYTE size specifier to the immediate operand to disambiguate their desired sizes" do
          expect(subject.format_operands(operands)).to eq(
            "BYTE #{subject.format_memory(memory)},\t#{subject.format_immediate(immediate)}"
          )
        end
      end

      context "and the immediate's value bit length is between 16 and 8 bits" do
        let(:value) { 0xffff }

        it "must add a WORD size specifier to the immediate operand to disambiguate their desired sizes" do
          expect(subject.format_operands(operands)).to eq(
            "WORD #{subject.format_memory(memory)},\t#{subject.format_immediate(immediate)}"
          )
        end
      end

      context "and the immediate's value bit length is between 32 and 16 bits" do
        let(:value) { 0xffffffff }

        it "must add a DWORD size specifier to the immediate operand to disambiguate their desired sizes" do
          expect(subject.format_operands(operands)).to eq(
            "DWORD #{subject.format_memory(memory)},\t#{subject.format_immediate(immediate)}"
          )
        end
      end
    end

    context "when at least one of the operands has a defined size" do
      let(:register)  { Ronin::ASM::X86::Registers::EBX }
      let(:memory)    { Ronin::ASM::X86::Memory.new(base: register) }
      let(:immediate) { Ronin::ASM::X86::Immediate.new(0x41, size: 1) }
      let(:operands)  { [memory, immediate] }

      it "must format the operands without adding a size specifier to the destination operand" do
          expect(subject.format_operands(operands)).to eq(
            "#{subject.format_memory(memory)},\t#{subject.format_immediate(immediate)}"
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

      it "must return the instruction name only" do
        expect(subject.format_instruction(instruction)).to eq(
          instruction.intel_name.to_s
        )
      end
    end

    context "when the instruction has operands" do
      module TestX86Instructions
        class MOV < Ronin::ASM::X86::Instruction

          def name = :mov

        end
      end

      let(:operand1) { Ronin::ASM::X86::Registers::EAX }
      let(:operand2) { Ronin::ASM::X86::Immediate.new(0xff, size: 1) }
      let(:operands) { [operand1, operand2] }

      let(:instruction_class) { TestX86Instructions::MOV }
      let(:instruction)       { instruction_class.new(*operands) }

      it "must return the instruction name followed by the formatted operands, separated by tabs" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.intel_name}\t#{subject.format_operands(operands)}"
        )
      end
    end
  end

  describe ".format_section" do
    it "must return the section name" do
      expect(subject.format_section(:text)).to eq("section .text")
    end
  end

  describe ".format_prologue" do
    let(:program) do
      Ronin::ASM::Program.new(arch: :x86) do
        mov eax, 0xff
        ret
      end
    end

    it "must return 'BITS 32'" do
      expect(subject.format_prologue(program)).to eq('BITS 32')
    end
  end

  include_context "Ronin::ASM::X86::Syntaxes::Common methods"
end
