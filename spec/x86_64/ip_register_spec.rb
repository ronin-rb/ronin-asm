require 'spec_helper'
require 'ronin/asm/x86_64/ip_register'

require 'ronin/asm/x86_64/register'

describe Ronin::ASM::X86_64::IPRegister do
  it "must inherit from Ronin::ASM::X86_64::Register" do
    expect(described_class).to be < Ronin::ASM::X86_64::Register
  end

  subject do
    described_class.new(:rip, width: 8, number: 0, type: :rip)
  end

  describe "#+" do
    context "when given an Integer" do
      let(:displacement) { 42 }

      it "must return a Ronin::ASM::X86_64::Memory object with the RIP object as the base and the displacement set" do
        memory = subject + displacement

        expect(memory).to be_a(Ronin::ASM::X86_64::Memory)
        expect(memory.base).to be(subject)
        expect(memory.displacement).to eq(displacement)
      end
    end

    context "when given another register" do
      let(:register) do
        Ronin::ASM::X86_64::Register.new(:rax, width: 8, number: 0, general: true)
      end

      it do
        expect {
          subject + register
        }.to raise_error(TypeError,"cannot use #{subject.name} in base+index*scale expressions")
      end
    end
  end

  describe "#-" do
    context "when given an Integer" do
      let(:displacement) { 42 }

      it "must return a Ronin::ASM::X86_64::Memory object with the RIP object as the base and the displacement set, but negative" do
        memory = subject - displacement

        expect(memory).to be_a(Ronin::ASM::X86_64::Memory)
        expect(memory.base).to be(subject)
        expect(memory.displacement).to eq(-displacement)
      end
    end

    context "when given another register" do
      let(:register) do
        Ronin::ASM::X86_64::Register.new(:rax, width: 8, number: 0, general: true)
      end

      it do
        expect {
          subject - register
        }.to raise_error(TypeError,"cannot use #{subject.name} in base+index*scale expressions")
      end
    end
  end

  describe "#*" do
    let(:operand) { 42 }

    it do
      expect {
        subject * operand
        }.to raise_error(TypeError,"cannot use #{subject.name} in base+index*scale expressions")
    end
  end
end
