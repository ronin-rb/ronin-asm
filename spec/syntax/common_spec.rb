require 'spec_helper'
require 'ronin/asm/syntax/common'

require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/label'
require 'stringio'
require 'tempfile'

describe Ronin::ASM::Syntax::Common do
  subject { described_class }

  describe ".format_keyword" do
    let(:name) { :_start }

    it "must convert a keyword to a String" do
      expect(subject.format_keyword(name)).to eq(name.to_s)
    end
  end

  describe ".format_register" do
    let(:register) { double('Register') }

    it do
      expect {
        subject.format_register(register)
      }.to raise_error(NotImplementedError,"#{subject}.format_register was not implemented")
    end
  end

  describe ".format_integer" do
    let(:int) { 255 }

    it "must convert it into a hexadecimal value" do
      expect(subject.format_integer(int)).to eq("0xff")
    end

    context "when given a negative number" do
      let(:int) { -255 }

      it "must convert it into a hexadecimal value" do
        expect(subject.format_integer(int)).to eq("-0xff")
      end
    end
  end

  describe ".format_immediate" do
    let(:immediate) { double('Immediate') }

    it do
      expect {
        subject.format_immediate(immediate)
      }.to raise_error(NotImplementedError,"#{subject}.format_immediate was not implemented")
    end
  end

  describe ".format_memory" do
    let(:memory) { double('Memory') }

    it do
      expect {
        subject.format_memory(memory)
      }.to raise_error(NotImplementedError,"#{subject}.format_memory was not implemented")
    end
  end

  describe ".format_label_ref" do
    let(:name)      { :_start  }
    let(:label_ref) { Ronin::ASM::LabelRef.new(name) }

    it "must return the LabelRef#name as a String" do
      expect(subject.format_label_ref(label_ref)).to eq(name.to_s)
    end
  end

  describe ".format_label" do
    let(:name)  { :_start  }
    let(:label) { Ronin::ASM::Label.new(name) }

    it "must append a ':' to the name" do
      expect(subject.format_label(label)).to eq('_start:')
    end
  end

  describe ".format_operand" do
    context "when given an Immediate value" do
      let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
      let(:string)    { double('formatted assembly') }

      it "must call format_immediate" do
        expect(subject).to receive(:format_immediate).with(immediate).and_return(string)

        expect(subject.format_operand(immediate)).to be(string)
      end
    end

    context "when given a Register value" do
      let(:register) do
        Ronin::ASM::Register.new(:eax, number: 0, width: 4, type: :reg32)
      end
      let(:string) { double('formatted assembly') }

      it "must call format_immediate" do
        expect(subject).to receive(:format_register).with(register).and_return(string)

        expect(subject.format_operand(register)).to be(string)
      end
    end

    context "when given a Memory value" do
      let(:register) do
        Ronin::ASM::Register.new(:eax, number: 0, width: 4, type: :reg32)
      end
      let(:memory) { Ronin::ASM::Memory.new(register) }
      let(:string) { double('formatted assembly') }

      it "must call format_immediate" do
        expect(subject).to receive(:format_memory).with(memory).and_return(string)

        expect(subject.format_operand(memory)).to be(string)
      end
    end

    context "when given a Ronin::ASM::LabelRef value" do
      let(:label_ref) { Ronin::ASM::LabelRef.new('_label') }

      it "must call format_keyword" do
        expect(subject.format_operand(label_ref)).to be(label_ref.name)
      end
    end

    context "when given an unknown operand object" do
      let(:operand) { Object.new }

      it do
        expect {
          subject.format_operand(operand)
        }.to raise_error(NotImplementedError,"cannot format unknown operand object: #{operand.inspect}")
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

  describe ".format_instruction" do
    let(:instruction) { double('Instruction') }

    it do
      expect {
        subject.format_instruction(instruction)
      }.to raise_error(NotImplementedError,"#{subject}.format_instruction was not implemented")
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

  describe ".format_program" do
    let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
    let(:register) do
      Ronin::ASM::Register.new(:eax, number: 0, width: 4, type: :reg32)
    end
    let(:instructions) do
      [
        Ronin::ASM::Instruction.new(:mov, register, immediate),
        Ronin::ASM::Instruction.new(:push, register),
        Ronin::ASM::Instruction.new(:ret)
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
          Ronin::ASM::Instruction.new(:mov, register, immediate),
          Ronin::ASM::Label.new('_label1'),
          Ronin::ASM::Instruction.new(:push, register),
          Ronin::ASM::Label.new('_label2'),
          Ronin::ASM::Instruction.new(:ret)
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

  describe "#initialize" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    it "must set #output" do
      expect(subject.output).to be(output)
    end
  end

  describe ".write" do
    subject { described_class }

    let(:tempfile) { Tempfile.new(['ronin-asm-','.s']) }
    let(:path)     { tempfile.path }
    let(:syntax)   { double('Syntax') }
    let(:program)  { double('Program') }

    it "must write the Assembly program to the file" do
      expect(subject).to receive(:new).and_return(syntax)
      expect(syntax).to receive(:write_program).with(program)

      subject.write(path,program)
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

    let(:name)  { :text }

    it "must write the result of .format_label to the output stream" do
      subject.write_label(name)

      expect(output.string).to eq("#{described_class.format_label(name)}#{$/}")
    end
  end

  describe "#write_instruction" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
    let(:register) do
      Ronin::ASM::Register.new(:eax, number: 0, width: 4, type: :reg32)
    end
    let(:instruction) do
      Ronin::ASM::Instruction.new(:mov, register, immediate)
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
      Ronin::ASM::Register.new(:eax, number: 0, width: 4, type: :reg32)
    end
    let(:instructions) do
      [
        Ronin::ASM::Instruction.new(:mov, register, immediate),
        Ronin::ASM::Instruction.new(:push, register),
        Ronin::ASM::Instruction.new(:ret)
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
          Ronin::ASM::Instruction.new(:mov, register, immediate),
          label1,
          Ronin::ASM::Instruction.new(:push, register),
          label2,
          Ronin::ASM::Instruction.new(:ret)
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
