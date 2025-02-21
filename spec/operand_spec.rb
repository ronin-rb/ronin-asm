require 'spec_helper'
require 'ronin/asm/operand'

describe Ronin::ASM::Operand do
  class TestOperand < Ronin::ASM::Operand
  end

  describe "#type" do
    subject { TestOperand.new }

    it do
      expect {
        subject.type
      }.to raise_error(NotImplementedError,"#{subject.class}#type was not defined")
    end
  end
end
