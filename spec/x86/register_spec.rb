require 'spec_helper'
require 'ronin/asm/x86/register'

describe Ronin::ASM::X86::Register do
  let(:name)     { :eax }
  let(:number)   { 0 }
  let(:size)     { 4 }
  let(:type)     { :reg32 }
  let(:register) do
    described_class.new(name, number: number, size: size, type: type)
  end

  subject { register }

  it "must inherit from Ronin::ASM::Register" do
    expect(described_class).to be < Ronin::ASM::Register
  end

  it "must also include Ronin::ASM::X86::Operand" do
    expect(described_class).to include(Ronin::ASM::X86::Operand)
  end

  describe "#initialize" do
    context "when the type: keyword argument is not given" do
      context "and when #size is 1" do
        let(:size) { 1 }

        subject { described_class.new(:eax, size: size) }

        it "must return :reg8" do
          expect(subject.type).to eq(:reg8)
        end
      end

      context "and when #size is 2" do
        let(:size) { 2 }

        subject { described_class.new(:eax, size: size) }

        it "must return :reg16" do
          expect(subject.type).to eq(:reg16)
        end
      end

      context "and when #size is 4" do
        let(:size) { 4 }

        subject { described_class.new(:eax, size: size) }

        it "must return :reg32" do
          expect(subject.type).to eq(:reg32)
        end
      end

      context "and when #size is 8" do
        let(:size) { 8 }

        subject { described_class.new(:eax, size: size) }

        it "must return :reg64" do
          expect(subject.type).to eq(:reg64)
        end
      end
    end

    context "when the type: keyword argument is given" do
      let(:type) { :xmm }

      subject do
        described_class.new(:xmm0, number: 0, size: 16, type: type)
      end

      it "must override the default `:reg` type" do
        expect(subject.type).to eq(type)
      end
    end
  end

  describe "#stack_pointer?" do
    context "when initialized with `stack_pointer: true`" do
      subject { described_class.new(:esp, size: 4, stack_pointer: true) }

      it "must return true" do
        expect(subject.stack_pointer?).to be(true)
      end
    end

    context "when not initialized with `stack_pointer: true`" do
      subject { described_class.new(:eax, size: 4) }

      it "must return false" do
        expect(subject.stack_pointer?).to be(false)
      end
    end
  end

  describe "#base_pointer?" do
    context "when initialized with `base_pointer: true`" do
      subject { described_class.new(:ebp, size: 4, base_pointer: true) }

      it "must return true" do
        expect(subject.base_pointer?).to be(true)
      end
    end

    context "when not initialized with `base_pointer: true`" do
      subject { described_class.new(:eax, size: 4) }

      it "must return false" do
        expect(subject.base_pointer?).to be(false)
      end
    end
  end

  describe "#k?" do
    context "when initialized with `type: :k`" do
      subject { described_class.new(:k0, size: 8, type: :k) }

      it "must return true" do
        expect(subject.k?).to be(true)
      end
    end

    context "when not initialized with `type: :k`" do
      subject { described_class.new(:eax, size: 4) }

      it "must return false" do
        expect(subject.k?).to be(false)
      end
    end
  end

  describe "#mm?" do
    context "when initialized with `type: :mm`" do
      subject { described_class.new(:mm0, size: 8, type: :mm) }

      it "must return true" do
        expect(subject.mm?).to be(true)
      end
    end

    context "when not initialized with `type: :mm`" do
      subject { described_class.new(:eax, size: 4) }

      it "must return false" do
        expect(subject.mm?).to be(false)
      end
    end
  end

  describe "#xmm?" do
    context "when initialized with `type: :xmm`" do
      subject { described_class.new(:xmm0, size: 16, type: :xmm) }

      it "must return true" do
        expect(subject.xmm?).to be(true)
      end
    end

    context "when not initialized with `type: :xmm`" do
      subject { described_class.new(:eax, size: 4) }

      it "must return false" do
        expect(subject.xmm?).to be(false)
      end
    end
  end

  describe "#ymm?" do
    context "when initialized with `type: :ymm`" do
      subject { described_class.new(:ymm0, size: 32, type: :ymm) }

      it "must return true" do
        expect(subject.ymm?).to be(true)
      end
    end

    context "when not initialized with `type: :ymm`" do
      subject { described_class.new(:eax, size: 4) }

      it "must return false" do
        expect(subject.ymm?).to be(false)
      end
    end
  end

  describe "#zmm?" do
    context "when initialized with `type: :zmm`" do
      subject { described_class.new(:zmm0, size: 64, type: :zmm) }

      it "must return true" do
        expect(subject.zmm?).to be(true)
      end
    end

    context "when not initialized with `type: :zmm`" do
      subject { described_class.new(:eax, size: 4) }

      it "must return false" do
        expect(subject.zmm?).to be(false)
      end
    end
  end

  describe "#+" do
    context "when given an Ronin::ASM::X86::Memory" do
      let(:operand) do
        Ronin::ASM::X86::Memory.new(displacement: 10, index: register, scale: 2)
      end

      subject { register + operand }

      it { expect(subject).to be_kind_of(Ronin::ASM::X86::Memory) }

      it "must set the base" do
        expect(subject.base).to eq(register)
      end

      it "must preserve the displacement, index and scale" do
        expect(subject.displacement).to eq(operand.displacement)
        expect(subject.index).to        eq(operand.index)
        expect(subject.scale).to        eq(operand.scale)
      end
    end

    context "when given a Register" do
      subject { register + register }

      it { expect(subject).to be_kind_of(Ronin::ASM::X86::Memory) }

      it "must set the base" do
        expect(subject.base).to eq(register)
      end

      it { expect(subject.displacement).to eq(0) }

      it "must set the index" do
        expect(subject.index).to eq(register)
      end
    end

    context "when given an Integer" do
      let(:displacement) { 10 }

      subject { register + displacement }

      it { expect(subject).to be_kind_of(Ronin::ASM::X86::Memory) }

      it "must set the base" do
        expect(subject.base).to eq(register)
      end

      it "must set the displacement" do
        expect(subject.displacement).to eq(displacement)
      end
    end

    context "otherwise" do
      it "must raise a TypeError" do
        expect {
          register + Object.new
        }.to raise_error(TypeError)
      end
    end
  end

  describe "#-" do
    let(:displacement) { 10 }

    subject { register - displacement }

    it { expect(subject).to be_kind_of(Ronin::ASM::X86::Memory) }

    it "must set the base" do
      expect(subject.base).to eq(register)
    end

    it "must set a negative displacement" do
      expect(subject.displacement).to eq(-displacement)
    end
  end

  describe "#*" do
    let(:scale) { 2 }

    subject { register * scale }

    it { expect(subject).to be_kind_of(Ronin::ASM::X86::Memory) }

    it { expect(subject.base).to be_nil }
    it { expect(subject.displacement).to eq(0) }

    it "must set the index" do
      expect(subject.index).to eq(register)
    end

    it "must set the scale" do
      expect(subject.scale).to eq(scale)
    end
  end
end
