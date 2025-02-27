require 'spec_helper'
require 'ronin/asm/x86/memory_offset'

describe Ronin::ASM::X86::MemoryOffset do
  let(:value) { 0x1000 }

  subject { described_class.new(value) }

  describe "#initialize" do
    it "must set #value" do
      expect(subject.value).to eq(value)
    end

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

  describe "#to_i" do
    it "must return the #value" do
      expect(subject.to_i).to eq(value)
    end
  end
end
