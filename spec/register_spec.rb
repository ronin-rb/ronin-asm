require 'spec_helper'
require 'ronin/asm/register'

describe Ronin::ASM::Register do
  let(:name)   { :ebx }
  let(:number) { 1 }
  let(:width)  { 4 }
  let(:type)   { :reg32 }

  subject do
    described_class.new(name, number: number, width: width, type: type)
  end

  describe "#initialize" do
    it "must set #type" do
      expect(subject.type).to eq(type)
    end

    context "when the number: keyword argument is not given" do
      subject do
        described_class.new(name, width: width, type: type)
      end

      it "must default #number to 0" do
        expect(subject.number).to eq(0)
      end
    end

    context "when the number: keyword argument is given" do
      let(:name)   { :ecx }
      let(:number) { 3 }

      subject do
        described_class.new(name, width: width, number: number, type: type)
      end

      it "must set #number" do
        expect(subject.number).to eq(number)
      end
    end
  end

  describe "#reg?" do
    it "must return true" do
      expect(subject.reg?).to be(true)
    end
  end

  describe "#reg8?" do
    context "when the #width is 1" do
      let(:width) { 1 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return true" do
        expect(subject.reg8?).to be(true)
      end
    end

    context "when the #type is not 1" do
      let(:width) { 8 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return false" do
        expect(subject.reg8?).to be(false)
      end
    end
  end

  describe "#reg16?" do
    context "when the #width is 2" do
      let(:width) { 2 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return true" do
        expect(subject.reg16?).to be(true)
      end
    end

    context "when the #type is not 2" do
      let(:width) { 1 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return false" do
        expect(subject.reg16?).to be(false)
      end
    end
  end

  describe "#reg32?" do
    context "when the #width is 4" do
      let(:width) { 4 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return true" do
        expect(subject.reg32?).to be(true)
      end
    end

    context "when the #type is not 4" do
      let(:width) { 1 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return false" do
        expect(subject.reg32?).to be(false)
      end
    end
  end

  describe "#reg64?" do
    context "when the #width is 8" do
      let(:width) { 8 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return true" do
        expect(subject.reg64?).to be(true)
      end
    end

    context "when the #type is not 8" do
      let(:width) { 1 }

      subject { described_class.new(name, width: width, type: type) }

      it "must return false" do
        expect(subject.reg64?).to be(false)
      end
    end
  end

  describe "#change_width" do
    it do
      expect {
        subject.change_width(2)
      }.to raise_error(Ronin::ASM::SemanticError,"cannot change the width of a register: #{subject}")
    end
  end

  describe "#to_s" do
    it "must return the register name" do
      expect(subject.to_s).to eq(subject.name.to_s)
    end
  end
end
