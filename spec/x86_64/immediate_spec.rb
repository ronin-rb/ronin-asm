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

  describe "#type_of?" do
    context "when given :imm" do
      it "must return true" do
        expect(subject.type_of?(:imm)).to be(true)
      end
    end

    context "when the #type is :imm" do
      subject { described_class.new(value) }

      context "and when given :imm8" do
        it "must return true" do
          expect(subject.type_of?(:imm8)).to be(true)
        end
      end

      context "and when given :imm16" do
        it "must return true" do
          expect(subject.type_of?(:imm16)).to be(true)
        end
      end

      context "and when given :imm32" do
        it "must return true" do
          expect(subject.type_of?(:imm32)).to be(true)
        end
      end

      context "and when given :imm64" do
        it "must return true" do
          expect(subject.type_of?(:imm64)).to be(true)
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
    it "must call Ronin::ASM::X86_64::Syntax::Intel.format_immediate" do
      expect(subject.to_s).to eq(
        Ronin::ASM::X86_64::Syntax::Intel.format_immediate(subject)
      )
    end
  end
end
