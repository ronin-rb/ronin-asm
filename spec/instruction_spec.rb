require 'spec_helper'
require 'ronin/asm/instruction'

require 'ronin/asm/register'
require 'ronin/asm/immediate'
require 'ronin/asm/memory'
require 'ronin/asm/symbol_ref'

describe Ronin::ASM::Instruction do
  let(:register) do
    Ronin::ASM::Register.new(:eax, size: 4, type: :reg32)
  end
  let(:immediate) do
    Ronin::ASM::Immediate.new(0xff, size: 1)
  end

  let(:operands) { [register, immediate] }

  subject { described_class.new(*operands) }

  describe "#initialize" do
    it "must set the operands" do
      expect(subject.operands).to eq(operands)
    end

    it "must default #comment to nil" do
      expect(subject.comment).to be(nil)
    end

    context "when given the comment: keyword argument" do
      let(:comment) { 'Foo bar' }

      subject { described_class.new(*operands, comment: comment) }

      it "must set #comment" do
        expect(subject.comment).to eq(comment)
      end
    end
  end

  describe "#name" do
    it do
      expect {
        subject.name
      }.to raise_error(NotImplementedError,"#{subject.class}#name was not defined")
    end
  end

  describe "#min_operand_size" do
    subject { described_class.new(register, immediate) }

    it "must return the minimum size of the operands" do
      expect(subject.min_operand_size).to eq(immediate.size)
    end

    context "when one of the operands does not define #size" do
      let(:symbol_ref) { Ronin::ASM::SymbolRef.new('_label') }

      subject { described_class.new(register, symbol_ref) }

      it "must ignore them" do
        expect(subject.min_operand_size).to eq(register.size)
      end
    end
  end

  describe "#max_operand_size" do
    subject { described_class.new(register, immediate) }

    it "must return the maximum size of the operands" do
      expect(subject.max_operand_size).to eq(register.size)
    end

    context "when one of the operands does not define #size" do
      let(:symbol_ref) { Ronin::ASM::SymbolRef.new('_label') }

      subject { described_class.new(register, symbol_ref) }

      it "must ignore them" do
        expect(subject.max_operand_size).to eq(register.size)
      end
    end
  end
end
