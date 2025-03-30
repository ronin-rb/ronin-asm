require 'spec_helper'
require 'ronin/asm/program'

require_relative 'helpers/nasm'
require_relative 'helpers/yasm'
require_relative 'helpers/gas'

describe Ronin::ASM::Program do
  describe "#arch" do
    it "must return the architecture name" do
      expect(subject.arch).to eq(:x86_64)
    end
  end

  describe "#initialize" do
    it "must default the architecture to :x86_64" do
      expect(subject.arch).to eq(:x86_64)
    end

    it "must initialize #symbols to an empty Hash" do
      expect(subject.symbols).to eq({})
    end

    it "must initialize #symbol_refs to an empty Hash" do
      expect(subject.symbol_refs).to eq({})
    end

    it "must initialize #instructions to an empty Array" do
      expect(subject.instructions).to eq([])
    end

    context "when the arch: keyword argument is :x86" do
      subject { described_class.new(arch: :x86) }

      it "must extend Ronin::ASM::X86" do
        expect(subject).to be_kind_of(Ronin::ASM::X86)
      end
    end

    context "when the arch: keyword argument is :amd64" do
      subject { described_class.new(arch: :amd64) }

      it "must extend Ronin::ASM::X86_64" do
        expect(subject).to be_kind_of(Ronin::ASM::X86_64)
      end
    end

    context "and when the os: keyword argument is :linux" do
      subject { described_class.new(os: :linux) }

      it "must set #syscalls to Ronin::ASM::Syscalls::Linux::SYSCALLS" do
        expect(subject.syscalls).to eq(Ronin::ASM::Syscalls::Linux::SYSCALLS)
      end
    end

    context "and when the os: keyword argument is :freebsd" do
      subject { described_class.new(os: :freebsd) }

      it "must set #syscalls to Ronin::ASM::Syscalls::FreeBSD::SYSCALLS" do
        expect(subject.syscalls).to eq(Ronin::ASM::Syscalls::FreeBSD::SYSCALLS)
      end
    end

    context "when given an unknown arch: keyword argument value" do
      let(:arch) { :foo }

      it do
        expect {
          described_class.new(arch: arch)
        }.to raise_error(ArgumentError,"unknown architecture: #{arch.inspect}")
      end
    end
  end

  describe "#coerce_operand" do
    context "when given a Register operand" do
      let(:value) { Ronin::ASM::X86::Registers::EAX }

      it "must return the Register operand" do
        expect(subject.coerce_operand(value)).to be(value)
      end
    end

    context "when given an Array operand" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        context "and it has one argument" do
          context "and it's already a Ronin::ASM::X86::Memory object" do
            let(:register) { Ronin::ASM::X86::Registers::EAX }
            let(:memory) do
              Ronin::ASM::X86::Memory.new(base: register, displacement: 42)
            end
            let(:array) { [memory] }

            it "must return the Ronin::ASM::X86::Memory object" do
              expect(subject.coerce_operand(array)).to be(memory)
            end
          end

          context "but it's a Register object" do
            let(:register) { Ronin::ASM::X86::Registers::EAX }
            let(:array)    { [register] }

            it "must create a new Ronin::ASM::X86::Memory object with the #base as the Register" do
              new_memory = subject.coerce_operand(array)

              expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
              expect(new_memory.base).to eq(register)
            end
          end
        end

        context "when given more than one argument" do
          let(:register) { Ronin::ASM::X86::Registers::EAX }
          let(:array)    { [register, 42] }

          it do
            expect {
              subject.coerce_operand(array)
            }.to raise_error("memory operands must have one argument: #{array.inspect}")
          end
        end

        context "when given no arguments" do
          let(:array) { [] }

          it do
            expect {
              subject.coerce_operand(array)
            }.to raise_error("memory operands must have one argument: []")
          end
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        context "and it has one argument" do
          context "and it's already a Ronin::ASM::X86_64::Memory object" do
            let(:register) { Ronin::ASM::X86_64::Registers::EAX }
            let(:memory) do
              Ronin::ASM::X86_64::Memory.new(base: register, displacement: 42)
            end
            let(:array) { [memory] }

            it "must return the Ronin::ASM::X86_64::Memory object" do
              expect(subject.coerce_operand(array)).to be(memory)
            end
          end

          context "but it's a Register object" do
            let(:register) { Ronin::ASM::X86_64::Registers::EAX }
            let(:array)    { [register] }

            it "must create a new Ronin::ASM::X86_64::Memory object with the #base as the Register" do
              new_memory = subject.coerce_operand(array)

              expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
              expect(new_memory.base).to eq(register)
            end
          end
        end

        context "when given more than one argument" do
          let(:register) { Ronin::ASM::X86_64::Registers::EAX }
          let(:array)    { [register, 42] }

          it do
            expect {
              subject.coerce_operand(array)
            }.to raise_error("memory operands must have one argument: #{array.inspect}")
          end
        end

        context "when given no arguments" do
          let(:array) { [] }

          it do
            expect {
              subject.coerce_operand(array)
            }.to raise_error("memory operands must have one argument: []")
          end
        end
      end
    end

    context "when given an Integer operand" do
      let(:value) { 0xff }

      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        it "must wrap the operand to in a Ronin::ASM::X86::Immediate" do
          operand = subject.coerce_operand(value)

          expect(operand).to be_a(Ronin::ASM::X86::Immediate)
          expect(operand.value).to eq(value)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must wrap the operand to in a Ronin::ASM::X86_64::Immediate" do
          operand = subject.coerce_operand(value)

          expect(operand).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(operand.value).to eq(value)
        end
      end
    end

    context "when given a nil operand" do
      let(:value) { nil }

      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        it "must wrap the operand to in a Ronin::ASM::X86::Immediate" do
          operand = subject.coerce_operand(value)

          expect(operand).to be_a(Ronin::ASM::X86::Immediate)
          expect(operand.value).to eq(0)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must wrap the operand to in a Ronin::ASM::X86_64::Immediate" do
          operand = subject.coerce_operand(value)

          expect(operand).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(operand.value).to eq(0)
        end
      end
    end
  end

  describe "#<<" do
    let(:instruction1) do
      Ronin::ASM::Instruction.new(:push, Ronin::ASM::Immediate.new(0x41))
    end
    let(:instruction2) do
      Ronin::ASM::Instruction.new(:push, Ronin::ASM::Immediate.new(0x42))
    end

    before do
      subject << instruction1
      subject << instruction2
    end

    it "must append the instruction to #instructions" do
      expect(subject.instructions[0]).to eq(instruction1)
      expect(subject.instructions[1]).to eq(instruction2)
    end
  end

  describe "#add_instruction" do
    before do
      subject.add_instruction Ronin::ASM::X86_64::Instructions::PUSH, 0x41
      subject.add_instruction Ronin::ASM::X86_64::Instructions::MOV, [Ronin::ASM::X86_64::Registers::EAX], Ronin::ASM::X86_64::Registers::EBX
    end

    it "must initialize the instruction class and append the object to #instructions" do
      expect(subject.instructions[0]).to be_a(Ronin::ASM::X86_64::Instructions::PUSH)
      expect(subject.instructions[1]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
    end

    it "must coerce the given operands using #coerce_operand" do
      expect(subject.instructions[0].operands[0]).to be_a(Ronin::ASM::X86_64::Immediate)
      expect(subject.instructions[0].operands[0].value).to eq(0x41)

      expect(subject.instructions[1].operands[0]).to be_a(Ronin::ASM::X86_64::Memory)
      expect(subject.instructions[1].operands[0].base).to eq(Ronin::ASM::X86_64::Registers::EAX)
      expect(subject.instructions[1].operands[1]).to eq(Ronin::ASM::X86_64::Registers::EBX)
    end

    it "must return the new instruction object" do
      new_instruction = subject.add_instruction(Ronin::ASM::X86_64::Instructions::PUSH, 0x41)

      expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUSH)
    end
  end

  describe "#byte" do
    context "when given an Integer" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        it "must return a Ronin::ASM::X86::Immediate" do
          expect(subject.byte(1)).to be_a(Ronin::ASM::X86::Immediate)
        end

        it "must have size of 1" do
          expect(subject.byte(1).size).to eq(1)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86::Immediate" do
          expect(subject.byte(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have size of 1" do
          expect(subject.byte(1).size).to eq(1)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.byte(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 1" do
          expect(subject.byte(memory).size).to eq(1)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.byte(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 1" do
          expect(subject.byte(memory).size).to eq(1)
        end
      end
    end
  end

  describe "#word" do
    context "when given an Integer" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        it "must return a Ronin::ASM::X86::Immediate" do
          expect(subject.word(1)).to be_a(Ronin::ASM::X86::Immediate)
        end

        it "must have size of 2" do
          expect(subject.word(1).size).to eq(2)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86_64::Immediate" do
          expect(subject.word(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have size of 2" do
          expect(subject.word(1).size).to eq(2)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.word(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 2" do
          expect(subject.word(memory).size).to eq(2)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.word(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 2" do
          expect(subject.word(memory).size).to eq(2)
        end
      end
    end
  end

  describe "#dword" do
    context "when given an Integer" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        it "must return a Ronin::ASM::X86::Immediate" do
          expect(subject.dword(1)).to be_a(Ronin::ASM::X86::Immediate)
        end

        it "must have size of 4" do
          expect(subject.dword(1).size).to eq(4)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86_64::Immediate" do
          expect(subject.dword(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have size of 4" do
          expect(subject.dword(1).size).to eq(4)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 4" do
          expect(subject.dword(memory).size).to eq(4)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 4" do
          expect(subject.dword(memory).size).to eq(4)
        end
      end
    end
  end

  describe "#qword" do
    context "when given an Integer" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        it "must return a Ronin::ASM::X86::Immediate" do
          expect(subject.qword(1)).to be_kind_of(Ronin::ASM::X86::Immediate)
        end

        it "must have size of 8" do
          expect(subject.qword(1).size).to eq(8)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86_64::Immediate" do
          expect(subject.qword(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have size of 8" do
          expect(subject.qword(1).size).to eq(8)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.qword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 8" do
          expect(subject.qword(memory).size).to eq(8)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, size: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.qword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a size of 8" do
          expect(subject.qword(memory).size).to eq(8)
        end
      end
    end
  end

  describe "#label" do
    let(:name) { '_start' }

    it "must return the new Label object with the given name" do
      new_label = subject.label(name) { }

      expect(new_label).to be_kind_of(Ronin::ASM::Label)
      expect(new_label.name).to eq(name)
    end

    context "when a Symbol is given for the name" do
      it "must convert the Symbol to a String" do
        new_label = subject.label(:_start) { }

        expect(new_label).to be_kind_of(Ronin::ASM::Label)
        expect(new_label.name).to eq('_start')
      end
    end

    it "must add the new Label to #symbols" do
      new_label = subject.label(name) { }

      expect(subject.symbols[new_label.name]).to be(new_label)
    end

    it "must add the label to the instructions" do
      subject.label(name) { }

      expect(subject.instructions.last).to be_kind_of(Ronin::ASM::Label)
      expect(subject.instructions.last.name).to eq(name)
    end

    it "must accept a block" do
      subject.label(name) { push 2 }

      expect(subject.instructions[-2]).to      be_kind_of(Ronin::ASM::Label)
      expect(subject.instructions[-2].name).to eq(name)
      expect(subject.instructions[-1].name).to eq(:push)
    end

    context "when a label of the same name already exists" do
      it do
        subject.label(name) { }

        expect {
          subject.label(name) { }
        }.to raise_error(ArgumentError,"symbol is already defined: #{name.inspect}")
      end
    end

    context "when there are pre-existing SymbolRefs for the label name" do
      it "must resolve the SymbolRefs to the new Label object" do
        symbol_ref = subject.symbol_ref(name)
        label     = subject.label(name) { }

        expect(symbol_ref.value).to be(label)
      end
    end
  end

  describe "#symbol_ref" do
    let(:name) { '_label' }

    context "when initialized with `arch: :x86`" do
      subject { described_class.new(arch: :x86) }

      it "must return a new Ronin::ASM::X86::SymbolRef object with the given name" do
        symbol_ref = subject.symbol_ref(name)

        expect(symbol_ref).to be_kind_of(Ronin::ASM::X86::SymbolRef)
        expect(symbol_ref.name).to eq(name)
      end
    end

    context "when initialized with `arch: :x86_64`" do
      subject { described_class.new(arch: :x86_64) }

      it "must return a new Ronin::ASM::X86_64::SymbolRef object with the given name" do
        symbol_ref = subject.symbol_ref(name)

        expect(symbol_ref).to be_kind_of(Ronin::ASM::X86_64::SymbolRef)
        expect(symbol_ref.name).to eq(name)
      end
    end

    it "must cache created SymbolRef objects by name" do
      expect(subject.symbol_ref(name)).to be(subject.symbol_ref(name))
    end

    it "must store the created SymbolRef objects in #symbol_refs" do
      symbol_ref = subject.symbol_ref(name)

      expect(subject.symbol_refs[name]).to be(symbol_ref)
    end
  end

  describe "#method_missing" do
    context "when called without a block" do
      context "and no arguments" do
        it "must return a SymbolRef object with the method name" do
          symbol_ref = subject._label

          expect(symbol_ref).to be_kind_of(Ronin::ASM::SymbolRef)
          expect(symbol_ref.name).to eq('_label')
        end
      end

      context "but arguments are given" do
        it do
          expect {
            subject.foo(1,2,3)
          }.to raise_error(NoMethodError)
        end
      end
    end

    context "when called with a block" do
      context "and no arguments" do
        it "must add a new label" do
          subject._loop { mov eax, ebx }

          expect(subject.instructions[-2]).to      be_kind_of(Ronin::ASM::Label)
          expect(subject.instructions[-2].name).to eq('_loop')
          expect(subject.instructions[-1].name).to eq(:mov)
        end
      end

      context "but arguments are given" do
        it do
          expect {
            subject.foo(1,2,3) { }
          }.to raise_error(NoMethodError)
        end
      end
    end
  end

  describe "#to_asm" do
    context "when initialized with `arch: :x86`" do
      subject do
        described_class.new(arch: :x86) do
          # instruction without operands
          nop

          # register operands
          inc al
          inc ax
          inc eax

          # immediate operands without size specifiers
          mov eax, 0xff
          mov eax, 0xffff
          mov eax, 0xffffffff

          # immediate operands with size specifiers
          mov al, byte(0xff)
          mov ax, word(0xffff)
          mov eax, dword(0xffffffff)

          # memory operands without size specifiers
          mov al, [ebx]
          mov ax, [ebx]
          mov eax, [ebx]

          # memory operands with size specifiers
          mov al, byte([ebx])
          mov ax, word([ebx])
          mov eax, dword([ebx])

          # when both operands have an ambiguis size
          mov [ebx], 0xff

          # SIB memory operands
          mov eax, [ebx]
          mov eax, [ebx+10]
          mov eax, [ebx+esi]
          mov eax, [ebx+(esi*4)]
          mov eax, [ebx+(esi*4)+10]
        end
      end

      it "must convert the program to Intel syntax" do
        expect(subject.to_asm).to eq(
          <<~ASM
            BITS 32
            section .text
            _start:
            \tnop
            \tinc\tal
            \tinc\tax
            \tinc\teax
            \tmov\teax,\t0xff
            \tmov\teax,\t0xffff
            \tmov\teax,\t0xffffffff
            \tmov\tal,\tBYTE 0xff
            \tmov\tax,\tWORD 0xffff
            \tmov\teax,\tDWORD 0xffffffff
            \tmov\tal,\t[ebx]
            \tmov\tax,\t[ebx]
            \tmov\teax,\t[ebx]
            \tmov\tal,\tBYTE [ebx]
            \tmov\tax,\tWORD [ebx]
            \tmov\teax,\tDWORD [ebx]
            \tmov\tBYTE [ebx],\t0xff
            \tmov\teax,\t[ebx]
            \tmov\teax,\t[ebx+10]
            \tmov\teax,\t[ebx+esi]
            \tmov\teax,\t[ebx+esi*4]
            \tmov\teax,\t[ebx+esi*4+10]
          ASM
        )
      end

      context "NASM compatibility", :compatibility do
        include Helpers::NASM

        it "must return NASM-compatible Intel syntax" do
          unless Helpers::NASM.installed?
            skip "the nasm command is not installed"
          end

          asm = subject.to_asm

          expect(nasm(asm)).to be(true), -> {
            <<~ERROR
              Could not assemble the program using nasm:

              #{asm}
            ERROR
          }
        end
      end

      context "YASM compatibility", :compatibility do
        include Helpers::YASM

        it "must return YASM-compatible Intel syntax" do
          unless Helpers::YASM.installed?
            skip "the yasm command is not installed"
          end

          asm = subject.to_asm

          expect(yasm(asm, arch: :x86)).to be(true), -> {
            <<~ERROR
              Could not assemble the program using yasm:

              #{asm}
            ERROR
          }
        end
      end

      context "when given :att" do
        it "must convert the program to ATT syntax" do
          expect(subject.to_asm(:att)).to eq(
            <<~ASM
              .code32
              .text
              _start:
              \tnop
              \tincb\t%al
              \tincw\t%ax
              \tincl\t%eax
              \tmovl\t$0xff,\t%eax
              \tmovl\t$0xffff,\t%eax
              \tmovl\t$0xffffffff,\t%eax
              \tmovb\t$0xff,\t%al
              \tmovw\t$0xffff,\t%ax
              \tmovl\t$0xffffffff,\t%eax
              \tmovb\t(%ebx),\t%al
              \tmovw\t(%ebx),\t%ax
              \tmovl\t(%ebx),\t%eax
              \tmovb\t(%ebx),\t%al
              \tmovw\t(%ebx),\t%ax
              \tmovl\t(%ebx),\t%eax
              \tmovb\t$0xff,\t(%ebx)
              \tmovl\t(%ebx),\t%eax
              \tmovl\t10(%ebx),\t%eax
              \tmovl\t(%ebx,%esi),\t%eax
              \tmovl\t(%ebx,%esi,4),\t%eax
              \tmovl\t10(%ebx,%esi,4),\t%eax
            ASM
          )
        end

        context "GNU Assembler (GAS) compatibility", :compatibility do
          include Helpers::GAS

          it "must return GAS-compatible Intel syntax" do
            unless Helpers::GAS.installed?
              skip "the GNU as command is not installed"
            end

            asm = subject.to_asm(:att)

            expect(gas(asm, arch: :x86)).to be(true), -> {
              <<~ERROR
                Could not assemble the program using GNU as:

                #{asm}
              ERROR
            }
          end
        end
      end
    end

    context "when initialized with `arch: :x86_64`" do
      subject do
        described_class.new(arch: :x86_64) do
          # instruction without operands
          nop

          # register operands
          inc al
          inc ax
          inc eax
          inc rax

          # immediate operands without size specifiers
          mov eax, 0xff
          mov eax, 0xffff
          mov eax, 0xffffffff
          mov rax, 0xffffffffffffffff

          # immediate operands with size specifiers
          mov al, byte(0xff)
          mov ax, word(0xffff)
          mov eax, dword(0xffffffff)
          mov rax, qword(0xffffffffffffffff)

          # memory operands without size specifiers
          mov al, [ebx]
          mov ax, [ebx]
          mov eax, [ebx]
          mov rax, [rbx]

          # memory operands with size specifiers
          mov al, byte([ebx])
          mov ax, word([ebx])
          mov eax, dword([ebx])
          mov rax, qword([rbx])

          # when both operands have an ambiguis size
          mov [rbx], 0xff

          # SIB memory operands
          mov rax, [rbx]
          mov rax, [rbx+10]
          mov rax, [rbx+rsi]
          mov rax, [rbx+(rsi*4)]
          mov rax, [rbx+(rsi*4)+10]
        end
      end

      it "must convert the program to Intel syntax" do
        expect(subject.to_asm).to eq(
          <<~ASM
            BITS 64
            section .text
            _start:
            \tnop
            \tinc\tal
            \tinc\tax
            \tinc\teax
            \tinc\trax
            \tmov\teax,\t0xff
            \tmov\teax,\t0xffff
            \tmov\teax,\t0xffffffff
            \tmov\trax,\t0xffffffffffffffff
            \tmov\tal,\tBYTE 0xff
            \tmov\tax,\tWORD 0xffff
            \tmov\teax,\tDWORD 0xffffffff
            \tmov\trax,\tQWORD 0xffffffffffffffff
            \tmov\tal,\t[ebx]
            \tmov\tax,\t[ebx]
            \tmov\teax,\t[ebx]
            \tmov\trax,\t[rbx]
            \tmov\tal,\tBYTE [ebx]
            \tmov\tax,\tWORD [ebx]
            \tmov\teax,\tDWORD [ebx]
            \tmov\trax,\tQWORD [rbx]
            \tmov\tBYTE [rbx],\t0xff
            \tmov\trax,\t[rbx]
            \tmov\trax,\t[rbx+10]
            \tmov\trax,\t[rbx+rsi]
            \tmov\trax,\t[rbx+rsi*4]
            \tmov\trax,\t[rbx+rsi*4+10]
          ASM
        )
      end

      context "NASM compatibility", :compatibility do
        include Helpers::NASM

        it "must return NASM-compatible Intel syntax" do
          unless Helpers::NASM.installed?
            skip "the nasm command is not installed"
          end

          asm = subject.to_asm

          expect(nasm(asm)).to be(true), -> {
            <<~ERROR
              Could not assemble the program using nasm:

              #{asm}
            ERROR
          }
        end
      end

      context "YASM compatibility", :compatibility do
        include Helpers::YASM

        it "must return YASM-compatible Intel syntax" do
          unless Helpers::YASM.installed?
            skip "the yasm command is not installed"
          end

          asm = subject.to_asm

          expect(yasm(asm, arch: :x86_64)).to be(true), -> {
            <<~ERROR
              Could not assemble the program using yasm:

              #{asm}
            ERROR
          }
        end
      end

      context "when given :att" do
        it "must convert the program to ATT syntax" do
          expect(subject.to_asm(:att)).to eq(
            <<~ASM
              .code64
              .text
              _start:
              \tnop
              \tincb\t%al
              \tincw\t%ax
              \tincl\t%eax
              \tincq\t%rax
              \tmovl\t$0xff,\t%eax
              \tmovl\t$0xffff,\t%eax
              \tmovl\t$0xffffffff,\t%eax
              \tmovabsq\t$0xffffffffffffffff,\t%rax
              \tmovb\t$0xff,\t%al
              \tmovw\t$0xffff,\t%ax
              \tmovl\t$0xffffffff,\t%eax
              \tmovabsq\t$0xffffffffffffffff,\t%rax
              \tmovb\t(%ebx),\t%al
              \tmovw\t(%ebx),\t%ax
              \tmovl\t(%ebx),\t%eax
              \tmovq\t(%rbx),\t%rax
              \tmovb\t(%ebx),\t%al
              \tmovw\t(%ebx),\t%ax
              \tmovl\t(%ebx),\t%eax
              \tmovq\t(%rbx),\t%rax
              \tmovb\t$0xff,\t(%rbx)
              \tmovq\t(%rbx),\t%rax
              \tmovq\t10(%rbx),\t%rax
              \tmovq\t(%rbx,%rsi),\t%rax
              \tmovq\t(%rbx,%rsi,4),\t%rax
              \tmovq\t10(%rbx,%rsi,4),\t%rax
            ASM
          )
        end

        describe "GNU Assembler (GAS) compatibility", :compatibility do
          include Helpers::GAS

          it "must return GAS-compatible Intel syntax" do
            unless Helpers::GAS.installed?
              skip "the GNU as command is not installed"
            end

            asm = subject.to_asm(:att)

            expect(gas(asm, arch: :x86_64)).to be(true), -> {
              <<~ERROR
                Could not assemble the program using GNU as:

                #{asm}
              ERROR
            }
          end
        end
      end
    end
  end

  describe "#validate" do
    context "when the program contains an unresolved symbol reference" do
      let(:undefined_symbol) { '_label2' }

      subject do
        described_class.new(arch: :x86) do
          _label1 do
            mov eax, ebx
          end

          jmp _label2
        end
      end

      it do
        expect {
          subject.validate
        }.to raise_error(Ronin::ASM::UnresolvedSymbolError,"unresolved reference to symbol: #{undefined_symbol.inspect}")
      end
    end

    context "otherwise" do
      it "must return true" do
        expect(subject.validate).to be(true)
      end
    end
  end

  describe "#assemble" do
    subject do
      described_class.new(arch: :x86) do
        mov eax, ebx
        inc eax
      end
    end

    let(:expected_bytes) { "\x89\xd8\x40".b }

    context "when given an IO object" do
      let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

      it "must assemble the instructions and write the encoded assembly to the IO object" do
        subject.assemble(output)

        output.rewind

        expect(output.read).to eq(expected_bytes)
      end

      it "must return the number of bytes written to the output" do
        expect(subject.assemble(output)).to eq(expected_bytes.bytesize)
      end
    end

    context "when given no arguments" do
      it "must return the assembled and encoded instructions as a binary String" do
        expect(subject.assemble).to eq(expected_bytes)
      end

      it "must return an Encoding::ASCII_8BIT encoded String" do
        expect(subject.assemble.encoding).to be(Encoding::ASCII_8BIT)
      end
    end
  end

  describe "#to_bin" do
    subject do
      described_class.new(arch: :x86) do
        mov eax, ebx
        inc eax
      end
    end

    let(:expected_bytes) { "\x89\xd8\x40".b }

    it "must return the assembled and encoded assembly instructions as a String" do
      expect(subject.to_bin).to eq(expected_bytes)
    end

    it "must return a ASCII-8bit encoded String" do
      expect(subject.to_bin.encoding).to be(Encoding::ASCII_8BIT)
    end
  end
end
