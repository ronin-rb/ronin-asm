require 'spec_helper'
require 'ronin/asm/x86/assembler'

require 'ronin/asm/program'
require 'stringio'

describe Ronin::ASM::X86::Assembler do
  let(:program) do
    Ronin::ASM::Program.new(arch: :x86) do
      xor ecx, ecx

      _loop do
        inc cl

        cmp cl, 0x10
        jne _loop
      end

      mov eax, ecx
    end
  end

  subject { described_class.new(program) }

  describe "#initialize" do
    it "must still set #program" do
      expect(subject.program).to be(program)
    end

    it "must stil set #instructions to the program's #instructions" do
      expect(subject.instructions).to eq(program.instructions)
    end

    it "must still initialize #modified_instructions to an empty Hash" do
      expect(subject.modified_instructions).to eq({})
    end
  end

  describe "#assemble" do
    let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

    let(:expected_output) { "1\xC9\xFE\xC1\x80\xF9\x10u\xF9\x89\xC8".b }

    it "must write the assembled and encoded assembly instructions to the output stream" do
      subject.assemble(output)

      expect(output.string).to eq(expected_output)
    end

    it "must return the number of bytes written to the output" do
      expect(subject.assemble(output)).to eq(expected_output.bytesize)
    end

    context "when the program's instructions contain Ronin::ASM::X86::SymbolRef operands" do
      context "and the SymbolRef operand reference labels defined before them" do
        let(:program) do
          Ronin::ASM::Program.new(arch: :x86) do
            _loop do
              nop

              # NOTE: relative offsets are calculate from the end of the
              # encoded assembly instruction.
              jmp _loop
            end
          end
        end

        it "must replace the SymbolRef operands with RelativeOffset operands and the negative byte distance between the end of the instruction and the label" do
          subject.assemble(output)

          expect(subject.modified_instructions[2].class).to be(subject.instructions[2].class)
          expect(subject.modified_instructions[2].operands[0]).to be_a(Ronin::ASM::X86::RelativeOffset)
          expect(subject.modified_instructions[2].operands[0].value).to eq(-3)
        end

        context "when the byte distance is greater or equal to -128" do
          let(:program) do
            Ronin::ASM::Program.new(arch: :x86) do
              _loop do
                123.times { nop }

                # NOTE: relative offsets are calculate from the end of the
                # encoded assembly instruction.
                jmp _loop
              end
            end
          end

          it "must encode the RelativeOffset operand as a rel8 operand" do
            subject.assemble(output)

            expect(subject.modified_instructions[1+123].class).to be(subject.instructions[1+123].class)
            expect(subject.modified_instructions[1+123].operands[0]).to be_a(Ronin::ASM::X86::RelativeOffset)
            expect(subject.modified_instructions[1+123].operands[0].type).to eq(:rel8)
            expect(subject.modified_instructions[1+123].operands[0].size).to eq(1)
            expect(subject.modified_instructions[1+123].operands[0].value).to eq(-(123 + 2))
          end
        end

        context "when the byte distance is less than -128" do
          let(:program) do
            Ronin::ASM::Program.new(arch: :x86) do
              _loop do
                128.times { nop }

                # NOTE: relative offsets are calculate from the end of the
                # encoded assembly instruction.
                jmp _loop
              end
            end
          end

          it "must encode the RelativeOffset operand as a rel32 operand" do
            subject.assemble(output)

            expect(subject.modified_instructions[1+128].class).to be(subject.instructions[1+128].class)
            expect(subject.modified_instructions[1+128].operands[0]).to be_a(Ronin::ASM::X86::RelativeOffset)
            expect(subject.modified_instructions[1+128].operands[0].type).to eq(:rel32)
            expect(subject.modified_instructions[1+128].operands[0].size).to eq(4)
            expect(subject.modified_instructions[1+128].operands[0].value).to eq(-(128 + 5))
          end
        end
      end

      context "but the SymbolRef operand reference labels defined after them" do
        let(:program) do
          Ronin::ASM::Program.new(arch: :x86) do
            # NOTE: relative offsets are calculate from the end of the
            # encoded assembly instruction.
            jmp _loop

            nop

            _loop do
              nop
            end
          end
        end

        it "must replace the SymbolRef operands with RelativeOffset operands and the positive byte distance between the end of the instruction and the label" do
          subject.assemble(output)

          expect(subject.modified_instructions[0].class).to be(subject.instructions[0].class)
          expect(subject.modified_instructions[0].operands[0]).to be_a(Ronin::ASM::X86::RelativeOffset)
          expect(subject.modified_instructions[0].operands[0].value).to eq(1)
        end

        context "when the byte distance is less than 128" do
          let(:program) do
            Ronin::ASM::Program.new(arch: :x86) do
              # NOTE: relative offsets are calculate from the end of the
              # encoded assembly instruction.
              jmp _loop

              123.times { nop }

              _loop { nop }
            end
          end

          it "must encode the RelativeOffset operand as a rel8 operand" do
            subject.assemble(output)

            expect(subject.modified_instructions[0].class).to be(subject.instructions[0].class)
            expect(subject.modified_instructions[0].operands[0]).to be_a(Ronin::ASM::X86::RelativeOffset)
            expect(subject.modified_instructions[0].operands[0].type).to eq(:rel8)
            expect(subject.modified_instructions[0].operands[0].size).to eq(1)
            expect(subject.modified_instructions[0].operands[0].value).to eq(123)
          end
        end

        context "when the byte distance is greater or equal to 128" do
          let(:program) do
            Ronin::ASM::Program.new(arch: :x86) do
              # NOTE: relative offsets are calculate from the end of the
              # encoded assembly instruction.
              jmp _loop

              128.times { nop }

              _loop { nop }
            end
          end

          it "must encode the RelativeOffset operand as a rel32 operand" do
            subject.assemble(output)

            expect(subject.modified_instructions[0].class).to be(subject.instructions[0].class)
            expect(subject.modified_instructions[0].operands[0]).to be_a(Ronin::ASM::X86::RelativeOffset)
            expect(subject.modified_instructions[0].operands[0].type).to eq(:rel32)
            expect(subject.modified_instructions[0].operands[0].size).to eq(4)
            expect(subject.modified_instructions[0].operands[0].value).to eq(128)
          end
        end
      end

      context "but the SymbolRef operand cannot be resolved to any label" do
        let(:program) do
          Ronin::ASM::Program.new(arch: :x86) do
            xor ecx, ecx
            inc ecx
            jmp _symbol
          end
        end

        let(:symbol_ref) { program.instructions[-1].operands[0] }

        it do
          expect {
            subject.assemble(output)
          }.to raise_error(Ronin::ASM::UnresolvedSymbolError,"could not resolve symbol: #{symbol_ref.name}")
        end
      end
    end

    context "when the program's instructions already contain Ronin::ASM::X86::RelativeOffset operands" do
      let(:program) do
        Ronin::ASM::Program.new(arch: :x86) do
          jmp rel32(3)
          nop
          nop
          nop
        end
      end

      it "must not change the values of the Ronin::ASM::X86::RelativeOffset operands" do
        subject.assemble(output)

        expect(subject.modified_instructions).to be_empty
      end
    end
  end

  describe "#relative_offset" do
    let(:value) { -4 }

    it "must return a new Ronin::ASM::X86::RelativeOffset object for the value" do
      relative_offset = subject.relative_offset(value)

      expect(relative_offset).to be_a(Ronin::ASM::X86::RelativeOffset)
      expect(relative_offset.value).to eq(value)
    end
  end

  describe "#encoder" do
    let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

    it "must return a new Ronin::ASM::X86::Encoder object for the output object" do
      encoder = subject.encoder(output)

      expect(encoder).to be_a(Ronin::ASM::X86::Encoder)
      expect(encoder.output).to be(output)
    end
  end

  describe described_class::NullOutput do
    subject { described_class }

    describe ".write" do
      let(:string) { "hello" }

      it "must return the number of bytes within the given string" do
        expect(subject.write(string)).to eq(string.bytesize)
      end
    end

    describe ".putc" do
      let(:byte) { 0x41 }

      it "must return 1" do
        expect(subject.putc(byte)).to eq(1)
      end
    end
  end
end
