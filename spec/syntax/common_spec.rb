require 'spec_helper'
require 'ronin/asm/syntax/common'

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
