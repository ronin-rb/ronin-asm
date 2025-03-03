require 'spec_helper'
require 'ronin/asm/x86/syntax/intel'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/register'
require 'ronin/asm/x86/memory'

require_relative 'common_examples'

describe Ronin::ASM::X86::Syntax::Intel do
  it "must inherit from Ronin::ASM::Syntax::Intel" do
    expect(described_class).to be < Ronin::ASM::Syntax::Intel
  end

  subject { described_class }

  describe ".format_memory" do
    let(:register) { Ronin::ASM::X86::Register.new(:eax, size: 4) }
    let(:operand)  { Ronin::ASM::X86::Memory.new(base: register) }

    it "must enclose the memory in brackets" do
      expect(subject.format_memory(operand)).to eq("[eax]")
    end

    context "when operand size does not match the base size" do
      let(:size) { 2 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, size: size)
      end

      it "must specify the size" do
        expect(subject.format_memory(operand)).to eq("WORD [eax]")
      end
    end

    context "with an displacement" do
      let(:displacement) { 255 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, displacement: displacement)
      end

      it "must add the displacement to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+0xff]")
      end

      context "when 0" do
        let(:operand) { Ronin::ASM::X86::Memory.new(base: register, displacement: 0) }

        it "must omit the displacement" do
          expect(subject.format_memory(operand)).to eq("[eax]")
        end
      end
    end

    context "with an index" do
      let(:index)   { Ronin::ASM::X86::Register.new(:esi, size: 4) }
      let(:operand) { Ronin::ASM::X86::Memory.new(base: register, index: index) }

      it "must add the index to the base" do
        expect(subject.format_memory(operand)).to eq("[eax+esi]")
      end

      context "with a scale" do
        let(:scale)   { 4 }
        let(:operand) do
          Ronin::ASM::X86::Memory.new(base: register, index: index, scale: scale)
        end

        it "must multiple the index by the scale" do
          expect(subject.format_memory(operand)).to eq("[eax+esi*0x4]")
        end
      end
    end
  end

  include_context "Ronin::ASM::X86::Syntax::Common methods"
end
