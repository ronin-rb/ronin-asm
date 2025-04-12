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

    context "when a size: keyword argument is given" do
      let(:value) { 0xff }
      let(:size)  { 4 }

      subject { described_class.new(value, size: size) }

      it "must set #size" do
        expect(subject.size).to eq(size)
      end
    end

    context "when no size: keyword argument is given" do
      context "when the value has a bit length less or equal to 32bits" do
        let(:value) { 0x11223344 }

        it "must set #size to 4" do
          expect(subject.size).to eq(4)
        end

        it "must set #type to :moffset32" do
          expect(subject.type).to eq(:moffset32)
        end
      end

      context "when the value has a bit length less or equal to 64bits" do
        let(:value) { 0x1122334455667788 }

        it "must set #size to 8" do
          expect(subject.size).to eq(8)
        end

        it "must set #type to :moffset64" do
          expect(subject.type).to eq(:moffset64)
        end
      end
    end
  end

  describe "#type_of?" do
    context "when the given type equals #type" do
      it "must return true" do
        expect(subject.type_of?(subject.type)).to be(true)
      end
    end

    context "when given :mem" do
      it "must return true" do
        expect(subject.type_of?(:mem)).to be(true)
      end
    end

    context "when given :mem32" do
      context "and #type is :moffset32" do
        subject { described_class.new(value, size: 4) }

        it "must return true" do
          expect(subject.type_of?(:mem32)).to be(true)
        end
      end

      context "and #type is :moffset64" do
        subject { described_class.new(value, size: 8) }

        it "must return false" do
          expect(subject.type_of?(:mem32)).to be(false)
        end
      end
    end

    context "when given :mem64" do
      context "and #type is :moffset32" do
        subject { described_class.new(value, size: 4) }

        it "must return false" do
          expect(subject.type_of?(:mem64)).to be(false)
        end
      end

      context "and #type is :moffset64" do
        subject { described_class.new(value, size: 8) }

        it "must return true" do
          expect(subject.type_of?(:mem64)).to be(true)
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
