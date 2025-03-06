require 'spec_helper'
require 'ronin/asm/x86/decorator'

describe Ronin::ASM::X86::Decorator do
  module TestX86Decorator
    class TestDecorator
      include Ronin::ASM::X86::Decorator
    end
  end
  let(:test_class) { TestX86Decorator::TestDecorator }

  let(:operand) { double('Operand') }

  subject { test_class.new(operand) }

  describe "#initialize" do
    it "must set #operand" do
      expect(subject.operand).to be(operand)
    end
  end

  let(:boolean) { double('boolean') }

  describe "#imm?" do
    it "must call #imm? on the #operand" do
      expect(operand).to receive(:imm?).and_return(boolean)

      expect(subject.imm?).to be(boolean)
    end
  end

  describe "#imm8?" do
    it "must call #imm8? on the #operand" do
      expect(operand).to receive(:imm8?).and_return(boolean)

      expect(subject.imm8?).to be(boolean)
    end
  end

  describe "#imm16?" do
    it "must call #imm16? on the #operand" do
      expect(operand).to receive(:imm16?).and_return(boolean)

      expect(subject.imm16?).to be(boolean)
    end
  end

  describe "#imm32?" do
    it "must call #imm32? on the #operand" do
      expect(operand).to receive(:imm32?).and_return(boolean)

      expect(subject.imm32?).to be(boolean)
    end
  end

  describe "#imm64?" do
    it "must call #imm64? on the #operand" do
      expect(operand).to receive(:imm64?).and_return(boolean)

      expect(subject.imm64?).to be(boolean)
    end
  end

  describe "#reg?" do
    it "must call #reg? on the #operand" do
      expect(operand).to receive(:reg?).and_return(boolean)

      expect(subject.reg?).to be(boolean)
    end
  end

  describe "#reg8?" do
    it "must call #reg8? on the #operand" do
      expect(operand).to receive(:reg8?).and_return(boolean)

      expect(subject.reg8?).to be(boolean)
    end
  end

  describe "#reg16?" do
    it "must call #reg16? on the #operand" do
      expect(operand).to receive(:reg16?).and_return(boolean)

      expect(subject.reg16?).to be(boolean)
    end
  end

  describe "#reg32?" do
    it "must call #reg32? on the #operand" do
      expect(operand).to receive(:reg32?).and_return(boolean)

      expect(subject.reg32?).to be(boolean)
    end
  end

  describe "#reg64?" do
    it "must call #reg64? on the #operand" do
      expect(operand).to receive(:reg64?).and_return(boolean)

      expect(subject.reg64?).to be(boolean)
    end
  end

  describe "#k?" do
    it "must call #k? on the #operand" do
      expect(operand).to receive(:k?).and_return(boolean)

      expect(subject.k?).to be(boolean)
    end
  end

  describe "#mm?" do
    it "must call #mm? on the #operand" do
      expect(operand).to receive(:mm?).and_return(boolean)

      expect(subject.mm?).to be(boolean)
    end
  end

  describe "#xmm?" do
    it "must call #xmm? on the #operand" do
      expect(operand).to receive(:xmm?).and_return(boolean)

      expect(subject.xmm?).to be(boolean)
    end
  end

  describe "#ymm?" do
    it "must call #ymm? on the #operand" do
      expect(operand).to receive(:ymm?).and_return(boolean)

      expect(subject.ymm?).to be(boolean)
    end
  end

  describe "#zmm?" do
    it "must call #zmm? on the #operand" do
      expect(operand).to receive(:zmm?).and_return(boolean)

      expect(subject.zmm?).to be(boolean)
    end
  end

  describe "#mem?" do
    it "must call #mem? on the #operand" do
      expect(operand).to receive(:mem?).and_return(boolean)

      expect(subject.mem?).to be(boolean)
    end
  end

  describe "#mem8?" do
    it "must call #mem8? on the #operand" do
      expect(operand).to receive(:mem8?).and_return(boolean)

      expect(subject.mem8?).to be(boolean)
    end
  end

  describe "#mem16?" do
    it "must call #mem16? on the #operand" do
      expect(operand).to receive(:mem16?).and_return(boolean)

      expect(subject.mem16?).to be(boolean)
    end
  end

  describe "#mem32?" do
    it "must call #mem32? on the #operand" do
      expect(operand).to receive(:mem32?).and_return(boolean)

      expect(subject.mem32?).to be(boolean)
    end
  end

  describe "#mem64?" do
    it "must call #mem64? on the #operand" do
      expect(operand).to receive(:mem64?).and_return(boolean)

      expect(subject.mem64?).to be(boolean)
    end
  end
end
