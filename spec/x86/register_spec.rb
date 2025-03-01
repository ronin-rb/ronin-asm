require 'spec_helper'
require 'ronin/asm/x86/register'

describe Ronin::ASM::X86::Register do
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
end
