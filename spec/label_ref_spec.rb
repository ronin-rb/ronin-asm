require 'spec_helper'
require 'ronin/asm/label_ref'

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
  end

  describe "#to_s" do
    it "must return the String form of #name" do
      expect(subject.to_s).to eq(name)
    end
  end
end
