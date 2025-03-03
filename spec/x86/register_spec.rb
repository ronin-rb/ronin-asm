require 'spec_helper'
require 'ronin/asm/x86/register'

describe Ronin::ASM::X86::Register do
  let(:name)     { :eax }
  let(:number)   { 0 }
  let(:width)    { 4 }
  let(:type)     { :reg32 }
  let(:register) do
    described_class.new(name, number: number, width: width, type: type)
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
      context "and when #width is 1" do
        let(:width) { 1 }

        subject { described_class.new(:eax, width: width) }

        it "must return :reg8" do
          expect(subject.type).to eq(:reg8)
        end
      end

      context "and when #width is 2" do
        let(:width) { 2 }

        subject { described_class.new(:eax, width: width) }

        it "must return :reg16" do
          expect(subject.type).to eq(:reg16)
        end
      end

      context "and when #width is 4" do
        let(:width) { 4 }

        subject { described_class.new(:eax, width: width) }

        it "must return :reg32" do
          expect(subject.type).to eq(:reg32)
        end
      end

      context "and when #width is 8" do
        let(:width) { 8 }

        subject { described_class.new(:eax, width: width) }

        it "must return :reg64" do
          expect(subject.type).to eq(:reg64)
        end
      end
    end

    context "when the type: keyword argument is given" do
      let(:type) { :xmm }

      subject do
        described_class.new(:xmm0, number: 0, width: 16, type: type)
      end

      it "must override the default `:reg` type" do
        expect(subject.type).to eq(type)
      end
    end
  end

  describe "#sp?" do
    context "when initialized with `sp: true`" do
      subject { described_class.new(:esp, width: 4, sp: true) }

      it "must return true" do
        expect(subject.sp?).to be(true)
      end
    end

    context "when not initialized with `sp: true`" do
      subject { described_class.new(:eax, width: 4) }

      it "must return false" do
        expect(subject.sp?).to be(false)
      end
    end
  end

  describe "#bp?" do
    context "when initialized with `bp: true`" do
      subject { described_class.new(:ebp, width: 4, bp: true) }

      it "must return true" do
        expect(subject.bp?).to be(true)
      end
    end

    context "when not initialized with `bp: true`" do
      subject { described_class.new(:eax, width: 4) }

      it "must return false" do
        expect(subject.bp?).to be(false)
      end
    end
  end

  describe "#+" do
    context "when given an Ronin::ASM::Memory" do
      let(:operand) do
        Ronin::ASM::Memory.new(displacement: 10, index: register, scale: 2)
      end

      subject { register + operand }

      it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

      it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

      it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

    it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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

    it { expect(subject).to be_kind_of(Ronin::ASM::Memory) }

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
