require 'spec_helper'
require 'ronin/asm/special_operand'

describe Ronin::ASM::SpecialOperand do
  let(:type) { :foo }

  subject { described_class.new(type) }

  describe "#initialize" do
    it "must set #type" do
      expect(subject.type).to eq(type)
    end
  end
end
