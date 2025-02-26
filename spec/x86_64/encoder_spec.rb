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
    let(:mandatory) { true }
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

    context "when the mandatory: keyword argument is false" do
      let(:mandatory) { false }
      context "and none of the REX bit flags have been set" do
        it "must not write the REX byte to the output stream" do
          subject.write_rex(mandatory: mandatory, w: 0)

          expect(output.string).to be_empty
        end

        it "must return 0" do
          expect(subject.write_rex(mandatory: mandatory, w: 0)).to eq(0)
        end
      end

      context "but at least one of the REX bit flags has been set" do
        it "must write the REX byte to the output stream" do
          subject.write_rex(mandatory: mandatory, w: 1)

          expect(output.string).to_not be_empty
        end

        it "must return 1" do
          expect(subject.write_rex(mandatory: mandatory, w: 1)).to eq(1)
        end
      end
    end

    it "must return 1" do
      expect(subject.write_rex(mandatory: mandatory, w: 0)).to eq(1)
    end
  end

  describe "#write_vex" do
    context "when type: is :vex, x: is 0, b: is 0, w: is 0, and m_mmmm: is 0b00001" do
      let(:r)    { 0 }
      let(:vvvv) { Ronin::ASM::X86_64::Registers::EAX }
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

    context "otherwise" do
      let(:type) { :vex }
      let(:w)    { 0 }
      let(:l)    { 0 }
      let(:m_mmmm) { 0b00010 }
      let(:pp)     { 0b00 }
      let(:r)      { 0 }
      let(:x)      { 0 }
      let(:b)      { 0 }
      let(:vvvv)   { Ronin::ASM::X86_64::Registers::EAX }

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
    let(:vvvv) { Ronin::ASM::X86_64::Registers::EAX }
    let(:l)    { 0 }
    let(:pp)   { 0b00 }

    it "must write the 0b11000101 prefix as the first byte" do
      subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

      byte1 = output.string.getbyte(0)

      expect(byte1).to eq(0b11000101)
    end

    context "when the r: value is a Register operand" do
      context "and it's register number is less than 8" do
        it "must set bit 8 to 1 in the second byte" do
          subject.write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)

          byte2 = output.string.getbyte(1)

          expect((byte2 & 0b10000000) >> 7).to eq(1)
        end
      end

      context "and it's register number is greater than 7"
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
    let(:vvvv)   { Ronin::ASM::X86_64::Registers::EAX }

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

    context "when the r: value is a Register operand" do
      context "and it's register number is less than 8" do
        let(:r) { Ronin::ASM::X86_64::Registers::EBX }

        it "must set bit 8 to 1 in the second byte" do
          subject.write_vex_three_byte(
            type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
            vvvv: vvvv
          )

          byte2 = output.string.getbyte(1)

          expect((byte2 & 0b10000000) >> 7).to eq(1)
        end
      end

      context "and it's register number is greater than 7"
    end

    context "when the x: value is a Memory operand" do
      context "and it's memory's index register number is less than 8" do
        let(:base)  { Ronin::ASM::X86_64::Registers::EBX }
        let(:index) { Ronin::ASM::X86_64::Registers::ESI }
        let(:mem) do
          Ronin::ASM::X86_64::Memory.new(base: base, index: index)
        end
        let(:x) { mem }

        it "must set bit 7 to 1 in the second byte" do
          subject.write_vex_three_byte(
            type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
            vvvv: vvvv
          )

          byte2 = output.string.getbyte(1)

          expect((byte2 & 0b01000000) >> 6).to eq(1)
        end
      end

      context "and it's register number is greater than 7"
    end

    context "when the b: value is a Register operand" do
      context "and it's number is less than 8" do
        let(:b) { Ronin::ASM::X86_64::Registers::EBX }

        it "must set bit 7 to 1 in the second byte" do
          subject.write_vex_three_byte(
            type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
            vvvv: vvvv
          )

          byte2 = output.string.getbyte(1)

          expect((byte2 & 0b00100000) >> 5).to eq(1)
        end
      end

      context "and it's register number is greater than 7"
    end

    context "when the b: value is a Memory operand" do
      context "and it's base register number is less than 8" do
        let(:base)  { Ronin::ASM::X86_64::Registers::EBX }
        let(:index) { Ronin::ASM::X86_64::Registers::ESI }
        let(:mem) do
          Ronin::ASM::X86_64::Memory.new(base: base, index: index)
        end
        let(:x) { mem }

        it "must set bit 7 to 1 in the second byte" do
          subject.write_vex_three_byte(
            type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b,
            vvvv: vvvv
          )

          byte2 = output.string.getbyte(1)

          expect((byte2 & 0b00100000) >> 5).to eq(1)
        end
      end

      context "and it's base register number is greater than 7"
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
end
