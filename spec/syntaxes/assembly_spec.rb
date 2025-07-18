require 'spec_helper'
require 'ronin/asm/syntaxes/assembly'

require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/label'
require 'stringio'
require 'tempfile'

describe Ronin::ASM::Syntaxes::Assembly do
  it "must inherit from Ronin::ASM::Syntaxes::Syntax" do
    expect(described_class).to be < Ronin::ASM::Syntaxes::Syntax
  end

  subject { described_class }

  describe ".format_label" do
    context "when given a Ronin::ASM::Label" do
      let(:label) { Ronin::ASM::Label.new('_start') }

      it "must append a ':' to the name" do
        expect(subject.format_label(label)).to eq('_start:')
      end
    end

    context "when given a Symbol" do
      let(:name) { :_start }

      it "must append a ':' to the name" do
        expect(subject.format_label(name)).to eq('_start:')
      end
    end
  end

  describe ".format_operands" do
    let(:operands) do
      [double('operand1'), double('operand2'), double('operand3')]
    end
    let(:formatted_operands) { %w[op1 op2 op3] }

    it "just call format_operand on each operand and join them together with ',\\t'" do
      expect(subject).to receive(:format_operand).with(operands[0]).and_return(formatted_operands[0])
      expect(subject).to receive(:format_operand).with(operands[1]).and_return(formatted_operands[1])
      expect(subject).to receive(:format_operand).with(operands[2]).and_return(formatted_operands[2])

      expect(subject.format_operands(operands)).to eq(formatted_operands.join(",\t"))
    end
  end

  describe ".format_section" do
    let(:name) { :text }

    it do
      expect {
        subject.format_section(name)
      }.to raise_error(NotImplementedError,"#{subject}.format_section was not implemented")
    end
  end

  describe ".format_prologue" do
    let(:program) { double('Program') }

    it do
      expect {
        subject.format_prologue(program)
      }.to raise_error(NotImplementedError,"#{subject}.format_prologue was not implemented")
    end
  end

  module TestSyntaxInstructions
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

  describe ".format_program" do
    let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
    let(:register) do
      Ronin::ASM::Register.new(:eax, number: 0, size: 4, type: :reg32)
    end
    let(:instructions) do
      [
        TestSyntaxInstructions::MOV.new(register,immediate),
        TestSyntaxInstructions::PUSH.new(register),
        TestSyntaxInstructions::RET.new
      ]
    end
    let(:program) do
      double('Program', instructions: instructions)
    end

    let(:formatted_prologue)     { '<prologue>' }
    let(:formatted_text_section) { '<text-section>' }
    let(:formatted_start_label)  { '_start:' }
    let(:formatted_instructions) do
      %w[
        <instruction1>
        <instruction2>
        <instruction3>
      ]
    end

    it "must call .format_prologue, then .format_section(:text), then .format_label(:_start), and then .format_instruction for each instruction" do
      expect(subject).to receive(:format_prologue).with(program).and_return(formatted_prologue)
      expect(subject).to receive(:format_section).with(:text).and_return(formatted_text_section)

      expect(subject).to receive(:format_instruction).with(instructions[0]).and_return(formatted_instructions[0])
      expect(subject).to receive(:format_instruction).with(instructions[1]).and_return(formatted_instructions[1])
      expect(subject).to receive(:format_instruction).with(instructions[2]).and_return(formatted_instructions[2])

      subject.format_program(program)
    end

    it "must tab indent each instruction line in the resulting string and append a newline" do
      allow(subject).to receive(:format_prologue).with(program).and_return(formatted_prologue)
      allow(subject).to receive(:format_section).with(:text).and_return(formatted_text_section)

      allow(subject).to receive(:format_instruction).with(instructions[0]).and_return(formatted_instructions[0])
      allow(subject).to receive(:format_instruction).with(instructions[1]).and_return(formatted_instructions[1])
      allow(subject).to receive(:format_instruction).with(instructions[2]).and_return(formatted_instructions[2])

      expect(subject.format_program(program)).to eq(
        [
          formatted_prologue,
          formatted_text_section,
          formatted_start_label,
          "\t#{formatted_instructions[0]}",
          "\t#{formatted_instructions[1]}",
          "\t#{formatted_instructions[2]}",
          ''
        ].join($/)
      )
    end

    it "must tab indent each instruction line in the resulting string and append a newline" do
      allow(subject).to receive(:format_prologue).with(program).and_return(formatted_prologue)
      allow(subject).to receive(:format_section).with(:text).and_return(formatted_text_section)

      allow(subject).to receive(:format_instruction).with(instructions[0]).and_return(formatted_instructions[0])
      allow(subject).to receive(:format_instruction).with(instructions[1]).and_return(formatted_instructions[1])
      allow(subject).to receive(:format_instruction).with(instructions[2]).and_return(formatted_instructions[2])

      expect(subject.format_program(program).encoding).to eq(Encoding::UTF_8)
    end

    context "when the program's instructions contains a Label" do
      let(:instructions) do
        [
          TestSyntaxInstructions::MOV.new(register,immediate),
          Ronin::ASM::Label.new('_label1'),
          TestSyntaxInstructions::PUSH.new(register),
          Ronin::ASM::Label.new('_label2'),
          TestSyntaxInstructions::RET.new
        ]
      end

      let(:formatted_instructions) do
        %w[
          <instruction1>
          _label1:
          <instruction2>
          _label2:
          <instruction3>
        ]
      end

      it "must call .format_label with each Label" do
        allow(subject).to receive(:format_prologue).with(program).and_return(formatted_prologue)
        allow(subject).to receive(:format_section).with(:text).and_return(formatted_text_section)
        allow(subject).to receive(:format_label).with(:_start).and_return(formatted_start_label)

        expect(subject).to receive(:format_instruction).with(instructions[0]).and_return(formatted_instructions[0])
        expect(subject).to receive(:format_label).with(instructions[1]).and_return(formatted_instructions[1])
        expect(subject).to receive(:format_instruction).with(instructions[2]).and_return(formatted_instructions[2])
        expect(subject).to receive(:format_label).with(instructions[3]).and_return(formatted_instructions[3])
        expect(subject).to receive(:format_instruction).with(instructions[4]).and_return(formatted_instructions[4])

        subject.format_program(program)
      end

      it "must not tab indent the labels in the resulting string" do
        allow(subject).to receive(:format_prologue).with(program).and_return(formatted_prologue)
        allow(subject).to receive(:format_section).with(:text).and_return(formatted_text_section)

        allow(subject).to receive(:format_instruction).with(instructions[0]).and_return(formatted_instructions[0])
        allow(subject).to receive(:format_instruction).with(instructions[2]).and_return(formatted_instructions[2])
        allow(subject).to receive(:format_instruction).with(instructions[4]).and_return(formatted_instructions[4])

        expect(subject.format_program(program)).to eq(
          [
            formatted_prologue,
            formatted_text_section,
            formatted_start_label,
            "\t#{formatted_instructions[0]}",
            "#{formatted_instructions[1]}",
            "\t#{formatted_instructions[2]}",
            "#{formatted_instructions[3]}",
            "\t#{formatted_instructions[4]}",
            ''
          ].join($/)
        )
      end
    end
  end

  describe "#write_prologue" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:prologue) { '<prologue>' }
    let(:program)  { double('Program') }

    it "must write the result of .format_prologue to the output stream" do
      expect(described_class).to receive(:format_prologue).with(program).and_return(prologue)

      subject.write_prologue(program)

      expect(output.string).to eq("#{prologue}#{$/}")
    end
  end

  describe "#write_section" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:section) { '<section-name>' }
    let(:name)    { :text }

    it "must write the result of .format_section to the output stream" do
      expect(described_class).to receive(:format_section).with(name).and_return(section)

      subject.write_section(name)

      expect(output.string).to eq("#{section}#{$/}")
    end
  end

  describe "#write_label" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    context "when given a Ronin::ASM::Label" do
      let(:label) { Ronin::ASM::Label.new('label1') }

      it "must write the unindented result of .format_label to the output stream" do
        subject.write_label(label)

        expect(output.string).to eq("#{described_class.format_label(label)}#{$/}")
      end
    end

    context "when given a Symbol" do
      let(:name) { :_start }

      it "must write the unindented result of .format_label to the output stream" do
        subject.write_label(name)

        expect(output.string).to eq("#{described_class.format_label(name)}#{$/}")
      end
    end
  end

  describe "#write_instruction" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
    let(:register) do
      Ronin::ASM::Register.new(:eax, number: 0, size: 4, type: :reg32)
    end
    let(:instruction) do
      TestSyntaxInstructions::MOV.new(register,immediate)
    end
    let(:formatted_instruction) { '<instruction>' }

    it "must write the tab-indented result of .format_instruction to the output stream" do
      expect(described_class).to receive(:format_instruction).with(instruction).and_return(formatted_instruction)

      subject.write_instruction(instruction)

      expect(output.string).to eq("\t#{formatted_instruction}#{$/}")
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
        TestSyntaxInstructions::MOV.new(register,immediate),
        TestSyntaxInstructions::PUSH.new(register),
        TestSyntaxInstructions::RET.new
      ]
    end
    let(:program) do
      double('Program', instructions: instructions)
    end

    let(:formatted_prologue)     { '<prologue>' }
    let(:formatted_text_section) { '<text-section>' }
    let(:formatted_start_label)  { '_start:' }
    let(:formatted_instructions) do
      %w[
        <instruction1>
        <instruction2>
        <instruction3>
      ]
    end

    it "must call write_prologue with the program, then write_section(:text), then write_label(:_start), and then write_instruction for each instruction" do
      allow(described_class).to receive(:format_prologue).with(program).and_return(formatted_prologue)
      allow(described_class).to receive(:format_section).with(:text).and_return(formatted_text_section)

      allow(described_class).to receive(:format_instruction).with(instructions[0]).and_return(formatted_instructions[0])
      allow(described_class).to receive(:format_instruction).with(instructions[1]).and_return(formatted_instructions[1])
      allow(described_class).to receive(:format_instruction).with(instructions[2]).and_return(formatted_instructions[2])

      expect(subject).to receive(:write_instruction).with(instructions[0])
      expect(subject).to receive(:write_instruction).with(instructions[1])
      expect(subject).to receive(:write_instruction).with(instructions[2])

      subject.write_program(program)
    end

    context "when the program's instructions contains a Label" do
      let(:label1) { Ronin::ASM::Label.new('_label1') }
      let(:label2) { Ronin::ASM::Label.new('_label2') }
      let(:instructions) do
        [
          TestSyntaxInstructions::MOV.new(register,immediate),
          label1,
          TestSyntaxInstructions::PUSH.new(register),
          label2,
          TestSyntaxInstructions::RET.new
        ]
      end

      let(:formatted_instructions) do
        [
          '<instruction1>',
          "_label1:",
          '<instruction2>',
          "_label2:",
          '<instruction3>'
        ]
      end

      it "must call #write_label with each Label in Program#instructions" do
        allow(described_class).to receive(:format_prologue).with(program).and_return(formatted_prologue)
        allow(described_class).to receive(:format_section).with(:text).and_return(formatted_text_section)

        allow(described_class).to receive(:format_instruction).with(instructions[0]).and_return(formatted_instructions[0])
        allow(described_class).to receive(:format_instruction).with(instructions[2]).and_return(formatted_instructions[2])
        allow(described_class).to receive(:format_instruction).with(instructions[4]).and_return(formatted_instructions[4])

        allow(subject).to receive(:write_label).with(:_start)
        expect(subject).to receive(:write_label).with(label1)
        expect(subject).to receive(:write_label).with(label2)

        subject.write_program(program)
      end
    end
  end
end
