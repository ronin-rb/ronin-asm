require 'spec_helper'
require 'ronin/asm/x86/relative_offset'

describe Ronin::ASM::X86::RelativeOffset do
  let(:value) { 0x1000 }

  subject { described_class.new(value) }

  it "must also include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end

  describe "#initialize" do
    it "must set #value" do
      expect(subject.value).to eq(value)
    end

    context "when a size: keyword argument is given" do
      let(:value) { 0xff }
      let(:size)  { 4 }

      subject { described_class.new(value, size: size) }

      it "must set #size" do
        expect(subject.size).to eq(size)
      end
    end

    context "when no size: keyword argument is given" do
      context "and when the value has a bit length less than 7 bits" do
        let(:value) { 0x01 }

        it "must set #size to 1" do
          expect(subject.size).to eq(1)
        end

        it "must set #type to :rel8" do
          expect(subject.type).to eq(:rel8)
        end
      end

      context "and when the value has a bit length is equal to 7 bits" do
        let(:value) { 0x7f }

        it "must set #size to 1" do
          expect(subject.size).to eq(1)
        end

        it "must set #type to :rel8" do
          expect(subject.type).to eq(:rel8)
        end
      end

      context "and when the value has a bit length is equal to 8 bits" do
        let(:value) { 0xff }

        it "must set #size to 4" do
          expect(subject.size).to eq(4)
        end

        it "must set #type to :rel32" do
          expect(subject.type).to eq(:rel32)
        end
      end

      context "and when the value has a bit length is greater than 8 bits" do
        let(:value) { 0x11223344 }

        it "must set #size to 4" do
          expect(subject.size).to eq(4)
        end

        it "must set #type to :rel32" do
          expect(subject.type).to eq(:rel32)
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
