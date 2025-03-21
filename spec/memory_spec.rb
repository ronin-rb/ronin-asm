require 'spec_helper'
require 'ronin/asm/memory'

require 'ronin/asm/register'

describe Ronin::ASM::Memory do
  let(:register) do
    Ronin::ASM::Register.new(:eax, size: 4, type: :reg32)
  end

  subject { described_class.new(register) }

  describe "#initialize" do
    it "must set #base" do
      expect(subject.base).to eq(register)
    end

    context "when the size: keyword argument is not given" do
      it "must set #size to nil" do
        expect(subject.size).to be(nil)
      end

      it "must set #type to :mem" do
        expect(subject.type).to be(:mem)
      end
    end

    context "when the size: keyword argument is given" do
      let(:size) { 2 }

      subject { described_class.new(register, size: size) }

      it "must set #size to the given size value" do
        expect(subject.size).to eq(size)
      end

      it "must set #type to :mem and the size multiplied by 8" do
        expect(subject.type).to be(:"mem#{size * 8}")
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

  describe "#size" do
    context "when the #size has not been explicitly set with the `size:` keyword argument" do
      it "must return nil" do
        expect(subject.size).to be(nil)
      end
    end

    context "when the #size has been explicitly set with the `size:` keyword argument" do
      let(:explicit_size) { 2 }

      subject { described_class.new(register, size: explicit_size) }

      it "must return the explicitly set size" do
        expect(subject.size).to eq(explicit_size)
      end
    end
  end

  describe "#type" do
    context "when the #size is 1" do
      let(:size) { 1 }

      subject { described_class.new(register, size: size) }

      it "must return :mem8" do
        expect(subject.type).to be(:mem8)
      end
    end

    context "when the #size is 2" do
      let(:size) { 2 }

      subject { described_class.new(register, size: size) }

      it "must return :mem16" do
        expect(subject.type).to be(:mem16)
      end
    end

    context "when the #size is 4" do
      let(:size) { 4 }

      subject { described_class.new(register, size: size) }

      it "must return :mem32" do
        expect(subject.type).to be(:mem32)
      end
    end

    context "when the #size is 8" do
      let(:size) { 8 }

      subject { described_class.new(register, size: size) }

      it "must return :mem64" do
        expect(subject.type).to be(:mem64)
      end
    end

    context "but #size is nil" do
      it "must return :mem" do
        expect(subject.type).to be(:mem)
      end
    end
  end

  describe "#mem?" do
    it "must return true by default" do
      expect(subject.mem?).to be(true)
    end
  end

  describe "#mem8?" do
    context "when the #size is 1" do
      let(:size) { 1 }

      subject { described_class.new(register, size: size) }

      it "must return true" do
        expect(subject.mem8?).to be(true)
      end
    end

    context "when the #type is not 1" do
      let(:size) { 8 }

      subject { described_class.new(register, size: size) }

      it "must return false" do
        expect(subject.mem8?).to be(false)
      end
    end
  end

  describe "#mem16?" do
    context "when the #size is 2" do
      let(:size) { 2 }

      subject { described_class.new(register, size: size) }

      it "must return true" do
        expect(subject.mem16?).to be(true)
      end
    end

    context "when the #type is not 2" do
      let(:size) { 8 }

      subject { described_class.new(register, size: size) }

      it "must return false" do
        expect(subject.mem16?).to be(false)
      end
    end
  end

  describe "#mem32?" do
    context "when the #size is 4" do
      let(:size) { 4 }

      subject { described_class.new(register, size: size) }

      it "must return true" do
        expect(subject.mem32?).to be(true)
      end
    end

    context "when the #type is not 4" do
      let(:size) { 8 }

      subject { described_class.new(register, size: size) }

      it "must return false" do
        expect(subject.mem32?).to be(false)
      end
    end
  end

  describe "#mem64?" do
    context "when the #size is 8" do
      let(:size) { 8 }

      subject { described_class.new(register, size: size) }

      it "must return true" do
        expect(subject.mem64?).to be(true)
      end
    end

    context "when the #type is not 8" do
      let(:size) { 1 }

      subject { described_class.new(register, size: size) }

      it "must return false" do
        expect(subject.mem64?).to be(false)
      end
    end
  end

  describe "#change_size" do
    let(:new_size) { 8 }

    it "must return a new #{described_class} with the updated #size" do
      new_memory = subject.change_size(new_size)

      expect(new_memory).to be_kind_of(described_class)
      expect(new_memory.base).to be(subject.base)
      expect(new_memory.size).to eq(new_size)
    end
  end

  describe "#to_i" do
    it "must return the Integer value of the #base register" do
      expect(subject.to_i).to eq(register.to_i)
    end
  end
end
