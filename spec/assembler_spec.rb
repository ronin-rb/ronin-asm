require 'spec_helper'
require 'ronin/asm/assembler'

require 'ronin/asm/program'
require 'stringio'

describe Ronin::ASM::Assembler do
  let(:program) do
    Ronin::ASM::Program.new(arch: :x86) do
      mov ecx, dword(0x0)

      _loop do
        inc ecx

        cmp cl, 0x10
        jne _loop
      end

      mov eax, ecx
    end
  end

  subject { described_class.new(program) }

  describe "#initialize" do
    it "must set #program" do
      expect(subject.program).to be(program)
    end

    it "must set #instructions to the program's #instructions" do
      expect(subject.instructions).to eq(program.instructions)
    end

    it "must initialize #modified_instructions to an empty Hash" do
      expect(subject.modified_instructions).to eq({})
    end
  end

  describe ".assemble" do
    let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }
    let(:assembler) { double(described_class) }

    subject { described_class }

    it "must create a new #{described_class} object and call #assemble with the output" do
      expect(subject).to receive(:new).with(program).and_return(assembler)
      expect(assembler).to receive(:assemble).with(output)

      subject.assemble(program,output)
    end
  end

  describe "#assemble" do
    let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

    it do
      expect {
        subject.assemble(output)
      }.to raise_error(NotImplementedError,"#{described_class}#assemble was not implemented")
    end
  end

  describe "#each_instruction" do
    context "when given a block" do
      context "when #modified_instructions is empty" do
        it "must yield every Instruction and Label in #instructions" do
          expect { |b|
            subject.each_instruction(&b)
          }.to yield_successive_args(*program.instructions)
        end
      end

      context "when #modified_instructions contains modified instructions" do
        before do
          subject.modified_instructions[4] = subject.instructions[4].class.new(
            Ronin::ASM::X86::RelativeOffset.new(-4)
          )
        end

        it "must yield the instructions in #instructions overlayed with the modified instructions in #modified_instructions" do
          expect { |b|
            subject.each_instruction(&b)
          }.to yield_successive_args(
            subject.instructions[0],
            subject.instructions[1],
            subject.instructions[2],
            subject.instructions[3],
            subject.modified_instructions[4],
            subject.instructions[5]
          )
        end
      end
    end

    context "when not given a block" do
      it "must return an Enumerator object for the method" do
        expect(subject.each_instruction).to be_a(Enumerator)
      end
    end
  end

  describe "#replace_operand" do
    let(:index)         { 4 }
    let(:operand_index) { 0 }
    let(:new_operand)   { Ronin::ASM::X86::RelativeOffset.new(-4) }

    context "when the instruction has not been modified yet" do
      it "must create a new instruction with the replaced operand, at the given operand index, and store it in #modified_instructions at the given instruction index" do
        subject.replace_operand(index,operand_index,new_operand)

        expect(subject.modified_instructions[4]).to be_a(
          subject.instructions[4].class
        )
        expect(subject.modified_instructions[4].operands).to eq([new_operand])
      end
    end

    context "when the instruction has previously been modified" do
      before do
        subject.modified_instructions[4] = subject.instructions[4].class.new(
          Ronin::ASM::X86::RelativeOffset.new(-4, size: 4)
        )
      end

      it "must replace the operand at the given operand index in the modified instruction at the given instruction index" do
        original_instruction = subject.modified_instructions[4]
        original_operands    = original_instruction.operands

        subject.replace_operand(index,operand_index,new_operand)

        expect(subject.modified_instructions[4]).to be(original_instruction)
        expect(subject.modified_instructions[4].operands).to be(original_operands)
        expect(subject.modified_instructions[4].operands[operand_index]).to be(new_operand)
      end
    end

    context "when the instruction index cannot be found in #instructions" do
      let(:index) { 100 }

      it do
        expect {
          subject.replace_operand(index,operand_index,new_operand)
        }.to raise_error(ArgumentError,"invalid instruction index: #{index.inspect}")
      end
    end

    context "when the operand index cannot be found within the instruction" do
      let(:operand_index) { 3 }

      it do
        expect {
          subject.replace_operand(index,operand_index,new_operand)
        }.to raise_error(ArgumentError,"invalid operand index: #{operand_index.inspect}")
      end
    end
  end

  describe "#replace_instruction" do
    let(:index) { 1 }
    let(:instruction) { }

    it "must add the new instruction object to #modified_instructions with the given index" do
      subject.replace_instruction(index,instruction)

      expect(subject.modified_instructions[index]).to be(instruction)
    end
  end

  describe "#encoder" do
    let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

    it do
      expect {
        subject.encoder(output)
      }.to raise_error(NotImplementedError,"#{described_class}#encoder was not implemented")
    end
  end
end
