require 'spec_helper'
require 'ronin/asm/x86_64/immediate'

describe Ronin::ASM::X86_64::Immediate do
  it "must inherit from Ronin::ASM::X86::Immediate" do
    expect(described_class).to be < Ronin::ASM::X86::Immediate
  end

  it "must also include Ronin::ASM::X86_64::Operand" do
    expect(described_class).to include(Ronin::ASM::X86_64::Operand)
  end

  let(:value) { 0xff }

  subject { described_class.new(value) }

  describe "#initialize" do
    it "must set #value" do
      expect(subject.value).to eq(value)
    end

    context "when given nil as the value" do
      let(:value) { nil }

      it "must set #value to 0" do
        expect(subject.value).to eq(0)
      end
    end

    context "when the size: keyword argument is not given" do
      it "must default #size to nil" do
        expect(subject.size).to be(nil)
      end
    end

    context "when the size: keyword argument is given" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must set #size" do
        expect(subject.size).to eq(size)
      end
    end

    context "when a value that exceeds 64bits is given" do
      let(:value) { 1 << 64 }

      it do
        expect {
          described_class.new(value)
        }.to raise_error(ArgumentError,"x86-64 does not support immediate values greater than 64bits: #{value.inspect}")
      end
    end
  end

  describe "#infer_size" do
    context "when the immediate's value fits within 8 bits" do
      let(:value) { 0xff }

      it "must return 1" do
        expect(subject.infer_size).to be(1)
      end
    end

    context "when the immediate's value fits within 16 bits" do
      let(:value) { 0xffff }

      it "must return 2" do
        expect(subject.infer_size).to be(2)
      end
    end

    context "when the immediate's value fits within 32 bits" do
      let(:value) { 0xffffffff }

      it "must return 4" do
        expect(subject.infer_size).to be(4)
      end
    end

    context "when the immediate's value fits within 64 bits" do
      let(:value) { 0xffffffffffffffff }

      it "must return 8" do
        expect(subject.infer_size).to be(8)
      end
    end
  end

  describe "#imm64?" do
    context "when the #size is 8" do
      let(:size) { 8 }

      subject { described_class.new(value, size: size) }

      it "must return true" do
        expect(subject.imm64?).to be(true)
      end
    end

    context "when the #type is not 8" do
      let(:size) { 1 }

      subject { described_class.new(value, size: size) }

      it "must return false" do
        expect(subject.imm64?).to be(false)
      end
    end
  end

  describe "#type_of?" do
    context "when given :imm" do
      it "must return true" do
        expect(subject.type_of?(:imm)).to be(true)
      end
    end

    context "when the #type is :imm" do
      subject { described_class.new(value) }

      context "and when given :imm8" do
        context "and the value's bit length is less or equal to 8 bits" do
          let(:value) { 0xff }

          it "must return true" do
            expect(subject.type_of?(:imm8)).to be(true)
          end
        end

        context "but the value's bit length exceeds 8 bits" do
          let(:value) { 0x100 }

          it "must return false" do
            expect(subject.type_of?(:imm8)).to be(false)
          end
        end
      end

      context "and when given :imm16" do
        context "and the value's bit length is less or equal to 16 bits" do
          let(:value) { 0xffff }

          it "must return true" do
            expect(subject.type_of?(:imm16)).to be(true)
          end
        end

        context "but the value's bit length exceeds 16 bits" do
          let(:value) { 0x10000 }

          it "must return false" do
            expect(subject.type_of?(:imm16)).to be(false)
          end
        end
      end

      context "and when given :imm32" do
        context "and the value's bit length is less or equal to 32 bits" do
          let(:value) { 0xffffffff }

          it "must return true" do
            expect(subject.type_of?(:imm32)).to be(true)
          end
        end

        context "but the value's bit length exceeds 32 bits" do
          let(:value) { 0x100000000 }

          it "must return false" do
            expect(subject.type_of?(:imm32)).to be(false)
          end
        end
      end

      context "and when given :imm64" do
        context "and the value's bit length is less or equal to 64 bits" do
          let(:value) { 0xffffffffffffffff }

          it "must return true" do
            expect(subject.type_of?(:imm64)).to be(true)
          end
        end
      end
    end

    context "when the given type equals #type" do
      it "must return true" do
        expect(subject.type_of?(subject.type)).to be(true)
      end
    end

    context "when the given type does not equal #type" do
      it "must return false" do
        expect(subject.type_of?(:foo)).to be(false)
      end
    end
  end

  describe "#to_s" do
    it "must call Ronin::ASM::X86_64::Syntaxes::Intel.format_immediate" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86_64::Syntaxes::Intel.format_immediate(subject)
      )
    end
  end
end
