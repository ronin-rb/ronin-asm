require 'spec_helper'
require 'ronin/asm/x86/syntaxes/ruby'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/memory'
require 'ronin/asm/x86/instruction'
require 'ronin/asm/program'

describe Ronin::ASM::X86::Syntaxes::Ruby do
  subject { described_class }

  describe ".format_memory" do
    let(:register) { Ronin::ASM::X86::Registers::EAX }
    let(:operand)  { Ronin::ASM::X86::Memory.new(base: register) }

    it "must enclose the memory operand's base register in brackets" do
      expect(subject.format_memory(operand)).to eq("[eax]")
    end

    context "when operand size does not match the base size" do
      let(:size) { 2 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, size: size)
      end

      it "must add a size specifier keyword" do
        expect(subject.format_memory(operand)).to eq("word( [eax] )")
      end
    end

    context "when the Ronin::ASM::X86::Memory object has a displacement" do
      let(:displacement) { 255 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, displacement: displacement)
      end

      it "must add the displacement to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+#{displacement}]")
      end

      context "but it's 0" do
        let(:displacement) { 0 }

        it "must omit the displacement" do
          expect(subject.format_memory(operand)).to eq("[eax]")
        end
      end

      context "but it's negative" do
        let(:displacement) { -4 }

        it "must subtract the diplacement from the base" do
          expect(subject.format_memory(operand)).to eq("[eax-#{displacement.abs}]")
        end
      end
    end

    context "when the Ronin::ASM::X86::Memory object has an index" do
      let(:index)   { Ronin::ASM::X86::Registers::ESI }
      let(:operand) { Ronin::ASM::X86::Memory.new(base: register, index: index) }

      it "must add the index to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+esi]")
      end

      context "and a scale" do
        let(:scale)   { 4 }
        let(:operand) do
          Ronin::ASM::X86::Memory.new(base: register, index: index, scale: scale)
        end

        it "must multiple the index by the scale" do
          expect(subject.format_memory(operand)).to eq("[eax+esi*4]")
        end
      end
    end
  end

  describe ".format_broadcast" do
    subject { described_class }

    let(:base)   { Ronin::ASM::X86::Registers::EAX }
    let(:index)  { Ronin::ASM::X86::Registers::ESI }
    let(:scale)  { 4 }
    let(:displacement) { 10 }
    let(:memory) do
      Ronin::ASM::X86::Memory.new(
        base:  base,
        index: index,
        scale: scale,
        displacement: displacement
      )
    end

    let(:ratio) { {1=>8} }
    let(:bcst)  { Ronin::ASM::X86::Broadcast.new(memory,ratio) }

    it "must convert the the Broadcast into a `bcst` method call with the Broadcast#memory and the Broadcast#ratio attributes as arguments" do
      expect(subject.format_broadcast(bcst)).to eq(
        "bcst(#{subject.format_memory(bcst.memory)}, #{bcst.ratio.inspect})"
      )
    end
  end

  describe ".format_opmask" do
    subject { described_class }

    let(:operand) { Ronin::ASM::X86::Registers::XMM0 }
    let(:k)       { Ronin::ASM::X86::Registers::K1 }
    let(:opmask)  { Ronin::ASM::X86::Opmask.new(operand,k) }

    it "must convert the opmask into a `opmask()` method call with Opmask#operand and Opmask#k attributes as arguments" do
      expect(subject.format_opmask(opmask)).to eq(
        "opmask(#{subject.format_operand(opmask.operand)}, #{subject.format_register(opmask.k)})"
      )
    end

    context "when the opmask has zero masking enabled" do
      let(:opmask) { Ronin::ASM::X86::Opmask.new(operand,k, zero: true) }

      it "must add the `zero: true` keyword argument to the `opmask()` method call" do
        expect(subject.format_opmask(opmask)).to eq(
          "opmask(#{subject.format_operand(opmask.operand)}, #{subject.format_register(opmask.k)}, zero: true)"
        )
      end
    end
  end

  describe ".format_decorator" do
    subject { described_class }

    context "when given Ronin::ASM::X86::Operands::RN_SAE" do
      let(:operand) { Ronin::ASM::X86::Operands::RN_SAE }

      it "must return 'rn_sae'" do
        expect(subject.format_decorator(operand)).to eq('rn_sae')
      end
    end

    context "when given Ronin::ASM::X86::Operands::RD_SAE" do
      let(:operand) { Ronin::ASM::X86::Operands::RD_SAE }

      it "must return 'rd_sae'" do
        expect(subject.format_decorator(operand)).to eq('rd_sae')
      end
    end

    context "when given Ronin::ASM::X86::Operands::RU_SAE" do
      let(:operand) { Ronin::ASM::X86::Operands::RU_SAE }

      it "must return 'ru_sae'" do
        expect(subject.format_decorator(operand)).to eq('ru_sae')
      end
    end

    context "when given Ronin::ASM::X86::Operands::RZ_SAE" do
      let(:operand) { Ronin::ASM::X86::Operands::RZ_SAE }

      it "must return 'rz_sae'" do
        expect(subject.format_decorator(operand)).to eq('rz_sae')
      end
    end

    context "when given Ronin::ASM::X86::Operands::SAE" do
      let(:operand) { Ronin::ASM::X86::Operands::SAE }

      it "must return 'sae'" do
        expect(subject.format_decorator(operand)).to eq('sae')
      end
    end
  end

  describe ".format_operand" do
    subject { described_class }

    context "when the operand is a Ronin::ASM::X86::Broadcast object" do
      let(:base)   { Ronin::ASM::X86::Registers::EAX }
      let(:index)  { Ronin::ASM::X86::Registers::ESI }
      let(:scale)  { 4 }
      let(:displacement) { 10 }
      let(:memory) do
        Ronin::ASM::X86::Memory.new(
          base:  base,
          index: index,
          scale: scale,
          displacement: displacement
        )
      end

      let(:ratio)   { {1=>4} }
      let(:operand) { Ronin::ASM::X86::Broadcast.new(memory,ratio) }

      it "must call .format_broadcast with the operand" do
        expect(subject.format_operand(operand)).to eq(
          subject.format_broadcast(operand)
        )
      end
    end

    context "when given a Ronin::ASM::X86::Opmask object" do
      let(:operand) { Ronin::ASM::X86::Registers::XMM0 }
      let(:k)       { Ronin::ASM::X86::Registers::K1 }
      let(:opmask)  { Ronin::ASM::X86::Opmask.new(operand,k) }

      it "must call .format_opmask with the operand" do
        expect(subject.format_operand(opmask)).to eq(
          subject.format_opmask(opmask)
        )
      end
    end

    context "when given a Ronin::ASM::X86::ER object" do
      let(:operand) { Ronin::ASM::X86::Operands::RD_SAE }

      it "must call .format_decorator with the ER decorator operand" do
        expect(subject.format_operand(operand)).to eq(
          subject.format_decorator(operand)
        )
      end
    end

    context "when given a Ronin::ASM::X86::SAE object" do
      let(:operand) { Ronin::ASM::X86::Operands::SAE }

      it "must call .format_decorator with the SAE decorator operand" do
        expect(subject.format_operand(operand)).to eq(
          subject.format_decorator(operand)
        )
      end
    end
  end
end
