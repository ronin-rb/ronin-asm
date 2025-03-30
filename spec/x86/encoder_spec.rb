require 'spec_helper'
require 'ronin/asm/x86/encoder'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/memory'
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

    context "when mode is a Broadcast operand" do
      let(:mem) do
        Ronin::ASM::X86::Memory.new(base: Ronin::ASM::X86::Registers::ECX)
      end
      let(:broadcast) { Ronin::ASM::X86::Broadcast.new(mem, {1=>2}) }

      let(:mode) { broadcast }
      let(:reg)  { Ronin::ASM::X86::Registers::EBX }
      let(:rm)   { broadcast }

      let(:bytes_written) { 2 }

      it "must call #write_modrm_mem with the Broadcast decorator's operand and return the number of bytes written" do
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
      let(:immediate) { Ronin::ASM::X86::Immediate.new(3) }

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

  describe "#write_vex" do
    context "when type: is :vex, x: is 0, b: is 0, w: is 0, and m_mmmm: is 0b00001" do
      let(:r)    { 0 }
      let(:vvvv) { Ronin::ASM::X86::Registers::EAX }
      let(:l)    { 0 }
      let(:pp)   { 0b00 }

      it "must write a two byte VEX escape prefix" do
        expect(subject).to receive(:write_vex_two_byte).with(
          r: r, vvvv: vvvv, l: l, pp: pp
        ).and_return(2)

        expect(
          subject.write_vex(
            type: :vex, x: 0, b: 0, w: 0, m_mmmm: 0b00001, r: r, vvvv: vvvv,
            l: l, pp: pp
          )
        ).to eq(2)
      end
    end

    context "when type: is :vex, x: is 0, b: is 0, w: is omitted, and m_mmmm: is 0b00001" do
      let(:r)    { 0 }
      let(:vvvv) { Ronin::ASM::X86::Registers::EAX }
      let(:l)    { 0 }
      let(:pp)   { 0b00 }

      it "must write a two byte VEX escape prefix" do
        expect(subject).to receive(:write_vex_two_byte).with(
          r: r, vvvv: vvvv, l: l, pp: pp
        ).and_return(2)

        expect(
          subject.write_vex(
            type: :vex, x: 0, b: 0, m_mmmm: 0b00001, r: r, vvvv: vvvv,
            l: l, pp: pp
          )
        ).to eq(2)
      end
    end

    context "otherwise" do
      let(:type) { :vex }
      let(:w)    { 0 }
      let(:l)    { 0 }
      let(:m_mmmm) { 0b00010 }
      let(:pp)     { 0b00 }
      let(:r)      { 0 }
      let(:x)      { 0 }
      let(:b)      { 0 }
      let(:vvvv)   { Ronin::ASM::X86::Registers::EAX }

      it "must write a three byte VEX/XOP escape prefix" do
        expect(subject).to receive(:write_vex_three_byte).with(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        ).and_return(3)

        expect(
          subject.write_vex(
            type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
            vvvv: vvvv
          )
        ).to eq(3)
      end
    end
  end

  describe "#write_vex_two_byte" do
    let(:r)    { 0 }
    let(:vvvv) { Ronin::ASM::X86::Registers::EAX }
    let(:l)    { 0 }
    let(:pp)   { 0b00 }

    it "must write the 0b11000101 prefix as the first byte" do
      subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

      byte1 = output.string.getbyte(0)

      expect(byte1).to eq(0b11000101)
    end

    context "when the r: value is 0" do
      let(:r) { 0 }

      it "must set bit 8 to 1 in the second byte" do
        subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b10000000) >> 7).to eq(1)
      end
    end

    it "must encode the vvvv: value into bits 7, 6, 5, 4 in the second byte as an inverted value" do
      subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

      byte2 = output.string.getbyte(1)

      expect((byte2 & 0b01111000) >> 3).to eq(~vvvv.number & 0b1111)
    end

    context "when the l: value is 1" do
      let(:l) { 1 }

      it "must set bit 2 to 1 in the second byte" do
        subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b000000100) >> 2).to eq(1)
      end
    end

    context "when the l: value is 0" do
      let(:l) { 0 }

      it "must not set bit 2 to 1 in the second byte" do
        subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b000000100) >> 2).to eq(0)
      end
    end

    context "when the pp: value is non-zero" do
      let(:pp) { 0b10 }

      it "must encode the pp value into bits 2 and 1 of the second byte" do
        subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b00000011).to eq(pp)
      end
    end

    context "when the pp: value is zero" do
      let(:pp) { 0 }

      it "must not set bits 2 and 1 of the second byte" do
        subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b00000011).to eq(0)
      end
    end

    it "must return 2" do
      expect(subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)).to eq(2)
    end
  end

  describe "#write_vex_three_byte" do
    let(:type) { :vex }
    let(:w)    { 0 }
    let(:l)    { 0 }
    let(:m_mmmm) { 0b00010 }
    let(:pp)     { 0b00 }
    let(:r)      { 0 }
    let(:x)      { 0 }
    let(:b)      { 0 }
    let(:vvvv)   { Ronin::ASM::X86::Registers::EAX }

    context "when type: is :vex" do
      let(:type) { :vex }

      it "must write the 0b11000100 prefix as the first byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte1 = output.string.getbyte(0)

        expect(byte1).to eq(0b11000100)
      end
    end

    context "when type: is :xop" do
      let(:type) { :xop }

      it "must write the 0b10001111 prefix as the first byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte1 = output.string.getbyte(0)

        expect(byte1).to eq(0b10001111)
      end
    end

    context "when the r: value is 0" do
      let(:r) { 0 }

      it "must set bit 8 to 1 in the second byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b10000000) >> 7).to eq(1)
      end
    end

    context "when the x: value is 0" do
      let(:x) { 0 }

      it "must set bit 7 to 1 in the second byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b01000000) >> 6).to eq(1)
      end
    end

    context "when the b: value is 0" do
      let(:b) { 0 }

      it "must set bit 7 to 1 in the second byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b00100000) >> 5).to eq(1)
      end
    end

    context "when the m_mmmm: value is non-zero" do
      let(:m_mmmm) { 0b01010 }

      it "must encode the m_mmmm value into bits 5 - 1 of the second byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b11111).to eq(m_mmmm)
      end
    end

    context "when the m_mmmm: value is zero" do
      let(:m_mmmm) { 0 }

      it "must not set bits 5 - 1 of the second byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b11111).to eq(0)
      end
    end

    context "when the w: value is 1" do
      let(:w) { 1 }

      it "must set bit 8 to 1 in the third byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b10000000) >> 7).to eq(1)
      end
    end

    context "when the w: value is 0" do
      let(:w) { 0 }

      it "must set bit 8 to 1 in the third byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b10000000) >> 7).to eq(0)
      end
    end

    it "must encode the vvvv: value into bits 7, 6, 5, 4 in the second byte as an inverted value" do
      subject.write_vex_three_byte(
        type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
        vvvv: vvvv
      )

      byte3 = output.string.getbyte(2)

      expect((byte3 & 0b01111000) >> 3).to eq(~vvvv.number & 0b1111)
    end

    context "when the l: value is 1" do
      let(:l) { 1 }

      it "must set bit 3 to 1 of the third byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b100) >> 2).to eq(1)
      end
    end

    context "when the l: value is 0" do
      let(:l) { 0 }

      it "must not set bit 3 of the third byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b100) >> 2).to eq(0)
      end
    end

    context "when the pp: value is non-zero" do
      let(:pp) { 0b10 }

      it "must encode the pp value into bits 2 and 1 of the third byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte3 = output.string.getbyte(2)

        expect(byte3 & 0b11).to eq(pp)
      end
    end

    context "when the pp: value is 0" do
      let(:pp) { 0 }

      it "must not set bits 2 and 1 of the third byte" do
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )

        byte3 = output.string.getbyte(2)

        expect(byte3 & 0b11).to eq(0)
      end
    end

    it "must return 3" do
      expect(
        subject.write_vex_three_byte(
          type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
          vvvv: vvvv
        )
      ).to eq(3)
    end
  end

  describe "#write_evex" do
    let(:mmm)  { 0b001 }
    let(:pp)   { 0b01 }
    let(:w)    { 1 }
    let(:ll)   { 0b00 }
    let(:vvvv) { Ronin::ASM::X86::Registers::XMM0 }
    let(:v)    { 0 }
    let(:rr)   { 0b00 }
    let(:_B)   { 0 }
    let(:x)    { 0 }
    let(:b)    { 0 }
    let(:aaa)  { 0 }
    let(:z)    { 0 }

    it "must write the 0b01100010 (0x62) byte first" do
      subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

      expect(output.string.getbyte(0)).to eq(0b01100010)
    end

    it "must always set bit 3 to 1 in the third byte" do
      subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

      byte3 = output.string.getbyte(2)

      expect((byte3 & 0b00000100) >> 2).to eq(1)
    end

    it "must write four bytes to the output stream" do
      subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

      expect(output.string.size).to eq(4)
    end

    it "must return 4" do
      expect(
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)
      ).to eq(4)
    end

    context "when the rr: value is 0" do
      let(:rr) { 0 }

      it "must set bits 8 and 5 to 1 in the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b10010000).to eq(0b10010000)
      end
    end

    context "when the rr: value is nil" do
      let(:rr) { nil }

      it "must not set bits 8 and 5 to 1 in the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b10010000).to eq(0)
      end
    end

    context "when the x: value is 0" do
      let(:x) { 0 }

      it "must set bit 7 to 1 in the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b01000000) >> 6).to eq(1)
      end
    end

    context "when the x: value is nil" do
      let(:x) { nil }

      it "must not set bit 7 to 1 in the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b01000000) >> 6).to eq(0)
      end
    end

    context "when the _B: value is 0" do
      let(:_B) { 0 }

      it "must set bit 6 to 1 in the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b00100000) >> 5).to eq(1)
      end
    end

    context "when the _B: value is nil" do
      let(:_B) { nil }

      it "must not set bit 6 to 1 in the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect((byte2 & 0b00100000) >> 5).to eq(0)
      end
    end

    context "when the mmm: value is greater than 0" do
      let(:mmm) { 0b110 }

      it "must encode the mmm: value into bits 3, 2, and 1 of the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b111).to eq(mmm)
      end
    end

    context "when the mmm: value is 0" do
      let(:mmm) { 0 }

      it "must not set bits 3, 2, or 1 in the second byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte2 = output.string.getbyte(1)

        expect(byte2 & 0b111).to eq(0)
      end
    end

    context "when the w: value is 1" do
      let(:w) { 1 }

      it "must set bit 8 to 1 in the third byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b10000000) >> 7).to eq(1)
      end
    end

    context "when the w: value is 0" do
      let(:w) { 0 }

      it "must not set bit 8 to 1 in the third byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b10000000) >> 7).to eq(0)
      end
    end

    context "when the w: value is nil" do
      let(:w) { nil }

      it "must not set bit 8 to 1 in the third byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b10000000) >> 7).to eq(0)
      end
    end

    context "when the vvvv: value is a Ronin::ASM::X86::Operand" do
      let(:vvvv) { Ronin::ASM::X86::Registers::XMM15 }

      it "must set bits 7, 6, 5, and 4 to it's inverted value in the third byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b01111000) >> 3).to eq(~vvvv.number & 0b1111)
      end
    end

    context "when the vvvv: value is 0" do
      let(:vvvv) { 0 }

      it "must not set bit 7, 6, 5, or 4 in the third byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b01111000) >> 3).to eq(0)
      end
    end

    context "when the vvvv: value is nil" do
      let(:vvvv) { nil }

      it "must not set bit 7, 6, 5, or 4 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect((byte3 & 0b01111000) >> 3).to eq(0)
      end
    end

    context "when the pp: value is greater than 0" do
      let(:pp) { 0b10 }

      it "must encode the pp: value into bits 2 and 1 of the third byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect(byte3 & 0b00000011).to eq(pp)
      end
    end

    context "when the pp: value is 0" do
      let(:pp) { 0 }

      it "must not set bits 2 and 1 of the third byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte3 = output.string.getbyte(2)

        expect(byte3 & 0b00000011).to eq(0)
      end
    end

    context "when the z: value is a Ronin::ASM::X86::Opmask" do
      let(:xmm) { Ronin::ASM::X86::Registers::XMM0 }
      let(:k)   { Ronin::ASM::X86::Registers::K5 }

      let(:z) { Ronin::ASM::X86::Opmask.new(xmm,k) }

      it "must set bit 8 to 1 of the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b10000000) >> 7).to eq(1)
      end
    end

    context "when the z: value is 0" do
      let(:z) { 0 }

      it "must not set bit 8 to 1 of the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b10000000) >> 7).to eq(0)
      end
    end

    context "when the ll: value is 0b01" do
      let(:ll) { 0b01 }

      it "must encode the ll: value into bits 7 and 6 of the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b01100000) >> 5).to eq(ll)
      end
    end

    context "when the ll: value is 0b10" do
      let(:ll) { 0b10 }

      it "must encode the ll: value into bits 7 and 6 of the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b01100000) >> 5).to eq(ll)
      end
    end

    context "when the ll: value is Ronin::ASM::X86::RN_SAE" do
      let(:ll) { Ronin::ASM::X86::Operands::RN_SAE }

      it "must not set bits 7 and 6 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b01100000) >> 5).to eq(0b00)
      end
    end

    context "when the ll: value is Ronin::ASM::X86::RD_SAE" do
      let(:ll) { Ronin::ASM::X86::Operands::RD_SAE }

      it "must set bit 6 to 1 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b01100000) >> 5).to eq(0b01)
      end
    end

    context "when the ll: value is Ronin::ASM::X86::RU_SAE" do
      let(:ll) { Ronin::ASM::X86::Operands::RU_SAE }

      it "must set bit 7 to 1 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b01100000) >> 5).to eq(0b10)
      end
    end

    context "when the ll: value is Ronin::ASM::X86::RZ_SAE" do
      let(:ll) { Ronin::ASM::X86::Operands::RZ_SAE }

      it "must set bits 7 and 6 to 1 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b01100000) >> 5).to eq(0b11)
      end
    end

    context "when the ll: value is a Ronin::ASM::X86::Operand" do
      context "and it's #size is 32 (256 bits)" do
        let(:ll) { Ronin::ASM::X86::Registers::YMM0 }

        it "must encode 0b01 into bits 6 and 5 of the fourth byte" do
          subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

          byte4 = output.string.getbyte(3)

          expect((byte4 & 0b01100000) >> 5).to eq(0b01)
        end
      end

      context "and it's #size is 64 (512 bits)" do
        let(:ll) { Ronin::ASM::X86::Registers::ZMM0 }

        it "must encode 0b10 into bits 6 and 5 of the fourth byte" do
          subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

          byte4 = output.string.getbyte(3)

          expect((byte4 & 0b01100000) >> 5).to eq(0b10)
        end
      end

      context "and it's #size is less than 32 (256 bits)" do
        let(:ll) { Ronin::ASM::X86::Registers::XMM0 }

        it "must not set bits 6 and 5 in the fourth byte" do
          subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

          byte4 = output.string.getbyte(3)

          expect((byte4 & 0b01100000) >> 5).to eq(0)
        end
      end
    end

    context "when the ll: value is nil" do
      let(:ll) { nil }

      it "must not set bits 6 and 5 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b01100000) >> 5).to eq(0)
      end
    end

    context "when the b: value is a Ronin::ASM::X86::Broadcast" do
      let(:register) { Ronin::ASM::X86::Registers::EAX }
      let(:memory)   { Ronin::ASM::X86::Memory.new(base: register) }

      let(:b) { Ronin::ASM::X86::Broadcast.new(memory, 1=>4) }
      let(:disp8xN) { 32 }

      it "must set bit 5 to 1 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z, disp8xN: disp8xN)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b00010000) >> 4).to eq(1)
      end
    end

    context "when the b: value is 1" do
      let(:b) { 1 }

      it "must set bit 5 to 1 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b00010000) >> 4).to eq(1)
      end
    end

    context "when the b: value is 0" do
      let(:b) { 0 }

      it "must not set bit 5 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b00010000) >> 4).to eq(0)
      end
    end

    context "when the v: value is 0" do
      let(:v) { 0 }

      it "must set bit 4 to 1 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect((byte4 & 0b00001000) >> 3).to eq(1)
      end
    end

    context "when the aaa: value is a Ronin::ASM::X86::Opmask" do
      let(:xmm) { Ronin::ASM::X86::Registers::XMM0 }
      let(:k)   { Ronin::ASM::X86::Registers::K5 }
      let(:aaa) { Ronin::ASM::X86::Opmask.new(xmm,k) }

      it "must encode the K opmask register number into bits 3, 2, and 1 of the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect(byte4 & 0b00000111).to eq(k.number)
      end
    end

    context "when the aaa: value is 0" do
      let(:aaa) { 0 }

      it "must not set bits 3, 2, or 1 in the fourth byte" do
        subject.write_evex(mmm: mmm, pp: pp, w: w, ll: ll, vvvv: vvvv, v: v, rr: rr, _B: _B, x: x, b: b, aaa: aaa, z: z)

        byte4 = output.string.getbyte(3)

        expect(byte4 & 0b00000111).to eq(0)
      end
    end
  end
end
