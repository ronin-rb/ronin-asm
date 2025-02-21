require 'spec_helper'
require 'ronin/asm/x86/encoder'

require 'ronin/asm/memory'
require 'ronin/asm/x86/registers'

describe Ronin::ASM::X86::Encoder do
  let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

  subject { described_class.new(output) }

  describe "#write_modrm" do
    context "when mode is a Memory operand" do
      let(:mem) do
        Ronin::ASM::X86::Memory.new(base: Ronin::ASM::X86::Registers::ECX)
      end
      let(:mode) { mem }
      let(:reg)  { Ronin::ASM::X86::Registers::EBX }
      let(:rm)   { mem }

      let(:bytes_written) { 2 }

      it "must call #write_modrm_mem and return the number of bytes written" do
        expect(subject).to receive(:write_modrm_mem).with(mode,reg,rm).and_return(bytes_written)

        expect(subject.write_modrm(mode,reg,rm)).to eq(bytes_written)
      end
    end

    context "when mode is 0b11" do
      let(:mode) { 0b11 }
      let(:reg)  { Ronin::ASM::X86::Registers::EBX }
      let(:rm)   { Ronin::ASM::X86::Registers::ECX }

      it "must encode 0b11 into the high-bits of the ModRM byte" do
        subject.write_modrm_byte(mode,reg,rm)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b11000000) >> 6).to eq(mode)
      end

      it "must return 1" do
        expect(subject.write_modrm_byte(mode,reg,rm)).to eq(1)
      end
    end
  end

  describe "#write_modrm_mem" do
    let(:base) { Ronin::ASM::X86::Registers::EBX }
    let(:mem)  { Ronin::ASM::X86::Memory.new(base: base) }
    let(:reg)  { Ronin::ASM::X86::Registers::ECX }
    let(:rm)   { mem }

    context "when the Memory operand has a displacement" do
      let(:base)  { Ronin::ASM::X86::Registers::EBX }
      let(:mem) do
        Ronin::ASM::X86::Memory.new(base: base, displacement: displacement)
      end

      context "and the displacement fits in one byte" do
        let(:displacement) { 10 }
        let(:base)  { Ronin::ASM::X86::Registers::EBX }

        it "must encode 0b01 as the mode field in the ModRM byte" do
          subject.write_modrm_mem(mem,reg,rm)

          modrm = output.string.getbyte(0)

          expect((modrm & 0b11_000_000) >> 6).to eq(0b01)
        end

        it "must encode the displacement as a single byte after the ModRM byte" do
          subject.write_modrm_mem(mem,reg,rm)

          disp_byte = output.string.getbyte(1)

          expect(disp_byte).to eq(displacement)
        end

        it "must return 2" do
          expect(subject.write_modrm_mem(mem,reg,rm)).to eq(2)
        end
      end

      context "and the displacement is larger than one byte" do
        let(:displacement) { 1024 }

        it "must encode 0b10 as the mode field in the ModRM byte" do
          subject.write_modrm_mem(mem,reg,rm)

          modrm = output.string.getbyte(0)

          expect((modrm & 0b11_000_000) >> 6).to eq(0b10)
        end

        it "must encode the displacement as a 32bit integer, in little-endian format, following the ModRM byte" do
          subject.write_modrm_mem(mem,reg,rm)

          disp_bytes = output.string[1..]

          expect(disp_bytes).to eq([displacement].pack('L<'))
        end

        it "must return 5" do
          expect(subject.write_modrm_mem(mem,reg,rm)).to eq(5)
        end
      end
    end

    context "when the Memory operand has an index" do
      let(:base)  { Ronin::ASM::X86::Registers::EBX }
      let(:index) { Ronin::ASM::X86::Registers::ESI }
      let(:scale) { 4 }
      let(:mem) do
        Ronin::ASM::X86::Memory.new(
          base:  base,
          index: index,
          scale: scale
        )
      end

      it "must encode 0b00 as the mode field in the ModRM byte" do
        subject.write_modrm_mem(mem,reg,rm)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b11_000_000) >> 6).to eq(0b00)
      end

      it "must encode 0b100 as the rm field in the ModRM byte" do
        subject.write_modrm_mem(mem,reg,rm)

        modrm = output.string.getbyte(0)

        expect(modrm & 0b111).to eq(0b100)
      end

      it "must encode the scale, index, and base of the Memory operand in a SIB byte, following the ModRM byte" do
        subject.write_modrm_mem(mem,reg,rm)

        sib = output.string.getbyte(1)

        expect(sib).to eq(
          (2 << 6) | ((index.to_i & 0b111) << 3) | (base.to_i & 0b111)
        )
      end

      it "must return 2" do
        expect(subject.write_modrm_mem(mem,reg,rm)).to eq(2)
      end

      context "and when it also has a diplacement" do
        context "and the displacement fits into a single byte" do
          let(:displacement) { 10 }
          let(:mem) do
            Ronin::ASM::X86::Memory.new(
              base: base,
              displacement: displacement,
              index: index,
              scale: scale
            )
          end

          it "must encode 0b01 as the mode field in the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            modrm = output.string.getbyte(0)

            expect((modrm & 0b11_000_000) >> 6).to eq(0b01)
          end

          it "must encode the displacement byte after the SIB byte" do
            subject.write_modrm_mem(mem,reg,rm)

            disp_byte = output.string.getbyte(2)

            expect(disp_byte).to eq(displacement)
          end

          it "must return 3" do
            expect(subject.write_modrm_mem(mem,reg,rm)).to eq(3)
          end
        end

        context "and the displacement is larger than a single byte" do
          let(:displacement) { 1024 }
          let(:mem) do
            Ronin::ASM::X86::Memory.new(
              base: base,
              displacement: displacement,
              index: index,
              scale: scale
            )
          end

          it "must encode 0b10 as the mode field in the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            modrm = output.string.getbyte(0)

            expect((modrm & 0b11_000_000) >> 6).to eq(0b10)
          end

          it "must encode the displacement as a 32bit integer, in little-endian format, following the SIB byte" do
            subject.write_modrm_mem(mem,reg,rm)

            disp_bytes = output.string[2..]

            expect(disp_bytes).to eq([displacement].pack('L<'))
          end

          it "must return 6" do
            expect(subject.write_modrm_mem(mem,reg,rm)).to eq(6)
          end
        end
      end
    end

    context "when the base of the Memory operand is the stack pointer register (ESP/SP/SPL)" do
      let(:base) { Ronin::ASM::X86::Registers::ESP }
      let(:mem) { Ronin::ASM::X86::Memory.new(base: base) }

      it "must encode a SIB byte with the scale field set to 1, and index/base fields set to 4 (the ESP register's number)" do
        subject.write_modrm_mem(mem,reg,rm)

        sib = output.string.getbyte(1)

        # scale is mapped to a power of 2
        expect((sib & 0b11_000_000) >> 6).to eq(0)
        expect((sib & 0b111_000) >> 3).to eq(4)
        expect(sib & 0b111).to eq(0b100)
      end

      it "must return 2" do
        expect(subject.write_modrm_mem(mem,reg,rm)).to eq(2)
      end

      context "when the Memory operand has a displacement" do
        let(:mem) do
          Ronin::ASM::X86::Memory.new(base: base, displacement: displacement)
        end

        context "and the displacement fits in one byte" do
          let(:displacement) { 10 }

          it "must encode 0b01 as the mode field in the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            modrm = output.string.getbyte(0)

            expect((modrm & 0b11_000_000) >> 6).to eq(0b01)
          end

          it "must encode a SIB byte with the scale field set to 1, and index/base fields set to 4 (the ESP register's number)" do
            subject.write_modrm_mem(mem,reg,rm)

            sib = output.string.getbyte(1)

            # scale is mapped to a power of 2
            expect((sib & 0b11_000_000) >> 6).to eq(0)
            expect((sib & 0b111_000) >> 3).to eq(4)
            expect(sib & 0b111).to eq(0b100)
          end

          it "must encode the displacement as a single byte after the ModRM and SIB bytes" do
            subject.write_modrm_mem(mem,reg,rm)

            disp_byte = output.string.getbyte(2)

            expect(disp_byte).to eq(displacement)
          end

          it "must return 2" do
            expect(subject.write_modrm_mem(mem,reg,rm)).to eq(3)
          end
        end

        context "and the displacement is larger than one byte" do
          let(:displacement) { 1024 }

          it "must encode 0b10 as the mode field in the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            modrm = output.string.getbyte(0)

            expect((modrm & 0b11_000_000) >> 6).to eq(0b10)
          end

          it "must encode a SIB byte with the scale field set to 1, and index/base fields set to 4 (the ESP register's number)" do
            subject.write_modrm_mem(mem,reg,rm)

            sib = output.string.getbyte(1)

            # scale is mapped to a power of 2
            expect((sib & 0b11_000_000) >> 6).to eq(0)
            expect((sib & 0b111_000) >> 3).to eq(4)
            expect(sib & 0b111).to eq(0b100)
          end

          it "must encode 0b10 as the mode field in the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            modrm = output.string.getbyte(0)

            expect((modrm & 0b11_000_000) >> 6).to eq(0b10)
          end

          it "must encode the displacement as a 32bit integer, in little-endian format, following the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            disp_bytes = output.string[2..]

            expect(disp_bytes).to eq([displacement].pack('L<'))
          end

          it "must return 6" do
            expect(subject.write_modrm_mem(mem,reg,rm)).to eq(6)
          end
        end
      end
    end

    context "when the base of the Memory operand is the stack base pointer register (EBP/BP/BPL)" do
      let(:base) { Ronin::ASM::X86::Registers::EBP }
      let(:mem)  { Ronin::ASM::X86::Memory.new(base: base) }

      context "but the Memory operand does not have a displacement" do
        it "must still encode a 0x00 byte following the ModRM byte" do
          subject.write_modrm_mem(mem,reg,rm)

          disp_byte = output.string.getbyte(1)

          expect(disp_byte).to eq(0)
        end

        it "must return 2" do
          expect(subject.write_modrm_mem(mem,reg,rm)).to eq(2)
        end
      end

      context "and the Memory operand has a displacement" do
        let(:mem) do
          Ronin::ASM::X86::Memory.new(base: base, displacement: displacement)
        end

        context "and the displacement fits in one byte" do
          let(:displacement) { 10 }

          it "must encode 0b01 as the mode field in the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            modrm = output.string.getbyte(0)

            expect((modrm & 0b11_000_000) >> 6).to eq(0b01)
          end

          it "must encode the displacement as a single byte after the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            disp_byte = output.string.getbyte(1)

            expect(disp_byte).to eq(displacement)
          end

          it "must return 2" do
            expect(subject.write_modrm_mem(mem,reg,rm)).to eq(2)
          end
        end

        context "and the displacement is larger than one byte" do
          let(:displacement) { 1024 }

          it "must encode 0b10 as the mode field in the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            modrm = output.string.getbyte(0)

            expect((modrm & 0b11_000_000) >> 6).to eq(0b10)
          end

          it "must encode the displacement as a 32bit integer, in little-endian format, following the ModRM byte" do
            subject.write_modrm_mem(mem,reg,rm)

            disp_bytes = output.string[1..]

            expect(disp_bytes).to eq([displacement].pack('L<'))
          end

          it "must return 5" do
            expect(subject.write_modrm_mem(mem,reg,rm)).to eq(5)
          end
        end
      end
    end

    context "but the reg operand is an Integer instead of a Register" do
      let(:reg) { 6 }

      it "must encode the Integer value into the reg field of the ModRM byte" do
        subject.write_modrm_mem(mem,reg,rm)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b111_000) >> 3).to eq(reg)
      end
    end
  end

  describe "#write_sib_byte" do
    let(:scale) { 4 }
    let(:index) { Ronin::ASM::X86::Registers::EBX }
    let(:base)  { 0b010 }

    it "must encode the the scale value into bits 7 and 6 as a power of 2" do
      subject.write_sib_byte(scale,index,base)

      modrm = output.string.getbyte(0)

      expect((modrm & 0b11000000) >> 6).to eq(2)
    end

    context "when scale is 1" do
      it "must set bits 7 and 6 to 0b00" do
        subject.write_sib_byte(1,index,base)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b11000000) >> 6).to eq(0b00)
      end
    end

    context "when scale is 2" do
      it "must set bits 7 and 6 to 0b01" do
        subject.write_sib_byte(2,index,base)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b11000000) >> 6).to eq(0b01)
      end
    end

    context "when scale is 4" do
      it "must set bits 7 and 6 to 0b10" do
        subject.write_sib_byte(4,index,base)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b11000000) >> 6).to eq(0b10)
      end
    end

    context "when scale is 8" do
      it "must set bits 7 and 6 to 0b11" do
        subject.write_sib_byte(8,index,base)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b11000000) >> 6).to eq(0b11)
      end
    end

    context "when scale is not 1, 2, 4, or 8" do
      let(:scale) { 3 }

      it do
        expect {
          subject.write_sib_byte(scale,index,base)
        }.to raise_error(ArgumentError,"invalid scale value: #{scale.inspect}")
      end
    end

    it "must encode the index value into bits 5, 4, and 3" do
      subject.write_sib_byte(scale,index,base)

      modrm = output.string.getbyte(0)

      expect((modrm & 0b00111000) >> 3).to eq(index.to_i & 0b111)
    end

    it "must encode the base value into bits 2, 1, and 0" do
      subject.write_sib_byte(scale,index,base)

      modrm = output.string.getbyte(0)

      expect(modrm & 0b00000111).to eq(base.to_i & 0b111)
    end

    it "must return 1" do
      expect(subject.write_sib_byte(scale,index,base)).to eq(1)
    end
  end

  describe "#write_modrm_byte" do
    let(:mode) { 0b11 }
    let(:reg)  { 0b101 }
    let(:rm)   { 0b010 }

    it "must encode the the mode value into bits 7 and 6" do
      subject.write_modrm_byte(mode,reg,rm)

      modrm = output.string.getbyte(0)

      expect((modrm & 0b11000000) >> 6).to eq(mode)
    end

    it "must encode the reg value into bits 5, 4, and 3" do
      subject.write_modrm_byte(mode,reg,rm)

      modrm = output.string.getbyte(0)

      expect((modrm & 0b00111000) >> 3).to eq(reg)
    end

    it "must encode the reg value into bits 2, 1, and 0" do
      subject.write_modrm_byte(mode,reg,rm)

      modrm = output.string.getbyte(0)

      expect(modrm & 0b00000111).to eq(rm)
    end

    context "when reg is not an Integer" do
      let(:reg) { Ronin::ASM::X86::Registers::EBX }

      it "must convert the mode to an Integer before encoding it into bits 5, 4, and 3" do
        subject.write_modrm_byte(mode,reg,rm)

        modrm = output.string.getbyte(0)

        expect((modrm & 0b00111000) >> 3).to eq(reg.to_i & 0b111)
      end
    end

    context "when rm is not an Integer" do
      let(:rm) { Ronin::ASM::X86::Registers::ECX }

      it "must convert the mode to an Integer before encoding it into bits 2, 1, and 0" do
        subject.write_modrm_byte(mode,reg,rm)

        modrm = output.string.getbyte(0)

        expect(modrm & 0b00000111).to eq(rm.to_i & 0b111)
      end
    end

    it "must return 1" do
      expect(subject.write_modrm_byte(mode,reg,rm)).to eq(1)
    end
  end

  describe "#write_immediate" do
    context "when the given size is 1" do
      let(:value) { 0x41 }

      it "must write the value as a single byte" do
        subject.write_immediate(value,1)

        expect(output.string).to eq("\x41".b)
      end

      it "must return 1" do
        expect(subject.write_immediate(value,1)).to eq(1)
      end
    end

    context "when the given size is 2" do
      let(:value) { 0x1122 }

      it "must write the value as a 16bit word in little-endian format" do
        subject.write_immediate(value,2)

        expect(output.string).to eq("\x22\x11".b)
      end

      it "must return 2" do
        expect(subject.write_immediate(value,2)).to eq(2)
      end
    end

    context "when the given size is 4" do
      let(:value) { 0x11223344 }

      it "must write the value as a 32bit integer in little-endian format" do
        subject.write_immediate(value,4)

        expect(output.string).to eq("\x44\x33\x22\x11".b)
      end

      it "must return 4" do
        expect(subject.write_immediate(value,4)).to eq(4)
      end
    end

    context "when the given size is 8" do
      let(:value) { 0x1122334455667788 }

      it "must write the value as a 64bit integer in little-endian format" do
        subject.write_immediate(value,8)

        expect(output.string).to eq("\x88\x77\x66\x55\x44\x33\x22\x11".b)
      end

      it "must return 8" do
        expect(subject.write_immediate(value,8)).to eq(8)
      end
    end
  end

  describe "#write_code_offset" do
    context "when the given size is 1" do
      let(:value) { 0x41 }

      it "must write the value as a single byte" do
        subject.write_code_offset(value,1)

        expect(output.string).to eq("\x41".b)
      end

      it "must return 1" do
        expect(subject.write_code_offset(value,1)).to eq(1)
      end
    end

    context "when the given size is 2" do
      let(:value) { 0x1122 }

      it "must write the value as a 16bit word in little-endian format" do
        subject.write_code_offset(value,2)

        expect(output.string).to eq("\x22\x11".b)
      end

      it "must return 2" do
        expect(subject.write_code_offset(value,2)).to eq(2)
      end
    end

    context "when the given size is 4" do
      let(:value) { 0x11223344 }

      it "must write the value as a 32bit integer in little-endian format" do
        subject.write_code_offset(value,4)

        expect(output.string).to eq("\x44\x33\x22\x11".b)
      end

      it "must return 4" do
        expect(subject.write_code_offset(value,4)).to eq(4)
      end
    end

    context "when the given size is 8" do
      let(:value) { 0x1122334455667788 }

      it "must write the value as a 64bit integer in little-endian format" do
        subject.write_code_offset(value,8)

        expect(output.string).to eq("\x88\x77\x66\x55\x44\x33\x22\x11".b)
      end

      it "must return 8" do
        expect(subject.write_code_offset(value,8)).to eq(8)
      end
    end
  end

  describe "#write_data_offset" do
    context "when the given size is 1" do
      let(:value) { 0x41 }

      it "must write the value as a single byte" do
        subject.write_data_offset(value,1)

        expect(output.string).to eq("\x41".b)
      end

      it "must return 1" do
        expect(subject.write_data_offset(value,1)).to eq(1)
      end
    end

    context "when the given size is 2" do
      let(:value) { 0x1122 }

      it "must write the value as a 16bit word in little-endian format" do
        subject.write_data_offset(value,2)

        expect(output.string).to eq("\x22\x11".b)
      end

      it "must return 2" do
        expect(subject.write_data_offset(value,2)).to eq(2)
      end
    end

    context "when the given size is 4" do
      let(:value) { 0x11223344 }

      it "must write the value as a 32bit integer in little-endian format" do
        subject.write_data_offset(value,4)

        expect(output.string).to eq("\x44\x33\x22\x11".b)
      end

      it "must return 4" do
        expect(subject.write_data_offset(value,4)).to eq(4)
      end
    end

    context "when the given size is 8" do
      let(:value) { 0x1122334455667788 }

      it "must write the value as a 64bit integer in little-endian format" do
        subject.write_data_offset(value,8)

        expect(output.string).to eq("\x88\x77\x66\x55\x44\x33\x22\x11".b)
      end

      it "must return 8" do
        expect(subject.write_data_offset(value,8)).to eq(8)
      end
    end
  end

  describe "#write_register_byte" do
    let(:reg) { Ronin::ASM::X86::Registers::ECX }

    it "must write a single byte with the register number encoded into the lower four bits" do
      subject.write_register_byte(reg)

      byte = output.string.getbyte(0)

      expect(byte & 0b1111).to eq(reg.number)
    end

    context "when no payload argument is given" do
      it "must not set the high four bits of the byte" do
        subject.write_register_byte(reg)

        byte = output.string.getbyte(0)

        expect((byte & 0b11110000) >> 4).to eq(0)
      end
    end

    context "when given the optional payload argument" do
      let(:immediate) { Ronin::ASM::Immediate.new(3) }

      it "must encode the Immediate's value into the high four bits of the byte" do
        subject.write_register_byte(reg)

        byte = output.string.getbyte(0)

        expect(byte & 0b1111).to eq(reg.number)
      end
    end
  end

  describe "#write_opcode" do
    let(:byte) { 0xc3 }

    it "must write the opcode byte to the output stream" do
      subject.write_opcode(byte)

      expect(output.string).to eq(byte.chr(Encoding::ASCII_8BIT))
    end

    context "when given the optional addend argument" do
      let(:byte) { 0xc0 }
      let(:addend) { Ronin::ASM::X86::Registers::EBX }

      it "must binary OR in the addened into the lower four bits of the opcode" do
        subject.write_opcode(byte,addend)

        opcode = output.string.getbyte(0)

        expect(opcode & 0b11111000).to eq(byte)
        expect(opcode & 0b111).to eq(addend.to_i)
      end
    end

    it "must return 1" do
      expect(subject.write_opcode(byte)).to eq(1)
    end
  end

  describe "#write_prefix" do
    let(:byte) { 0x41 }
    let(:mandatory) { true }

    it "must write the prefix byte to the output stream" do
      subject.write_prefix(byte, mandatory: mandatory)

      expect(output.string).to eq(byte.chr)
    end

    it "must return 1" do
      expect(subject.write_prefix(byte, mandatory: mandatory)).to eq(1)
    end
  end

  describe "#write_vex"

  describe "#write_evex"
end
