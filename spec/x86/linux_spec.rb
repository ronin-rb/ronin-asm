require 'spec_helper'
require 'ronin/asm/program'
require 'ronin/asm/x86/linux'

describe Ronin::ASM::X86::Linux do
  subject { Ronin::ASM::Program.new(arch: :x86, os: :linux) }

  it "must include Ronin::ASM::Syscalls::Linux::X86 for the Linux x86 syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::Linux::X86)
  end

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

    context "when given one additional syscall argument" do
      let(:argument1) { 0x41 }
      let(:arguments) { [argument1] }

      it "must add a `mov ebx, <argument>` instruction to set ebx to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end

      context "but the argument is the ebx register" do
        let(:argument1) { subject.ebx }

        it "must then omit the `mov ebx, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(2)

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

    context "when given two additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:arguments) { [argument1, argument2] }

      it "must add a `mov ecx, <argument>` instruction to set ecx to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      context "but the second argument is the ecx register" do
        let(:argument2) { subject.ecx }

        it "must then omit the `mov ecx, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(3)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86::Registers::EAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
          expect(subject.instructions[-1].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-1].operands[0].value).to eq(0x80)
        end
      end

      it "must add a `mov ebx, <argument>` instruction to set ebx to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "when given three additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:argument3) { 0x43 }
      let(:arguments) { [argument1, argument2, argument3] }

      it "must add a `mov edx, <argument>` instruction to set edx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86::Registers::EDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      context "but the third argument is the edx register" do
        let(:argument3) { subject.edx }

        it "must then omit the `mov edx, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(4)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86::Registers::EAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
          expect(subject.instructions[-1].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-1].operands[0].value).to eq(0x80)
        end
      end

      it "must add a `mov ecx, <argument>` instruction to set ecx to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov ebx, <argument>` instruction to set ebx to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "when given four additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:argument3) { 0x43 }
      let(:argument4) { 0x44 }
      let(:arguments) { [argument1, argument2, argument3, argument4] }

      it "must add a `mov esi, <argument>` instruction to set esi to the fourth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86::Registers::ESI)
        expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-6].operands[1].value).to eq(argument4)
      end

      context "but the fourth argument is the esi register" do
        let(:argument4) { subject.esi }

        it "must then omit the `mov esi, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(5)

          expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86::Registers::EDX)
          expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-5].operands[1].value).to eq(argument3)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86::Registers::EAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
          expect(subject.instructions[-1].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-1].operands[0].value).to eq(0x80)
        end
      end

      it "must add a `mov edx, <argument>` instruction to set edx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86::Registers::EDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      it "must add a `mov ecx, <argument>` instruction to set ecx to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov ebx, <argument>` instruction to set ebx to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "when given five additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:argument3) { 0x43 }
      let(:argument4) { 0x44 }
      let(:argument5) { 0x45 }
      let(:arguments) do
        [argument1, argument2, argument3, argument4, argument5]
      end

      it "must add a `mov edi, <argument>` instruction to set edi to the fifth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-7]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-7].operands[0]).to be(Ronin::ASM::X86::Registers::EDI)
        expect(subject.instructions[-7].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-7].operands[1].value).to eq(argument5)
      end

      context "but the fifth argument is the edi register" do
        let(:argument5) { subject.edi }

        it "must then omit the `mov edi, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(6)

          expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86::Registers::ESI)
          expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-6].operands[1].value).to eq(argument4)

          expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86::Registers::EDX)
          expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-5].operands[1].value).to eq(argument3)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86::Registers::EAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
          expect(subject.instructions[-1].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-1].operands[0].value).to eq(0x80)
        end
      end

      it "must add a `mov esi, <argument>` instruction to set esi to the fourth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86::Registers::ESI)
        expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-6].operands[1].value).to eq(argument4)
      end

      it "must add a `mov edx, <argument>` instruction to set edx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86::Registers::EDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      it "must add a `mov ecx, <argument>` instruction to set ecx to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov ebx, <argument>` instruction to set ebx to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "when given six additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:argument3) { 0x43 }
      let(:argument4) { 0x44 }
      let(:argument5) { 0x45 }
      let(:argument6) { 0x46 }
      let(:arguments) do
        [argument1, argument2, argument3, argument4, argument5, argument6]
      end

      it "must add a `mov ebp, <argument>` instruction to set ebp to the six syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-8]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-8].operands[0]).to be(Ronin::ASM::X86::Registers::EBP)
        expect(subject.instructions[-8].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-8].operands[1].value).to eq(argument6)
      end

      context "but the sixth argument is the ebp register" do
        let(:argument6) { subject.ebp }

        it "must then omit the `mov ebp, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(7)

          expect(subject.instructions[-7]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-7].operands[0]).to be(Ronin::ASM::X86::Registers::EDI)
          expect(subject.instructions[-7].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-7].operands[1].value).to eq(argument5)

          expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86::Registers::ESI)
          expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-6].operands[1].value).to eq(argument4)

          expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86::Registers::EDX)
          expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-5].operands[1].value).to eq(argument3)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86::Registers::EAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86::Instructions::INT)
          expect(subject.instructions[-1].operands[0]).to be_a(Ronin::ASM::X86::Immediate)
          expect(subject.instructions[-1].operands[0].value).to eq(0x80)
        end
      end

      it "must add a `mov edi, <argument>` instruction to set edi to the fifth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-7]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-7].operands[0]).to be(Ronin::ASM::X86::Registers::EDI)
        expect(subject.instructions[-7].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-7].operands[1].value).to eq(argument5)
      end

      it "must add a `mov esi, <argument>` instruction to set esi to the fourth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86::Registers::ESI)
        expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-6].operands[1].value).to eq(argument4)
      end

      it "must add a `mov edx, <argument>` instruction to set edx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86::Registers::EDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      it "must add a `mov ecx, <argument>` instruction to set ecx to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86::Registers::ECX)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov ebx, <argument>` instruction to set ebx to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86::Registers::EBX)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "but when given seven additional syscall arguments" do
      let(:arguments) { [0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47] }

      it do
        expect {
          subject.syscall_macro(number,*arguments)
        }.to raise_error(ArgumentError,"x86 Linux does not support more than six syscall arguments")
      end
    end
  end
end
