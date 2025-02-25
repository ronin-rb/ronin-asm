require 'spec_helper'
require 'ronin/asm/operand'

describe Ronin::ASM::Operand do
  class TestOperand < Ronin::ASM::Operand
  end

  subject { TestOperand.new }

  describe "#type" do
    it do
      expect {
        subject.type
      }.to raise_error(NotImplementedError,"#{subject.class}#type was not defined")
    end
  end

  describe "#imm?" do
    it "must return false by default" do
      expect(subject.imm?).to be(false)
    end
  end

  describe "#imm8?" do
    it "must return false by default" do
      expect(subject.imm8?).to be(false)
    end
  end

  describe "#imm16?" do
    it "must return false by default" do
      expect(subject.imm16?).to be(false)
    end
  end

  describe "#imm32?" do
    it "must return false by default" do
      expect(subject.imm32?).to be(false)
    end
  end

  describe "#imm64?" do
    it "must return false by default" do
      expect(subject.imm64?).to be(false)
    end
  end

  describe "#reg?" do
    it "must return false by default" do
      expect(subject.reg?).to be(false)
    end
  end

  describe "#reg8?" do
    it "must return false by default" do
      expect(subject.reg8?).to be(false)
    end
  end

  describe "#reg16?" do
    it "must return false by default" do
      expect(subject.reg16?).to be(false)
    end
  end
end
