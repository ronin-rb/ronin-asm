require 'spec_helper'
require 'ronin/asm/program'

describe Ronin::ASM::Program do
  describe "#arch" do
    it "must return the architecture name" do
      expect(subject.arch).to eq(:x86_64)
    end
  end

  describe "#allocated_registers" do
    it "must return a Set" do
      expect(subject.allocated_registers).to be_kind_of(Set)
    end
  end

  describe "#initialize" do
    it "must default the architecture to :x86_64" do
      expect(subject.arch).to eq(:x86_64)
    end

    it "must initialize #allocated_registers to an empty Set" do
      expect(subject.allocated_registers).to eq(Set.new)
    end

    it "must initialize #labels to an empty Hash" do
      expect(subject.labels).to eq({})
    end

    it "must initialize #instructions to an empty Array" do
      expect(subject.instructions).to eq([])
    end

    context "when the arch: keyword argument is :x86" do
      subject { described_class.new(arch: :x86) }

      it { expect(subject.word_size).to eq(4) }

      describe "#stask_base" do
        it "must be ebp" do
          expect(subject.stack_base.name).to eq(:ebp)
        end
      end

      describe "#stask_pointer" do
        it "must be esp" do
          expect(subject.stack_pointer.name).to eq(:esp)
        end
      end

      describe "#stack_push" do
        let(:value) { 0xff }

        before { subject.stack_push(value) }

        it "must add a 'push' instruction with a value" do
          expect(subject.instructions[-1].name).to eq(:push)
          expect(subject.instructions[-1].operands[0].value).to eq(value)
        end
      end

      describe "#stack_pop" do
        let(:register) { Ronin::ASM::X86::Registers::EAX }

        before { subject.stack_pop(register) }

        it "must add a 'pop' instruction with a register" do
          expect(subject.instructions[-1].name).to eq(:pop)
          expect(subject.instructions[-1].operands[0]).to be(register)
        end
      end

      describe "#register_clear" do
        let(:register) { Ronin::ASM::X86::Registers::EAX }

        before { subject.register_clear(register) }

        it "must add a 'xor' instruction with a registers" do
          expect(subject.instructions[-1].name).to eq(:xor)
          expect(subject.instructions[-1].operands[0]).to be(register)
          expect(subject.instructions[-1].operands[1]).to be(register)
        end
      end

      describe "#register_set" do
        let(:register) { Ronin::ASM::X86::Registers::EAX }
        let(:value)    { 0xff }

        before { subject.register_set(register,value) }

        it "must add a 'xor' instruction with a registers" do
          expect(subject.instructions[-1].name).to eq(:mov)
          expect(subject.instructions[-1].operands[0]).to be(register)
          expect(subject.instructions[-1].operands[1].value).to eq(value)
        end
      end

      describe "#register_save" do
        let(:register) { Ronin::ASM::X86::Registers::EAX }

        before { subject.register_save(register) }

        it "must add a 'xor' instruction with a registers" do
          expect(subject.instructions[-1].name).to eq(:push)
          expect(subject.instructions[-1].operands[0]).to be(register)
        end
      end

      describe "#register_save" do
        let(:register) { Ronin::ASM::X86::Registers::EAX }

        before { subject.register_load(register) }

        it "must add a 'xor' instruction with a registers" do
          expect(subject.instructions[-1].name).to eq(:pop)
          expect(subject.instructions[-1].operands[0]).to be(register)
        end
      end

      describe "#interrupt" do
        let(:number) { 0x0a }

        before { subject.interrupt(number) }

        it "must add an 'int' instruction with the interrupt number" do
          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
          expect(subject.instructions[-1].operands[0].value).to eq(number)
        end
      end

      describe "#syscall" do
        before { subject.syscall }

        it "must add an 'int 0x80' instruction" do
          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
          expect(subject.instructions[-1].operands[0].value).to eq(0x80)
        end
      end

      context "and when the os: keyword argument is :linux" do
        subject { described_class.new(arch: :x86, os: :linux) }

        it "must set #syscalls to Ronin::ASM::Syscalls::Linux::SYSCALLS" do
          expect(subject.syscalls).to eq(Ronin::ASM::Syscalls::Linux::SYSCALLS)
        end
      end

      context "and when the os: keyword argument is :freebsd" do
        subject { described_class.new(arch: :x86, os: :freebsd) }

        it "must set #syscalls to Ronin::ASM::Syscalls::FreeBSD::SYSCALLS" do
          expect(subject.syscalls).to eq(Ronin::ASM::Syscalls::FreeBSD::SYSCALLS)
        end
      end
    end

    context "when the arch: keyword argument is :amd64" do
      subject { described_class.new(arch: :amd64) }

      it { expect(subject.word_size).to eq(8) }

      describe "#syscall" do
        before { subject.syscall }

        it "must add a 'syscall' instruction" do
          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        end
      end

      context "and when the os: keyword argument is :linux" do
        subject { described_class.new(arch: :amd64, os: :linux) }

        it "must set #syscalls to Ronin::ASM::Syscalls::Linux::SYSCALLS" do
          expect(subject.syscalls).to eq(Ronin::ASM::Syscalls::Linux::SYSCALLS)
        end
      end

      context "and when the os: keyword argument is :freebsd" do
        subject { described_class.new(arch: :amd64, os: :freebsd) }

        it "must set #syscalls to Ronin::ASM::Syscalls::FreeBSD::SYSCALLS" do
          expect(subject.syscalls).to eq(Ronin::ASM::Syscalls::FreeBSD::SYSCALLS)
        end
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

        it "must have width of 1" do
          expect(subject.byte(1).width).to eq(1)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86::Immediate" do
          expect(subject.byte(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have width of 1" do
          expect(subject.byte(1).width).to eq(1)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 1" do
          expect(subject.byte(memory).width).to eq(1)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 1" do
          expect(subject.byte(memory).width).to eq(1)
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

        it "must have width of 2" do
          expect(subject.word(1).width).to eq(2)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86_64::Immediate" do
          expect(subject.word(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have width of 2" do
          expect(subject.word(1).width).to eq(2)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 2" do
          expect(subject.word(memory).width).to eq(2)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 2" do
          expect(subject.word(memory).width).to eq(2)
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

        it "must have width of 4" do
          expect(subject.dword(1).width).to eq(4)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86_64::Immediate" do
          expect(subject.dword(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have width of 4" do
          expect(subject.dword(1).width).to eq(4)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 4" do
          expect(subject.dword(memory).width).to eq(4)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 4" do
          expect(subject.dword(memory).width).to eq(4)
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

        it "must have width of 8" do
          expect(subject.qword(1).width).to eq(8)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        it "must return a Ronin::ASM::X86_64::Immediate" do
          expect(subject.word(1)).to be_a(Ronin::ASM::X86_64::Immediate)
        end

        it "must have width of 2" do
          expect(subject.word(1).width).to eq(2)
        end
      end
    end

    context "when given a Memory object" do
      context "and the program was initialized with `arch: :x86`" do
        subject { described_class.new(arch: :x86) }

        let(:register) do
          Ronin::ASM::X86::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 8" do
          expect(subject.qword(memory).width).to eq(8)
        end
      end

      context "and the program was initialized with `arch: :x86_64`" do
        subject { described_class.new(arch: :x86_64) }

        let(:register) do
          Ronin::ASM::X86_64::Register.new(:eax, width: 4, type: :reg32)
        end
        let(:memory) do
          Ronin::ASM::X86_64::Memory.new(base: register)
        end

        it "must return a new Ronin::ASM::X86_64::Memory object" do
          new_memory = subject.dword(memory)

          expect(new_memory).to be_a(Ronin::ASM::X86_64::Memory)
          expect(new_memory).to_not be(memory)
        end

        it "must have a width of 8" do
          expect(subject.qword(memory).width).to eq(8)
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

    it "must add the new Label to #labels" do
      new_label = subject.label(name) { }

      expect(subject.labels[new_label.name]).to be(new_label)
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
        }.to raise_error(ArgumentError,"label is already defined: #{name.inspect}")
      end
    end
  end

  describe "#label_ref" do
    let(:name) { '_label' }

    it "must return a new LabelRef object with the given name" do
      label_ref = subject.label_ref(name)

      expect(label_ref).to be_kind_of(Ronin::ASM::LabelRef)
      expect(label_ref.name).to eq(name)
    end
  end

  describe "#method_missing" do
    context "when called without a block" do
      it "must add a new instruction" do
        subject.pop

        expect(subject.instructions[-1].name).to eq(:pop)
      end

      context "and only one argument" do
        it "must return a LabelRef object with the method name" do
          label_ref = subject._label

          expect(label_ref).to be_kind_of(Ronin::ASM::LabelRef)
          expect(label_ref.name).to eq('_label')
        end
      end
    end

    context "when called with one argument and a block" do
      it "must add a new label" do
        subject._loop { mov eax, ebx }

        expect(subject.instructions[-2]).to      be_kind_of(Ronin::ASM::Label)
        expect(subject.instructions[-2].name).to eq('_loop')
        expect(subject.instructions[-1].name).to eq(:mov)
      end
    end
  end

  describe "#to_asm" do
    subject do
      described_class.new(arch: :x86) do
        push eax
        push ebx
        push ecx

        mov ebx, eax
        mov ebx, eax+0
        mov ebx, eax+4
        mov ebx, eax+esi
        mov ebx, eax+(esi*4)
        mov ebx, eax+(esi*4)+10
      end
    end

    it "must convert the program to Intel syntax" do
      expect(subject.to_asm).to eq([
        "BITS 32",
        "section .text",
        "_start:",
        "\tpush\teax",
        "\tpush\tebx",
        "\tpush\tecx",
        "\tmov\tebx,\teax",
        "\tmov\tebx,\t[eax]",
        "\tmov\tebx,\t[eax+0x4]",
        "\tmov\tebx,\t[eax+esi]",
        "\tmov\tebx,\t[eax+esi*0x4]",
        "\tmov\tebx,\t[eax+esi*0x4+0xa]",
        ""
      ].join($/))
    end

    context "when given :att" do
      it "must convert the program to ATT syntax" do
        expect(subject.to_asm(:att)).to eq([
          ".code32",
          ".text",
          "_start:",
          "\tpush\t%eax",
          "\tpush\t%ebx",
          "\tpush\t%ecx",
          "\tmov\t%eax,\t%ebx",
          "\tmov\t(%eax),\t%ebx",
          "\tmov\t0x4(%eax),\t%ebx",
          "\tmov\t(%eax,%esi),\t%ebx",
          "\tmov\t(%eax,%esi,4),\t%ebx",
          "\tmov\t0xa(%eax,%esi,4),\t%ebx",
          ""
        ].join($/))
      end
    end
  end

  describe "#assemble", integration: true do
    subject do
      described_class.new(arch: :x86) do
        push eax
        push ebx
        push ecx

        mov ebx, eax
        mov ebx, eax+0
        mov ebx, eax+4
        mov ebx, eax+esi
        mov ebx, eax+(esi*4)
        mov ebx, eax+(esi*4)+10
      end
    end

    let(:output) { Tempfile.new(['ronin-asm', '.o']).path }

    before { subject.assemble(output) }

    it "must write to the output file" do
      expect(File.size(output)).to be > 0
    end

    context "when syntax: :intel is given" do
      let(:tempfile) { Tempfile.new(['ronin-asm', '.o']) }
      let(:output)   { tempfile.path }

      before { subject.assemble(output, syntax: :intel) }

      it "must write to the output file" do
        expect(File.size(output)).to be > 0
      end
    end

    context "when syntax is unknown" do
      let(:syntax) { :foo }

      it do
        expect {
          subject.assemble(output, syntax: syntax)
        }.to raise_error(ArgumentError,"unknown ASM syntax: #{syntax.inspect}")
      end
    end
  end
end
