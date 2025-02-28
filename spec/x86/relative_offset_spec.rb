require 'spec_helper'
require 'ronin/asm/x86/relative_offset'

describe Ronin::ASM::X86::RelativeOffset do
  let(:value) { 0x1000 }

  subject { described_class.new(value) }

  describe "#initialize" do
    it "must set #value" do
      expect(subject.value).to eq(value)
    end

    context "when the value has a bit length less or equal to 8 bits" do
      let(:value) { 0x10 }

      it "must set #width to 1" do
        expect(subject.width).to eq(1)
      end

      it "must set #type to :rel8" do
        expect(subject.type).to eq(:rel8)
      end
    end

    context "when the value has a bit length less or equal to 32bits" do
      let(:value) { 0x11223344 }

      it "must set #width to 4" do
        expect(subject.width).to eq(4)
      end

      it "must set #type to :rel32" do
        expect(subject.type).to eq(:rel32)
      end
    end
  end

  describe "#to_i" do
    it "must return the #value" do
      expect(subject.to_i).to eq(value)
    end
  end
end
