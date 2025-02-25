require 'spec_helper'
require 'ronin/asm/x86/register'

describe Ronin::ASM::X86::Register do
  it "must inherit from Ronin::ASM::Register" do
    expect(described_class).to be < Ronin::ASM::Register
  end

  describe "#sp?" do
    context "when initialized with `sp: true`" do
      subject { described_class.new(:esp, width: 4, sp: true) }

      it "must return true" do
        expect(subject.sp?).to be(true)
      end
    end

    context "when not initialized with `sp: true`" do
      subject { described_class.new(:eax, width: 4) }

      it "must return false" do
        expect(subject.sp?).to be(false)
      end
    end
  end

  describe "#bp?" do
    context "when initialized with `bp: true`" do
      subject { described_class.new(:ebp, width: 4, bp: true) }

      it "must return true" do
        expect(subject.bp?).to be(true)
      end
    end

    context "when not initialized with `bp: true`" do
      subject { described_class.new(:eax, width: 4) }

      it "must return false" do
        expect(subject.bp?).to be(false)
      end
    end
  end
end
