require 'spec_helper'
require 'ronin/asm/syntaxes/syntax'

require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/label'
require 'stringio'
require 'tempfile'

describe Ronin::ASM::Syntaxes::Syntax do
  subject { described_class }

  describe ".format_register" do
    let(:register) { double('Register') }

    it do
      expect {
        subject.format_register(register)
      }.to raise_error(NotImplementedError,"#{described_class}.format_register was not implemented")
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
      }.to raise_error(NotImplementedError,"#{described_class}.format_immediate was not implemented")
    end
  end

  describe ".format_memory" do
    let(:memory) { double('Memory') }

    it do
      expect {
        subject.format_memory(memory)
      }.to raise_error(NotImplementedError,"#{described_class}.format_memory was not implemented")
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
        Ronin::ASM::Register.new(:eax, number: 0, size: 4, type: :reg32)
      end
      let(:string) { double('formatted assembly') }

      it "must call format_immediate" do
        expect(subject).to receive(:format_register).with(register).and_return(string)

        expect(subject.format_operand(register)).to be(string)
      end
    end

    context "when given a Memory value" do
      let(:register) do
        Ronin::ASM::Register.new(:eax, number: 0, size: 4, type: :reg32)
      end
      let(:memory) { Ronin::ASM::Memory.new(register) }
      let(:string) { double('formatted assembly') }

      it "must call format_immediate" do
        expect(subject).to receive(:format_memory).with(memory).and_return(string)

        expect(subject.format_operand(memory)).to be(string)
      end
    end

    context "when given a Ronin::ASM::SymbolRef value" do
      let(:symbol_ref) { Ronin::ASM::SymbolRef.new('_label') }

      it "must call format_keyword" do
        expect(subject.format_operand(symbol_ref)).to be(symbol_ref.name)
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
      [double('operand1'), double('operand2')]
    end

    it do
      expect {
        subject.format_operands(operands)
      }.to raise_error(NotImplementedError,"#{described_class}.format_operands was not implemented")
    end
  end

  describe ".format_symbol_ref" do
    let(:name)      { :_start  }
    let(:symbol_ref) { Ronin::ASM::SymbolRef.new(name) }

    it "must return the SymbolRef#name as a String" do
      expect(subject.format_symbol_ref(symbol_ref)).to eq(name.to_s)
    end
  end

  describe ".format_label" do
    let(:label) { double('Label') }

    it do
      expect {
        subject.format_label(label)
      }.to raise_error(NotImplementedError,"#{described_class}.format_label was not implemented")
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

  describe ".format_program" do
    let(:program) { double('Program') }

    it do
      expect {
        subject.format_program(program)
      }.to raise_error(NotImplementedError,"#{subject}.format_program was not implemented")
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

  describe "#write_label" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:label)  { Ronin::ASM::Label.new('_start') }

    let(:formatted_label) { '_start:' }

    it "must write the result of .format_label to the output stream" do
      expect(described_class).to receive(:format_label).with(label).and_return(formatted_label)

      subject.write_label(label)

      expect(output.string).to eq("#{formatted_label}#{$/}")
    end

    context "when the `indent:` keyword argument is given" do
      it "must prepend the indent value to the output line" do
        expect(described_class).to receive(:format_label).with(label).and_return(formatted_label)

        subject.write_label(label, indent: "\t")

        expect(output.string).to eq("\t#{formatted_label}#{$/}")
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
      Ronin::ASM::Instruction.new(:mov, register, immediate)
    end
    let(:formatted_instruction) { '<instruction>' }

    it "must write the tab-indented result of .format_instruction to the output stream" do
      expect(described_class).to receive(:format_instruction).with(instruction).and_return(formatted_instruction)

      subject.write_instruction(instruction)

      expect(output.string).to eq("#{formatted_instruction}#{$/}")
    end

    context "when the `indent:` keyword argument is given" do
      it "must prepend the indent value to the output line" do
        expect(described_class).to receive(:format_instruction).with(instruction).and_return(formatted_instruction)

        subject.write_instruction(instruction, indent: "\t")

        expect(output.string).to eq("\t#{formatted_instruction}#{$/}")
      end
    end
  end

  describe "#write_program" do
    let(:output) { StringIO.new }

    subject { described_class.new(output) }

    let(:program) { double('Program') }

    it do
      expect {
        subject.write_program(program)
      }.to raise_error(NotImplementedError,"#{described_class}#write_program was not implemented")
    end
  end
end
