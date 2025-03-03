require 'spec_helper'
require 'ronin/asm/x86/opmask'

require 'ronin/asm/x86/register'
require 'ronin/asm/x86/immediate'

describe Ronin::ASM::X86::Opmask do
  it "must include Ronin::ASM::X86::Opmask" do
    expect(described_class).to include(Ronin::ASM::X86::Decorator)
  end

  let(:operand) do
    Ronin::ASM::X86::Register.new(:xmm0, size: 16, number: 0, type: :xmm)
  end
  let(:k) do
    Ronin::ASM::X86::Register.new(:k1, size: 8, number: 1, type: :k)
  end

  subject { described_class.new(operand,k) }

  describe "#initialize" do
    it "must set #operand" do
      expect(subject.operand).to be(operand)
    end

    it "must set #k" do
      expect(subject.k).to be(k)
    end

    it "must default #zero? to false" do
      expect(subject.zero?).to be(false)
    end

    context "when given the `zero: true` keyword argument" do
      subject { described_class.new(operand,k, zero: true) }

      it "must set #zero? to true" do
        expect(subject.zero?).to be(true)
      end
    end

    context "when given a non-Register and non-Memory object for the operand" do
      let(:operand) { Ronin::ASM::X86::Immediate.new(0x41) }

      it do
        expect {
          described_class.new(operand,k)
        }.to raise_error(ArgumentError,"can only apply opmasks to registers or memory operands: #{operand.inspect}")
      end
    end

    context "when given a non-Operand object for the operand" do
      let(:operand) { Object.new }

      it do
        expect {
          described_class.new(operand,k)
        }.to raise_error(ArgumentError,"can only apply opmasks to registers or memory operands: #{operand.inspect}")
      end
    end

    context "when given a non-Register for the k register" do
      let(:k) { Ronin::ASM::X86::Immediate.new(0x41) }

      it do
        expect {
          described_class.new(operand,k)
        }.to raise_error(ArgumentError,"cannot use non-opmask register: #{k.inspect}")
      end
    end

    context "when given a non-k-type register for the k register" do
      let(:k) do
        Ronin::ASM::X86::Register.new(:eax, size: 4, number: 0, general: true)
      end

      it do
        expect {
          described_class.new(operand,k)
        }.to raise_error(ArgumentError,"cannot use non-opmask register: #{k.inspect}")
      end
    end
  end

  describe "#zero?" do
    it "must return false by default" do
      expect(subject.zero?).to be(false)
    end

    context "when the #{described_class} is initialized with `zero: true`" do
      subject { described_class.new(operand,k, zero: true) }

      it "must return true" do
        expect(subject.zero?).to be(true)
      end
    end
  end

  describe "#merge?" do
    it "must return true by default" do
      expect(subject.merge?).to be(true)
    end

    context "when the #{described_class} is initialized with `zero: true`" do
      subject { described_class.new(operand,k, zero: true) }

      it "must return false" do
        expect(subject.merge?).to be(false)
      end
    end
  end

  describe "#size" do
    it "must return the operand's #size" do
      expect(subject.size).to eq(operand.size)
    end
  end

  describe "#to_i" do
    it "must return the operand's #to_i value" do
      expect(subject.to_i).to eq(operand.to_i)
    end
  end

  describe "#to_s" do
    it "must return formatted operand and the opmask decorator" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86::Syntax::Intel.format_opmask(subject)
      )
    end
  end
end
