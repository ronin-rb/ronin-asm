require 'spec_helper'
require 'ronin/asm/operand'

describe Ronin::ASM::Operand do
  class TestOperand
    class Operand
      include Ronin::ASM::Operand
    end

    class OperandWithType
      include Ronin::ASM::Operand

      def type = :operand32
    end
  end

  let(:test_class) { TestOperand::Operand }

  subject { test_class.new }

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

  describe "#reg32?" do
    it "must return false by default" do
      expect(subject.reg32?).to be(false)
    end
  end

  describe "#reg64?" do
    it "must return false by default" do
      expect(subject.reg64?).to be(false)
    end
  end

  describe "#mem?" do
    it "must return false by default" do
      expect(subject.mem?).to be(false)
    end
  end

  describe "#mem8?" do
    it "must return false by default" do
      expect(subject.mem8?).to be(false)
    end
  end

  describe "#mem16?" do
    it "must return false by default" do
      expect(subject.mem16?).to be(false)
    end
  end

  describe "#mem32?" do
    it "must return false by default" do
      expect(subject.mem32?).to be(false)
    end
  end

  describe "#mem64?" do
    it "must return false by default" do
      expect(subject.mem64?).to be(false)
    end
  end

  describe "#type_of?" do
    context "when the given type equals #type" do
      let(:test_class) { TestOperand::OperandWithType }

      it "must return true" do
        expect(subject.type_of?(subject.type)).to be(true)
      end
    end

    context "when the given type does not equal #type" do
      let(:test_class) { TestOperand::OperandWithType }

      it "must return false" do
        expect(subject.type_of?(:foo)).to be(false)
      end
    end
  end

  describe "#change_size" do
    it do
      expect {
        subject.change_size(4)
      }.to raise_error(NotImplementedError,"#{subject.class}#change_size was not defined")
    end
  end
end
