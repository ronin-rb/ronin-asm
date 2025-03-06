require 'spec_helper'
require 'ronin/asm/x86/syntax/att'

require 'ronin/asm/x86/immediate'
require 'ronin/asm/x86/register'
require 'ronin/asm/x86/memory'

require_relative 'common_examples'

describe Ronin::ASM::X86::Syntax::ATT do
  it "must inherit from Ronin::ASM::Syntax::ATT" do
    expect(described_class).to be < Ronin::ASM::Syntax::ATT
  end

  subject { described_class }

  describe ".format_memory" do
    let(:register) { Ronin::ASM::X86::Register.new(:eax, width: 4) }
    let(:operand)  { Ronin::ASM::X86::Memory.new(base: register) }

    it "must enclose the memory in parenthesis" do
      expect(subject.format_memory(operand)).to eq("(%eax)")
    end

    context "with an displacement" do
      let(:displacement) { 255 }
      let(:operand) do
        Ronin::ASM::X86::Memory.new(base: register, displacement: displacement)
      end

      it "must prepend the displacement as an integer" do
        expect(subject.format_memory(operand)).to eq("0xff(%eax)")
      end

      context "when 0" do
        let(:operand) do
          Ronin::ASM::X86::Memory.new(base: register, displacement: 0)
        end

        it "must omit the displacement" do
          expect(subject.format_memory(operand)).to eq("(%eax)")
        end
      end
    end

    context "with an index" do
      let(:index)   { Ronin::ASM::X86::Register.new(:esi, width: 4) }
      let(:operand) { Ronin::ASM::X86::Memory.new(base: register, index: index) }

      it "must include the index argument" do
        expect(subject.format_memory(operand)).to eq("(%eax,%esi)")
      end

      context "with a scale" do
        let(:scale)   { 4 }
        let(:operand) do
          Ronin::ASM::X86::Memory.new(base: register, index: index, scale: scale)
        end

        it "must prepend the scale argument as a decimal" do
          expect(subject.format_memory(operand)).to eq("(%eax,%esi,#{scale})")
        end
      end
    end
  end

  include_context "Ronin::ASM::X86::Syntax::Common methods"
end
