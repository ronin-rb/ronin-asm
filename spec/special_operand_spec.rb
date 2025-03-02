require 'spec_helper'
require 'ronin/asm/special_operand'

describe Ronin::ASM::SpecialOperand do
  module SpecialOperandTests
    class Operand < Ronin::ASM::SpecialOperand
    end
  end

  let(:test_class) { SpecialOperandTests::Operand }
  let(:type)       { :foo }

  subject { test_class.new(type) }

  describe "#initialize" do
    it "must set #type" do
      expect(subject.type).to eq(type)
    end
  end
end
