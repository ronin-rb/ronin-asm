require 'spec_helper'
require 'ronin/asm/x86/operand'

describe Ronin::ASM::X86::Operand do
  module TestX86Operand
    class Operand
      include Ronin::ASM::X86::Operand
    end
  end

  let(:test_class) { TestX86Operand::Operand }

  subject { test_class.new }

  it "must also include Ronin::ASM::Operand" do
    expect(subject.class).to include(Ronin::ASM::Operand)
  end

  describe "#k?" do
    it "must return false by default" do
      expect(subject.k?).to be(false)
    end
  end

  describe "#mmx?" do
    it "must return false by default" do
      expect(subject.mmx?).to be(false)
    end
  end

  describe "#xmm?" do
    it "must return false by default" do
      expect(subject.xmm?).to be(false)
    end
  end

  describe "#ymm?" do
    it "must return false by default" do
      expect(subject.ymm?).to be(false)
    end
  end

  describe "#zmm?" do
    it "must return false by default" do
      expect(subject.zmm?).to be(false)
    end
  end
end
