require 'spec_helper'
require 'ronin/asm/x86_64/encoder'

require 'ronin/asm/x86_64/memory'
require 'ronin/asm/x86_64/registers'

describe Ronin::ASM::X86_64::Encoder do
  let(:output) { StringIO.new(encoding: Encoding::ASCII_8BIT) }

  subject { described_class.new(output) }

  describe "#write_modrm_mem" do
    let(:base) { Ronin::ASM::X86_64::Registers::EBX }
    let(:mem)  { Ronin::ASM::X86_64::Memory.new(base: base) }
    let(:reg)  { Ronin::ASM::X86_64::Registers::ECX }
    let(:rm)   { mem }

    context "when the Memory operand has a displacement" do
      let(:base) { Ronin::ASM::X86_64::Registers::EBX }
      let(:mem) do
        Ronin::ASM::X86_64::Memory.new(base: base, displacement: displacement)
      end

      context "and the displacement fits in one byte" do
        let(:displacement) { 10 }
        let(:base)  { Ronin::ASM::X86_64::Registers::EBX }

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
      let(:base)  { Ronin::ASM::X86_64::Registers::EBX }
      let(:index) { Ronin::ASM::X86_64::Registers::ESI }
      let(:scale) { 4 }
      let(:mem) do
        Ronin::ASM::X86_64::Memory.new(
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
            Ronin::ASM::X86_64::Memory.new(
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
            Ronin::ASM::X86_64::Memory.new(
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
      let(:base) { Ronin::ASM::X86_64::Registers::ESP }
      let(:mem)  { Ronin::ASM::X86_64::Memory.new(base: base) }

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
          Ronin::ASM::X86_64::Memory.new(base: base, displacement: displacement)
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

    context "when the base of the Memory operand is the 64bit stack pointer register (RSP)" do
      let(:base) { Ronin::ASM::X86_64::Registers::RSP }
      let(:mem)  { Ronin::ASM::X86_64::Memory.new(base: base) }

      it "must encode a SIB byte with the scale field set to 1, and index/base fields set to 4 (the first four bits of the RSP register's number)" do
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
          Ronin::ASM::X86_64::Memory.new(base: base, displacement: displacement)
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

          it "must encode a SIB byte with the scale field set to 1, and index/base fields set to 4 (the first four bits of the RSP register's number)" do
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
      let(:base) { Ronin::ASM::X86_64::Registers::EBP }
      let(:mem)  { Ronin::ASM::X86_64::Memory.new(base: base) }

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
          Ronin::ASM::X86_64::Memory.new(base: base, displacement: displacement)
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

    context "when the base of the Memory operand is the 64bit stack base pointer register (RBP)" do
      let(:base) { Ronin::ASM::X86_64::Registers::RBP }
      let(:mem)  { Ronin::ASM::X86_64::Memory.new(base: base) }

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
          Ronin::ASM::X86_64::Memory.new(base: base, displacement: displacement)
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

  describe "#write_rex" do
    let(:mandatory) { false }
    let(:w) { 0 }
    let(:r) { nil }
    let(:x) { nil }
    let(:b) { nil }

    it "must write a byte with the 0b0100 prefix" do
      subject.write_rex(mandatory: mandatory, w: w)

      rex = output.string.getbyte(0)

      expect((rex & 0b1111_0000) >> 4).to eq(0b0100)
    end

    context "when given the keyword argument `w: 1`" do
      it "must set bit 4 to 1" do
        subject.write_rex(mandatory: mandatory, w: 1)

        rex = output.string.getbyte(0)

        expect((rex & 0b1000) >> 3).to eq(1)
      end
    end

    context "when the r: keyword argument is a Register operand" do
      context "and the Register's number is greater or equal to 8" do
        let(:r) { Ronin::ASM::X86_64::Registers::R8 }

        it "must set bit 3 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, r: r)

          rex = output.string.getbyte(0)

          expect((rex & 0b100) >> 2).to eq(1)
        end
      end

      context "and the Register's number has a bit length is less than 8" do
        let(:r) { Ronin::ASM::X86_64::Registers::RSI }

        it "must not set bit 3 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, r: r)

          rex = output.string.getbyte(0)

          expect((rex & 0b100) >> 2).to eq(0)
        end
      end
    end

    context "when the x: keyword argument is a Register operand" do
      context "and the Register's number is greater or equal to 8" do
        let(:x) { Ronin::ASM::X86_64::Registers::R8 }

        it "must set bit 2 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, x: x)

          rex = output.string.getbyte(0)

          expect((rex & 0b10) >> 1).to eq(1)
        end
      end

      context "and the Register's number has a bit length is less than 8" do
        let(:x) { Ronin::ASM::X86_64::Registers::RSI }

        it "must not set bit 2 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, x: x)

          rex = output.string.getbyte(0)

          expect((rex & 0b10) >> 1).to eq(0)
        end
      end
    end

    context "when the x: keyword argument is a Memory operand" do
      let(:base) { Ronin::ASM::X86_64::Registers::RAX }
      let(:mem)  { Ronin::ASM::X86_64::Memory.new(base: base, index: index) }
      let(:x)    { mem }

      context "and the Memory's index register number is greater or equal to 8" do
        let(:index) { Ronin::ASM::X86_64::Registers::R8 }

        it "must set bit 2 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, x: x)

          rex = output.string.getbyte(0)

          expect((rex & 0b10) >> 1).to eq(1)
        end
      end

      context "and the Memory's index register number has a bit length is less than 8" do
        let(:index) { Ronin::ASM::X86_64::Registers::RSI }

        it "must not set bit 2 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, x: x)

          rex = output.string.getbyte(0)

          expect((rex & 0b10) >> 1).to eq(0)
        end
      end

      context "but the Memory operand does not have an index" do
        let(:mem) { Ronin::ASM::X86_64::Memory.new(base: base) }

        it "must not set bit 2 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, x: x)

          rex = output.string.getbyte(0)

          expect((rex & 0b10) >> 1).to eq(0)
        end
      end
    end

    context "when the b: keyword argument is a Register operand" do
      context "and the Register's number is greater or equal to 8" do
        let(:b) { Ronin::ASM::X86_64::Registers::R8 }

        it "must set bit 1 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, b: b)

          rex = output.string.getbyte(0)

          expect(rex & 0b1).to eq(1)
        end
      end

      context "and the Register's number has a bit length is less than 8" do
        let(:x) { Ronin::ASM::X86_64::Registers::RSI }

        it "must not set bit 1 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, b: b)

          rex = output.string.getbyte(0)

          expect(rex & 0b1).to eq(0)
        end
      end
    end

    context "when the b: keyword argument is a Memory operand" do
      let(:mem)  { Ronin::ASM::X86_64::Memory.new(base: base) }
      let(:b)    { mem }

      context "and the Memory's base register number is greater or equal to 8" do
        let(:base) { Ronin::ASM::X86_64::Registers::R8 }

        it "must set bit 1 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, b: b)

          rex = output.string.getbyte(0)

          expect(rex & 0b1).to eq(1)
        end
      end

      context "and the Memory's base register number has a bit length is less than 8" do
        let(:base) { Ronin::ASM::X86_64::Registers::RAX }

        it "must not set bit 1 to 1" do
          subject.write_rex(mandatory: mandatory, w: w, b: b)

          rex = output.string.getbyte(0)

          expect(rex & 0b1).to eq(0)
        end
      end
    end

    it "must return 1" do
      expect(subject.write_rex(mandatory: mandatory, w: 0)).to eq(1)
    end
  end
end
