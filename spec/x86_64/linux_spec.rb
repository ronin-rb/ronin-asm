require 'spec_helper'
require 'ronin/asm/program'
require 'ronin/asm/x86_64/linux'

describe Ronin::ASM::X86_64::Linux do
  subject { Ronin::ASM::Program.new(arch: :x86_64, os: :linux) }

  it "must include Ronin::ASM::Syscalls::Linux::X86_64 for the x86-64 Linux syscalls" do
    expect(described_class).to include(Ronin::ASM::Syscalls::Linux::X86_64)
  end

  describe "#syscall_macro" do
    let(:number) { 0x40 }

    it "must add a `mov rax, <number>` instruction with the given syscall number" do
      subject.syscall_macro(number)

      expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
      expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86_64::Registers::RAX)
      expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
      expect(subject.instructions[-2].operands[1].value).to eq(number)
    end

    it "must add a `syscall` instruction" do
      subject.syscall_macro(number)

      expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
    end

    context "when given one additional syscall argument" do
      let(:argument1) { 0x41 }
      let(:arguments) { [argument1] }

      it "must add a `mov rdi, <argument>` instruction to set rdi to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end

      context "but the argument is the rdi register" do
        let(:argument1) { subject.rdi }

        it "must then omit the `mov rdi, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(2)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86_64::Registers::RAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        end
      end
    end

    context "when given two additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:arguments) { [argument1, argument2] }

      it "must add a `mov rsi, <argument>` instruction to set rsi to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      context "but the second argument is the rsi register" do
        let(:argument2) { subject.rsi }

        it "must then omit the `mov rsi, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(3)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86_64::Registers::RAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        end
      end

      it "must add a `mov rdi, <argument>` instruction to set rdi to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "when given three additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:argument3) { 0x43 }
      let(:arguments) { [argument1, argument2, argument3] }

      it "must add a `mov rdx, <argument>` instruction to set rdx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      context "but the third argument is the rdx register" do
        let(:argument3) { subject.rdx }

        it "must then omit the `mov rdx, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(4)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86_64::Registers::RAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        end
      end

      it "must add a `mov rsi, <argument>` instruction to set rsi to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov rdi, <argument>` instruction to set rdi to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "when given four additional syscall arguments" do
      let(:argument1) { 0x41 }
      let(:argument2) { 0x42 }
      let(:argument3) { 0x43 }
      let(:argument4) { 0x44 }
      let(:arguments) { [argument1, argument2, argument3, argument4] }

      it "must add a `mov r10, <argument>` instruction to set r10 to the fourth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86_64::Registers::R10)
        expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-6].operands[1].value).to eq(argument4)
      end

      context "but the fourth argument is the r10 register" do
        let(:argument4) { subject.r10 }

        it "must then omit the `mov r10, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(5)

          expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDX)
          expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-5].operands[1].value).to eq(argument3)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86_64::Registers::RAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        end
      end

      it "must add a `mov rdx, <argument>` instruction to set rdx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      it "must add a `mov rsi, <argument>` instruction to set rsi to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov rdi, <argument>` instruction to set rdi to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
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

      it "must add a `mov r8, <argument>` instruction to set r8 to the fifth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-7]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-7].operands[0]).to be(Ronin::ASM::X86_64::Registers::R8)
        expect(subject.instructions[-7].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-7].operands[1].value).to eq(argument5)
      end

      context "but the fifth argument is the r8 register" do
        let(:argument5) { subject.r8 }

        it "must then omit the `mov r8, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(6)

          expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86_64::Registers::R10)
          expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-6].operands[1].value).to eq(argument4)

          expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDX)
          expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-5].operands[1].value).to eq(argument3)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86_64::Registers::RAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        end
      end

      it "must add a `mov r10, <argument>` instruction to set r10 to the fourth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86_64::Registers::R10)
        expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-6].operands[1].value).to eq(argument4)
      end

      it "must add a `mov rdx, <argument>` instruction to set rdx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      it "must add a `mov rsi, <argument>` instruction to set rsi to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov rdi, <argument>` instruction to set rdi to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
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

      it "must add a `mov r9, <argument>` instruction to set r9 to the six syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-8]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-8].operands[0]).to be(Ronin::ASM::X86_64::Registers::R9)
        expect(subject.instructions[-8].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-8].operands[1].value).to eq(argument6)
      end

      context "but the sixth argument is the r9 register" do
        let(:argument6) { subject.r9 }

        it "must then omit the `mov r9, <argument>` instruction" do
          subject.syscall_macro(number,*arguments)

          expect(subject.instructions.length).to eq(7)

          expect(subject.instructions[-7]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-7].operands[0]).to be(Ronin::ASM::X86_64::Registers::R8)
          expect(subject.instructions[-7].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-7].operands[1].value).to eq(argument5)

          expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86_64::Registers::R10)
          expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-6].operands[1].value).to eq(argument4)

          expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDX)
          expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-5].operands[1].value).to eq(argument3)

          expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
          expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-4].operands[1].value).to eq(argument2)

          expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
          expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-3].operands[1].value).to eq(argument1)

          expect(subject.instructions[-2]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
          expect(subject.instructions[-2].operands[0]).to be(Ronin::ASM::X86_64::Registers::RAX)
          expect(subject.instructions[-2].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
          expect(subject.instructions[-2].operands[1].value).to eq(number)

          expect(subject.instructions[-1]).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        end
      end

      it "must add a `mov r8, <argument>` instruction to set r8 to the fifth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-7]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-7].operands[0]).to be(Ronin::ASM::X86_64::Registers::R8)
        expect(subject.instructions[-7].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-7].operands[1].value).to eq(argument5)
      end

      it "must add a `mov r10, <argument>` instruction to set r10 to the fourth syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-6]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-6].operands[0]).to be(Ronin::ASM::X86_64::Registers::R10)
        expect(subject.instructions[-6].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-6].operands[1].value).to eq(argument4)
      end

      it "must add a `mov rdx, <argument>` instruction to set rdx to the third syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-5]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-5].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDX)
        expect(subject.instructions[-5].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-5].operands[1].value).to eq(argument3)
      end

      it "must add a `mov rsi, <argument>` instruction to set rsi to the second syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-4]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-4].operands[0]).to be(Ronin::ASM::X86_64::Registers::RSI)
        expect(subject.instructions[-4].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-4].operands[1].value).to eq(argument2)
      end

      it "must add a `mov rdi, <argument>` instruction to set rdi to the first syscall argument" do
        subject.syscall_macro(number,*arguments)

        expect(subject.instructions[-3]).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(subject.instructions[-3].operands[0]).to be(Ronin::ASM::X86_64::Registers::RDI)
        expect(subject.instructions[-3].operands[1]).to be_a(Ronin::ASM::X86_64::Immediate)
        expect(subject.instructions[-3].operands[1].value).to eq(argument1)
      end
    end

    context "but when given seven additional syscall arguments" do
      let(:arguments) { [0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47] }

      it do
        expect {
          subject.syscall_macro(number,*arguments)
        }.to raise_error(ArgumentError,"x86-64 Linux does not support more than six syscall arguments")
      end
    end
  end
end
