require 'spec_helper'
require 'ronin/asm/x86/memory_offset'

describe Ronin::ASM::X86::MemoryOffset do
  let(:value) { 0x1000 }

  subject { described_class.new(value) }

  it "must also include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end

  describe "#initialize" do
    it "must set #value" do
      expect(subject.value).to eq(value)
    end

    context "when a width: keyword argument is given" do
      let(:value) { 0xff }
      let(:width) { 4 }

      subject { described_class.new(value, width: width) }

      it "must set #width" do
        expect(subject.width).to eq(width)
      end
    end

    context "when no width: keyword argument is given" do
      context "when the value has a bit length less or equal to 32bits" do
        let(:value) { 0x11223344 }

        it "must set #width to 4" do
          expect(subject.width).to eq(4)
        end

        it "must set #type to :memoffs32" do
          expect(subject.type).to eq(:memoffs32)
        end
      end

      context "when the value has a bit length less or equal to 64bits" do
        let(:value) { 0x1122334455667788 }

        it "must set #width to 8" do
          expect(subject.width).to eq(8)
        end

        it "must set #type to :memoffs64" do
          expect(subject.type).to eq(:memoffs64)
        end
      end
    end
  end

  describe "#to_i" do
    it "must return the #value" do
      expect(subject.to_i).to eq(value)
    end
  end
end
