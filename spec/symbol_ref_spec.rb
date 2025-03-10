require 'spec_helper'
require 'ronin/asm/symbol_ref'
require 'ronin/asm/label'

describe Ronin::ASM::SymbolRef do
  let(:name) { '_start' }

  subject { described_class.new(name) }

  it "must include Ronin::ASM::Operand" do
    expect(described_class).to include(Ronin::ASM::Operand)
  end

  describe "#initialize" do
    it "must set #name" do
      expect(subject.name).to eq(name)
    end

    it "must set #value to nil" do
      expect(subject.value).to be(nil)
    end

    context "when given the value: keyword argument" do
      context "and it's a Ronin::ASM::Label" do
        let(:value) { Ronin::ASM::Label.new(name) }

        subject { described_class.new(name, value: value) }

        it "must set #value" do
          expect(subject.value).to be(value)
        end
      end
    end
  end

  describe "#resolved?" do
    context "when #value is set" do
      let(:value) { Ronin::ASM::Label.new(name) }

      subject { described_class.new(name, value: value) }

      it "must return true" do
        expect(subject.resolved?).to be(true)
      end
    end

    context "when #value is not set" do
      it "must return false" do
        expect(subject.resolved?).to be(false)
      end
    end
  end

  describe "#unresolved?" do
    context "when #value is set" do
      let(:value) { Ronin::ASM::Label.new(name) }

      subject { described_class.new(name, value: value) }

      it "must return false" do
        expect(subject.unresolved?).to be(false)
      end
    end

    context "when #value is not set" do
      it "must return true" do
        expect(subject.unresolved?).to be(true)
      end
    end
  end

  describe "#resolve" do
    let(:value) { Ronin::ASM::Label.new(name) }

    before { subject.resolve(value) }

    it "must set #value" do
      expect(subject.value).to be(value)
    end
  end

  describe "#to_s" do
    it "must return the String form of #name" do
      expect(subject.to_s).to eq(name)
    end
  end
end
