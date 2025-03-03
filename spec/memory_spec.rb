require 'spec_helper'
require 'ronin/asm/memory'

require 'ronin/asm/register'

describe Ronin::ASM::Memory do
  let(:register) do
    Ronin::ASM::Register.new(:eax, width: 4, type: :reg32)
  end

  subject { described_class.new(register) }

  describe "#initialize" do
    it "must set #base" do
      expect(subject.base).to eq(register)
    end

    context "when the width: keyword argument is not given" do
      it "must set #width to the base's #width" do
        expect(subject.width).to eq(subject.base.width)
      end
    end

    context "when the width: keyword argument is given" do
      let(:width) { 2 }

      subject { described_class.new(register, width: width) }

      it "must set #width to the given width value" do
        expect(subject.width).to eq(width)
      end
    end
  end

  describe ".[]" do
    let(:arguments) { [register] }

    subject { described_class }

    it do
      expect {
        subject[*arguments]
      }.to raise_error(NotImplementedError,"#{subject}.[] was not implemented")
    end
  end

  describe "#width" do
    it "must return the width of base" do
      expect(subject.width).to eq(register.width)
    end

    context "when the #width has been explicitly set with the `width:` keyword argument" do
      let(:explicit_width) { 2 }

      subject { described_class.new(register, width: explicit_width) }

      it "must return the explicitly set width" do
        expect(subject.width).to eq(explicit_width)
      end
    end
  end

  describe "#type" do
    context "when the #width is 1" do
      let(:width) { 1 }

      subject { described_class.new(register, width: width) }

      it "must return :mem8" do
        expect(subject.type).to be(:mem8)
      end
    end

    context "when the #width is 2" do
      let(:width) { 2 }

      subject { described_class.new(register, width: width) }

      it "must return :mem16" do
        expect(subject.type).to be(:mem16)
      end
    end

    context "when the #width is 4" do
      let(:width) { 4 }

      subject { described_class.new(register, width: width) }

      it "must return :mem32" do
        expect(subject.type).to be(:mem32)
      end
    end

    context "when the #width is 8" do
      let(:width) { 8 }

      subject { described_class.new(register, width: width) }

      it "must return :mem64" do
        expect(subject.type).to be(:mem64)
      end
    end
  end

  describe "#mem?" do
    it "must return true by default" do
      expect(subject.mem?).to be(true)
    end
  end

  describe "#mem8?" do
    context "when the #width is 1" do
      let(:width) { 1 }

      subject { described_class.new(register, width: width) }

      it "must return true" do
        expect(subject.mem8?).to be(true)
      end
    end

    context "when the #type is not 1" do
      let(:width) { 8 }

      subject { described_class.new(register, width: width) }

      it "must return false" do
        expect(subject.mem8?).to be(false)
      end
    end
  end

  describe "#mem16?" do
    context "when the #width is 2" do
      let(:width) { 2 }

      subject { described_class.new(register, width: width) }

      it "must return true" do
        expect(subject.mem16?).to be(true)
      end
    end

    context "when the #type is not 2" do
      let(:width) { 8 }

      subject { described_class.new(register, width: width) }

      it "must return false" do
        expect(subject.mem16?).to be(false)
      end
    end
  end

  describe "#mem32?" do
    context "when the #width is 4" do
      let(:width) { 4 }

      subject { described_class.new(register, width: width) }

      it "must return true" do
        expect(subject.mem32?).to be(true)
      end
    end

    context "when the #type is not 4" do
      let(:width) { 8 }

      subject { described_class.new(register, width: width) }

      it "must return false" do
        expect(subject.mem32?).to be(false)
      end
    end
  end

  describe "#mem64?" do
    context "when the #width is 8" do
      let(:width) { 8 }

      subject { described_class.new(register, width: width) }

      it "must return true" do
        expect(subject.mem64?).to be(true)
      end
    end

    context "when the #type is not 8" do
      let(:width) { 1 }

      subject { described_class.new(register, width: width) }

      it "must return false" do
        expect(subject.mem64?).to be(false)
      end
    end
  end

  describe "#change_width" do
    let(:new_width) { 8 }

    it "must return a new #{described_class} with the updated #width" do
      new_memory = subject.change_width(new_width)

      expect(new_memory).to be_kind_of(described_class)
      expect(new_memory.base).to be(subject.base)
      expect(new_memory.width).to eq(new_width)
    end
  end

  describe "#to_i" do
    it "must return the Integer value of the #base register" do
      expect(subject.to_i).to eq(register.to_i)
    end
  end
end
