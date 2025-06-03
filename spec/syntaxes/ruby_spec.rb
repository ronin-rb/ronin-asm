require 'spec_helper'
require 'ronin/asm/syntaxes/ruby'

require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/label'
require 'stringio'
require 'tempfile'

describe Ronin::ASM::Syntaxes::Ruby do
  it "must inherit from Ronin::ASM::Syntaxes::Syntax" do
    expect(described_class).to be < Ronin::ASM::Syntaxes::Syntax
  end

  subject { described_class }

  describe ".format_register" do
    let(:register) { Ronin::ASM::Register.new(:eax, size: 4, type: :reg32) }

    it "must return the register name" do
      expect(subject.format_register(register)).to eq("eax")
    end
  end

  describe ".format_symbol_ref" do
    context "when the symbol reference name is a valid Ruby method" do
      let(:symbol_ref) { Ronin::ASM::SymbolRef.new('label1') }

      it "must return the symbol reference name as a Ruby method call" do
        expect(subject.format_symbol_ref(symbol_ref)).to eq(symbol_ref.name)
      end
    end

    context "when the symbol reference name is not a valid Ruby method" do
      let(:symbol_ref) { Ronin::ASM::SymbolRef.new('foo@bar') }

      it "must embed the escaped symbol reference name into the symbol_ref() method" do
        expect(subject.format_symbol_ref(symbol_ref)).to eq(
          "symbol_ref(#{symbol_ref.name.inspect})"
        )
      end
    end
  end

  describe ".format_immediate" do
    context "when the immediate's #size is 1" do
      let(:operand) { Ronin::ASM::Immediate.new(255, size: 1) }

      it "must wrap the immediate value in a byte() size specifier method" do
        expect(subject.format_immediate(operand)).to eq("byte(255)")
      end
    end

    context "when the immediate's #size is 2" do
      let(:operand) { Ronin::ASM::Immediate.new(255, size: 2) }

      it "must wrap the immediate value in a word() size specifier method" do
        expect(subject.format_immediate(operand)).to eq("word(255)")
      end
    end

    context "when the immediate's #size is 4" do
      let(:operand) { Ronin::ASM::Immediate.new(255, size: 4) }

      it "must wrap the immediate value in a dword() size specifier method" do
        expect(subject.format_immediate(operand)).to eq("dword(255)")
      end
    end

    context "when the immediate's #size is 8" do
      let(:operand) { Ronin::ASM::Immediate.new(255, size: 8) }

      it "must wrap the immediate value in a qword() size specifier method" do
        expect(subject.format_immediate(operand)).to eq("qword(255)")
      end
    end
  end

  describe ".format_operands" do
    let(:register) { Ronin::ASM::Register.new(:eax, size: 4, type: :reg32) }
    let(:immediate) { Ronin::ASM::Immediate.new(42) }

    context "when given an Array of one operand" do
      let(:operand)  { immediate }
      let(:operands) { [operand] }

      it "must return the formatted operand" do
        expect(subject.format_operands(operands)).to eq(
          subject.format_operand(operand)
        )
      end
    end

    context "when given an Array of multiple operands" do
      let(:operand1) { register }
      let(:operand2) { immediate }
      let(:operands) { [operand1, operand2] }

      it "must return the formatted operands as a comma and space-separated list" do
        expect(subject.format_operands(operands)).to eq(
          "#{subject.format_operand(operand1)}, #{subject.format_operand(operand2)}"
        )
      end
    end
  end

  describe ".format_label" do
    let(:label) { Ronin::ASM::Label.new('label1') }

    it "must wrap the escaped label name in the label() method" do
      expect(subject.format_label(label)).to eq("label(\"label1\")")
    end
  end

  describe ".format_instruction" do
    context "when the instruction does not have any operands" do
      module TestRubySyntaxInstructions
        class RET < Ronin::ASM::Instruction

          def initialize(**kwargs) = super(**kwargs)

          def name = :ret

        end
      end

      let(:instruction_class) { TestRubySyntaxInstructions::RET }
      let(:instruction)       { instruction_class.new }

      it "must return the instruction name as a String" do
        expect(subject.format_instruction(instruction)).to eq(
          instruction.name.to_s
        )
      end
    end

    context "when the instruction has one operand" do
      module TestRubySyntaxInstructions
        class INT < Ronin::ASM::Instruction

          def initialize(number,**kwargs) = super(number,**kwargs)

          def name = :int

        end
      end

      let(:operand) { Ronin::ASM::Immediate.new(0x80) }

      let(:instruction_class) { TestRubySyntaxInstructions::INT }
      let(:instruction)       { instruction_class.new(operand) }

      it "must return the instruction name followed by a space and the formatted operand" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.name} #{subject.format_operand(operand)}"
        )
      end
    end

    context "when the instruction does have operands" do
      module TestRubySyntaxInstructions
        class MOV < Ronin::ASM::Instruction

          def initialize(dest,src,**kwargs) = super(dest,src,**kwargs)

          def name = :mov

        end
      end

      let(:register)  { Ronin::ASM::Register.new(:eax, size: 4, type: :reg32) }
      let(:immediate) { Ronin::ASM::Immediate.new(42) }
      let(:operands)  { [register, immediate] }

      let(:instruction_class) { TestRubySyntaxInstructions::MOV }
      let(:instruction)       { instruction_class.new(*operands) }

      it "must return the instruction name followed by a space and the formatted operands" do
        expect(subject.format_instruction(instruction)).to eq(
          "#{instruction.name} #{subject.format_operands(operands)}"
        )
      end
    end
  end

  describe ".format_program" do
    module TestRubySyntaxInstructions
      class MOV < Ronin::ASM::Instruction

        def initialize(dest,src,**kwargs) = super(dest,src,**kwargs)

        def name = :mov

      end

      class PUSH < Ronin::ASM::Instruction

        def initialize(operand,**kwargs) = super(operand,**kwargs)

        def name = :push

      end

      class RET < Ronin::ASM::Instruction

        def initialize(**kwargs) = super(**kwargs)

        def name = :ret

      end
    end

    let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
    let(:register) do
      Ronin::ASM::Register.new(:eax, number: 0, size: 4, type: :reg32)
    end
    let(:instructions) do
      [
        TestRubySyntaxInstructions::MOV.new(register,immediate),
        TestRubySyntaxInstructions::PUSH.new(register),
        TestRubySyntaxInstructions::RET.new
      ]
    end
    let(:program) do
      double('Program', arch: :x86_64, os: nil, instructions: instructions)
    end

    it "must add 'Ronin::ASM.new(arch: ...) do' to the first line of the formatted program" do
      expect(subject.format_program(program)).to start_with(
        "Ronin::ASM.new(arch: #{program.arch.inspect}) do#{$/}"
      )
    end

    context "when the program's #os is set" do
      let(:program) do
        double('Program', arch: :x86_64, os: :linux, instructions: instructions)
      end

      it "must add 'Ronin::ASM.new(arch: ..., os: ...) do' to the first line of the formatted program" do
        expect(subject.format_program(program)).to start_with(
          "Ronin::ASM.new(arch: #{program.arch.inspect}, os: #{program.os.inspect}) do#{$/}"
        )
      end
    end

    it "must add each formatted instruction, using .format_instruction, as a new line indented by two spaces" do
      expect(subject.format_program(program).lines[1..-2]).to eq(
        instructions.map { |insn|
          "  #{subject.format_instruction(insn)}#{$/}"
        }
      )
    end

    it "must append a 'end' line to the end of the formatted program" do
      expect(subject.format_program(program)).to end_with("#{$/}end#{$/}")
    end

    context "when the program's instructions contains a Label" do
      let(:instructions) do
        [
          TestRubySyntaxInstructions::MOV.new(register,immediate),
          Ronin::ASM::Label.new('_label1'),
          TestRubySyntaxInstructions::PUSH.new(register),
          Ronin::ASM::Label.new('_label2'),
          TestRubySyntaxInstructions::RET.new
        ]
      end

      it "must format each label using .format_label" do
        expect(subject.format_program(program).lines[1..-2]).to eq(
          [
            "  #{subject.format_instruction(instructions[0])}#{$/}",
            "  #{subject.format_label(instructions[1])}#{$/}",
            "  #{subject.format_instruction(instructions[2])}#{$/}",
            "  #{subject.format_label(instructions[3])}#{$/}",
            "  #{subject.format_instruction(instructions[4])}#{$/}"
          ]
        )
      end
    end
  end

  describe "#write_label" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:label) { Ronin::ASM::Label.new('label1') }

    it "must write the formatted label, indented by two spaces, to the output stream" do
      subject.write_label(label)

      expect(output.string).to eq(
        "  #{described_class.format_label(label)}#{$/}"
      )
    end
  end

  describe "#write_instruction" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
    let(:register) do
      Ronin::ASM::Register.new(:eax, number: 0, size: 4, type: :reg32)
    end

    let(:instruction_class) { TestRubySyntaxInstructions::MOV }
    let(:instruction)       { instruction_class.new(register,immediate) }

    it "must write the formatted instruction, indented by two spaces, to the output stream" do
      subject.write_instruction(instruction)

      expect(output.string).to eq(
        "  #{described_class.format_instruction(instruction)}#{$/}"
      )
    end
  end

  describe "#write_program" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
    let(:register) do
      Ronin::ASM::Register.new(:eax, number: 0, size: 4, type: :reg32)
    end
    let(:instructions) do
      [
        TestRubySyntaxInstructions::MOV.new(register,immediate),
        TestRubySyntaxInstructions::PUSH.new(register),
        TestRubySyntaxInstructions::RET.new
      ]
    end
    let(:program) do
      double('Program', arch: :x86_64, os: nil, instructions: instructions)
    end

    it "must write a 'Ronin::ASM.new(arch: ...) do' as the first line" do
      subject.write_program(program)

      expect(output.string).to start_with(
        "Ronin::ASM.new(arch: #{program.arch.inspect}) do#{$/}"
      )
    end

    context "when the program's #os is set" do
      let(:program) do
        double('Program', arch: :x86_64, os: :linux, instructions: instructions)
      end

      it "must write a 'Ronin::ASM.new(arch: ..., os: ...) do' lien to the output stream" do
        subject.write_program(program)

        expect(output.string).to start_with(
          "Ronin::ASM.new(arch: #{program.arch.inspect}, os: #{program.os.inspect}) do#{$/}"
        )
      end
    end

    it "must format each instruction usign .format_instruction, indent each instruction line by two spaces, before writing each instruction line to the output stream" do
      subject.write_program(program)

      expect(output.string.lines[1..-2]).to eq(
        instructions.map { |insn|
          "  #{described_class.format_instruction(insn)}#{$/}"
        }
      )
    end

    it "must write a 'end' line after writing all instructions and labels to the output stream" do
      subject.write_program(program)

      expect(output.string).to end_with("#{$/}end#{$/}")
    end

    context "when the program's instructions contains a Label" do
      let(:instructions) do
        [
          TestRubySyntaxInstructions::MOV.new(register,immediate),
          Ronin::ASM::Label.new('_label1'),
          TestRubySyntaxInstructions::PUSH.new(register),
          Ronin::ASM::Label.new('_label2'),
          TestRubySyntaxInstructions::RET.new
        ]
      end

      it "must format each label using .format_label, indent each label line by two spaces, before writing each instruction line to the output stream" do
        subject.write_program(program)

        expect(output.string.lines[1..-2]).to eq(
          [
            "  #{described_class.format_instruction(instructions[0])}#{$/}",
            "  #{described_class.format_label(instructions[1])}#{$/}",
            "  #{described_class.format_instruction(instructions[2])}#{$/}",
            "  #{described_class.format_label(instructions[3])}#{$/}",
            "  #{described_class.format_instruction(instructions[4])}#{$/}"
          ]
        )
      end
    end
  end
end
