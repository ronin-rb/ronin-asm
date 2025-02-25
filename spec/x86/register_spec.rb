require 'spec_helper'
require 'ronin/asm/x86/register'

describe Ronin::ASM::X86::Register do
  it "must inherit from Ronin::ASM::Register" do
    expect(described_class).to be < Ronin::ASM::Register
  end

  describe "#sp?" do
    context "when #number is 4" do
      subject { described_class.new(:esp, width: 4, number: 4) }

      it "must return true" do
        expect(subject.sp?).to be(true)
      end
    end

    context "when #number is not 4" do
      subject { described_class.new(:ebp, width: 4, number: 5) }

      it "must return false" do
        expect(subject.sp?).to be(false)
      end
    end
  end
end
