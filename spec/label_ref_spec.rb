require 'spec_helper'
require 'ronin/asm/label_ref'
require 'ronin/asm/label'

describe Ronin::ASM::LabelRef do
  let(:name) { '_start' }

  subject { described_class.new(name) }

  it "must include Ronin::ASM::Operand" do
    expect(described_class).to include(Ronin::ASM::Operand)
  end

  describe "#initialize" do
    it "must set #name" do
      expect(subject.name).to eq(name)
    end

    it "must set #label to nil" do
      expect(subject.label).to be(nil)
    end

    context "when given the label: keyword argument" do
      let(:label) { Ronin::ASM::Label.new(name) }

      subject { described_class.new(name, label: label) }

      it "must set #label" do
        expect(subject.label).to be(label)
      end
    end
  end

  describe "#resolved?" do
    context "when #label is set" do
      let(:label) { Ronin::ASM::Label.new(name) }

      subject { described_class.new(name, label: label) }

      it "must return true" do
        expect(subject.resolved?).to be(true)
      end
    end

    context "when #label is not set" do
      it "must return false" do
        expect(subject.resolved?).to be(false)
      end
    end
  end

  describe "#unresolved?" do
    context "when #label is set" do
      let(:label) { Ronin::ASM::Label.new(name) }

      subject { described_class.new(name, label: label) }

      it "must return false" do
        expect(subject.unresolved?).to be(false)
      end
    end

    context "when #label is not set" do
      it "must return true" do
        expect(subject.unresolved?).to be(true)
      end
    end
  end

  describe "#resolve" do
    let(:label) { Ronin::ASM::Label.new(name) }

    before { subject.resolve(label) }

    it "must set #label" do
      expect(subject.label).to be(label)
    end
  end

  describe "#to_s" do
    it "must return the String form of #name" do
      expect(subject.to_s).to eq(name)
    end
  end
end
