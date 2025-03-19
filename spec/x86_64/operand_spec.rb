require 'spec_helper'
require 'ronin/asm/x86_64/operand'

describe Ronin::ASM::X86_64::Operand do
  module TestX86_64Operand
    class Operand
      include Ronin::ASM::X86_64::Operand
    end
  end

  let(:test_class) { TestX86_64Operand::Operand }

  subject { test_class.new }

  it "must also include Ronin::ASM::X86::Operand" do
    expect(subject.class).to include(Ronin::ASM::X86::Operand)
  end

  describe "#sibmem?" do
    it "must return false by default" do
      expect(subject.sibmem?).to be(false)
    end
  end
end
