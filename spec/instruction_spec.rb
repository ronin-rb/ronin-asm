require 'spec_helper'
require 'ronin/asm/instruction'

require 'ronin/asm/register'
require 'ronin/asm/immediate'
require 'ronin/asm/memory'

describe Ronin::ASM::Instruction do
  let(:register) do
    Ronin::ASM::Register.new(:eax, width: 4, type: :reg32)
  end
  let(:immediate) do
    Ronin::ASM::Immediate.new(0xff, width: 1)
  end

  describe "#initialize" do
    let(:name)     { :mov }
    let(:operands) { [immediate, register] }

    subject { described_class.new(name,*operands) }

    it "must set the name" do
      expect(subject.name).to eq(:mov)
    end

    it "must set the operands" do
      expect(subject.operands).to eq(operands)
    end

    it "must default #comment to nil" do
      expect(subject.comment).to be(nil)
    end

    context "when given the comment: keyword argument" do
      let(:comment) { 'Foo bar' }

      subject { described_class.new(name,*operands, comment: comment) }

      it "must set #comment" do
        expect(subject.comment).to eq(comment)
      end
    end
  end

  describe "#width" do
    subject { described_class.new(:mov, immediate, register) }

    it "must return the maximum width of the operands" do
      expect(subject.width).to eq(register.width)
    end

    context "when one of the operands does not define #width" do
      subject { described_class.new(:mov, register, :label) }

      it "must ignore them" do
        expect(subject.width).to eq(register.width)
      end
    end
  end
end
