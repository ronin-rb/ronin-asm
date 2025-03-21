require 'spec_helper'
require 'ronin/asm/x86/broadcast'

require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/memory'

describe Ronin::ASM::X86::Broadcast do
  it "must include Ronin::ASM::X86::Decorator" do
    expect(described_class).to include(Ronin::ASM::X86::Decorator)
  end

  let(:base)   { Ronin::ASM::X86::Registers::EAX }
  let(:index)  { Ronin::ASM::X86::Registers::ESI }
  let(:scale)  { 4 }
  let(:displacement) { 10 }
  let(:size)   { 4 }
  let(:memory) do
    Ronin::ASM::X86::Memory.new(
      base:  base,
      index: index,
      scale: scale,
      displacement: displacement,
      size:  size
    )
  end

  let(:ratio) { {1=>4} }

  subject { described_class.new(memory,ratio) }

  describe "#initialize" do
    it "must set #operand" do
      expect(subject.operand).to be(memory)
    end

    it "must set #ratio" do
      expect(subject.ratio).to eq(ratio)
    end

    context "when given a Memory operand" do
      context "and the memory operand has a defined #size and #type" do
        it "must set #type using the Memory's #type and the #ratio" do
          expect(subject.type).to eq(:"mem128/mem32bcst")
        end
      end

      context "but the memory operand does not have a #size or #type" do
        let(:memory) do
          Ronin::ASM::X86::Memory.new(
            base:  base,
            index: index,
            scale: scale,
            displacement: displacement
          )
        end

        it "must set #type to :bcst" do
          expect(subject.type).to eq(:bcst)
        end
      end
    end

    context "when given a non-Memory operand" do
      let(:operand) { Object.new }

      it do
        expect {
          described_class.new(operand,ratio)
        }.to raise_error(ArgumentError,"broadcast operand must be a memory operand: #{operand.inspect}")
      end
    end

    context "when given an unknown ratio value" do
      let(:ratio) { {1=>3} }

      it do
        expect {
          described_class.new(memory,ratio)
        }.to raise_error(ArgumentError,"invalid broadcast ratio: #{ratio.inspect}")
      end
    end
  end

  describe "#memory" do
    it "must return the Memory operand" do
      expect(subject.memory).to be(memory)
    end
  end

  describe "#base" do
    it "must return the Memory's #base" do
      expect(subject.base).to be(memory.base)
    end
  end

  describe "#index" do
    it "must return the Memory's #index" do
      expect(subject.index).to be(memory.index)
    end
  end

  describe "#scale" do
    it "must return the Memory's #scale" do
      expect(subject.scale).to be(memory.scale)
    end
  end

  describe "#displacement" do
    it "must return the Memory's #displacement" do
      expect(subject.displacement).to be(memory.displacement)
    end
  end

  describe "#size" do
    it "must return the Memory's #size" do
      expect(subject.size).to eq(memory.size)
    end
  end

  describe "#to_i" do
    it "must return the Memory's #to_i" do
      expect(subject.to_i).to eq(memory.to_i)
    end
  end

  describe "#to_s" do
    it "must return formatted memory operand and broadcast decorator" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86::Syntax::Intel.format_broadcast(subject)
      )
    end
  end
end
