require 'spec_helper'
require 'ronin/asm/syntax/common'

require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/label'

describe Ronin::ASM::Syntax::Common do
  subject { described_class }

  describe ".emit_keyword" do
    let(:name) { :_start }

    it "must convert a keyword to a String" do
      expect(subject.emit_keyword(name)).to eq(name.to_s)
    end
  end

  describe ".emit_register" do
    let(:register) { double('Register') }

    it do
      expect {
        subject.emit_register(register)
      }.to raise_error(NotImplementedError,"#{subject}.emit_register was not implemented")
    end
  end

  describe ".emit_integer" do
    let(:int) { 255 }

    it "must convert it into a hexadecimal value" do
      expect(subject.emit_integer(int)).to eq("0xff")
    end

    context "when given a negative number" do
      let(:int) { -255 }

      it "must convert it into a hexadecimal value" do
        expect(subject.emit_integer(int)).to eq("-0xff")
      end
    end
  end

  describe ".emit_immediate" do
    let(:immediate) { double('Immediate') }

    it do
      expect {
        subject.emit_immediate(immediate)
      }.to raise_error(NotImplementedError,"#{subject}.emit_immediate was not implemented")
    end
  end

  describe ".emit_memory" do
    let(:memory) { double('Memory') }

    it do
      expect {
        subject.emit_memory(memory)
      }.to raise_error(NotImplementedError,"#{subject}.emit_memory was not implemented")
    end
  end

  describe ".emit_label" do
    let(:name)  { :_start  }
    let(:label) { Ronin::ASM::Label.new(name) }

    it "must append a ':' to the name" do
      expect(subject.emit_label(label)).to eq('_start:')
    end
  end

  describe ".emit_operand" do
    context "when given an Immediate value" do
      let(:immediate) { Ronin::ASM::Immediate.new(0x41) }
      let(:string)    { double('formatted assembly') }

      it "must call emit_immediate" do
        expect(subject).to receive(:emit_immediate).with(immediate).and_return(string)

        expect(subject.emit_operand(immediate)).to be(string)
      end
    end

    context "when given a Register value" do
      let(:register) do
        Ronin::ASM::Register.new(:eax, number: 0, width: 4, type: :reg32)
      end
      let(:string) { double('formatted assembly') }

      it "must call emit_immediate" do
        expect(subject).to receive(:emit_register).with(register).and_return(string)

        expect(subject.emit_operand(register)).to be(string)
      end
    end

    context "when given a Memory value" do
      let(:register) do
        Ronin::ASM::Register.new(:eax, number: 0, width: 4, type: :reg32)
      end
      let(:memory) { Ronin::ASM::Memory.new(register) }
      let(:string) { double('formatted assembly') }

      it "must call emit_immediate" do
        expect(subject).to receive(:emit_memory).with(memory).and_return(string)

        expect(subject.emit_operand(memory)).to be(string)
      end
    end

    context "when given a Symbol value" do
      let(:symbol) { :_label }
      let(:string) { double('formatted assembly') }

      it "must call emit_keyword" do
        expect(subject).to receive(:emit_keyword).with(symbol).and_return(string)

        expect(subject.emit_operand(symbol)).to be(string)
      end
    end
  end

  describe ".emit_operands" do
    let(:operands) do
      [double('operand1'), double('operand2'), double('operand3')]
    end
    let(:formatted_operands) { %w[op1 op2 op3] }

    it "just call emit_operand on each operand and join them together with ',\\t'" do
      expect(subject).to receive(:emit_operand).with(operands[0]).and_return(formatted_operands[0])
      expect(subject).to receive(:emit_operand).with(operands[1]).and_return(formatted_operands[1])
      expect(subject).to receive(:emit_operand).with(operands[2]).and_return(formatted_operands[2])

      expect(subject.emit_operands(operands)).to eq(formatted_operands.join(",\t"))
    end
  end

  describe ".emit_instruction" do
    let(:instruction) { double('Instruction') }

    it do
      expect {
        subject.emit_instruction(instruction)
      }.to raise_error(NotImplementedError,"#{subject}.emit_instruction was not implemented")
    end
  end

  describe ".emit_section" do
    let(:name) { :text }

    it do
      expect {
        subject.emit_section(name)
      }.to raise_error(NotImplementedError,"#{subject}.emit_section was not implemented")
    end
  end

  describe ".emit_prologue" do
    let(:program) { double('Program') }

    it do
      expect {
        subject.emit_prologue(program)
      }.to raise_error(NotImplementedError,"#{subject}.emit_prologue was not implemented")
    end
  end
end
