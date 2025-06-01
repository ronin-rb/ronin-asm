require 'spec_helper'
require 'ronin/asm/program'
require 'ronin/asm/x86/bsd'

describe Ronin::ASM::X86::BSD do
  subject { Ronin::ASM::Program.new(arch: :x86, os: :freebsd) }

  describe "#syscall_macro" do
    let(:number) { 0x40 }

    it "must add a `mov eax, <number>` instruction with the given syscall number" do
      subject.syscall_macro(number)

      expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86::Instructions::MOV)
      expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86::Registers::EAX)
      expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
      expect(subject.instructions[-2].operands[1].value).to eq(number)
    end

    it "must add an `int 0x80` instruction" do
      subject.syscall_macro(number)

      expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
      expect(subject.instructions[-1].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
      expect(subject.instructions[-1].operands[0].value).to eq(0x80)
    end

    context "when given additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:argument3) { 0x43 }
      let(:arguments) do
        [argument1, argument2, argument3]
      end

      it "must add a `push <argument>` instruction for each syscall argument, but in reverse order" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::PUSH)
        expect(subject.instructions[-5].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-5].operands[0].value).to eq(argument3)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::PUSH)
        expect(subject.instructions[-4].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-4].operands[0].value).to eq(argument2)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::PUSH)
        expect(subject.instructions[-3].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-3].operands[0].value).to eq(argument1)

        expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86::Registers::EAX)
        expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-2].operands[1].value).to eq(number)

        expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
        expect(subject.instructions[-1].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-1].operands[0].value).to eq(0x80)
      end
    end
  end
end
