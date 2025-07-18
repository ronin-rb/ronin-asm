require 'rspec'
require 'ronin/asm/x86/registers'
require 'ronin/asm/x86/operands'
require 'ronin/asm/x86/memory'
require 'ronin/asm/x86/broadcast'

shared_examples_for "Ronin::ASM::X86::Syntaxes::Assembly methods" do
  describe ".format_broadcast" do
    subject { described_class }

    let(:base)   { Ronin::ASM::X86::Registers::EAX }
    let(:index)  { Ronin::ASM::X86::Registers::ESI }
    let(:scale)  { 4 }
    let(:displacement) { 10 }
    let(:memory) do
      Ronin::ASM::X86::Memory.new(
        base:  base,
        index: index,
        scale: scale,
        displacement: displacement
      )
    end

    let(:bcst) { Ronin::ASM::X86::Broadcast.new(memory,ratio) }

    context "when ratio is {1=>2}" do
      let(:ratio) { {1=>2} }

      it "must format the the Broadcast#memory operand and then append the {1to2} decorator" do
        expect(subject.format_broadcast(bcst)).to eq(
          "#{subject.format_memory(bcst.memory)} {1to2}"
        )
      end
    end

    context "when ratio is {1=>4}" do
      let(:ratio) { {1=>4} }

      it "must format the the Broadcast#memory operand and then append the {1to4} decorator" do
        expect(subject.format_broadcast(bcst)).to eq(
          "#{subject.format_memory(bcst.memory)} {1to4}"
        )
      end
    end

    context "when ratio is {1=>8}" do
      let(:ratio) { {1=>8} }

      it "must format the the Broadcast#memory operand and then append the {1to8} decorator" do
        expect(subject.format_broadcast(bcst)).to eq(
          "#{subject.format_memory(bcst.memory)} {1to8}"
        )
      end
    end

    context "when ratio is {1=>16}" do
      let(:ratio) { {1=>16} }

      it "must format the the Broadcast#memory operand and then append the {1to16} decorator" do
        expect(subject.format_broadcast(bcst)).to eq(
          "#{subject.format_memory(bcst.memory)} {1to16}"
        )
      end
    end

    context "when ratio is {1=>32}" do
      let(:ratio) { {1=>32} }

      it "must format the the Broadcast#memory operand and then append the {1to32} decorator" do
        expect(subject.format_broadcast(bcst)).to eq(
          "#{subject.format_memory(bcst.memory)} {1to32}"
        )
      end
    end
  end

  describe ".format_opmask" do
    subject { described_class }

    let(:operand) { Ronin::ASM::X86::Registers::XMM0 }
    let(:k)       { Ronin::ASM::X86::Registers::K1 }
    let(:opmask)  { Ronin::ASM::X86::Opmask.new(operand,k) }

    it "must return the formatted operand and a '{k}' decorator with the k register" do
      expect(subject.format_opmask(opmask)).to eq(
        "#{subject.format_operand(opmask.operand)} {#{subject.format_register(k)}}"
      )
    end

    context "when the opmask has zero masking enabled" do
      let(:opmask) { Ronin::ASM::X86::Opmask.new(operand,k, zero: true) }

      it "must add the '{z}' decorator to the end of the string" do
        expect(subject.format_opmask(opmask)).to eq(
          "#{subject.format_operand(opmask.operand)} {#{subject.format_register(k)}}{z}"
        )
      end
    end
  end

  describe ".format_decorator" do
    subject { described_class }

    let(:operand) { Ronin::ASM::X86::Operands::RD_SAE }

    it "must return the String form of the decorator operand" do
      expect(subject.format_decorator(operand)).to eq(
        operand.to_s
      )
    end
  end

  describe ".format_operand" do
    subject { described_class }

    context "when the operand is a Ronin::ASM::X86::Broadcast object" do
      let(:base)   { Ronin::ASM::X86::Registers::EAX }
      let(:index)  { Ronin::ASM::X86::Registers::ESI }
      let(:scale)  { 4 }
      let(:displacement) { 10 }
      let(:memory) do
        Ronin::ASM::X86::Memory.new(
          base:  base,
          index: index,
          scale: scale,
          displacement: displacement
        )
      end

      let(:ratio)   { {1=>4} }
      let(:operand) { Ronin::ASM::X86::Broadcast.new(memory,ratio) }

      it "must call .format_broadcast with the operand" do
        expect(subject.format_operand(operand)).to eq(
          subject.format_broadcast(operand)
        )
      end
    end

    context "when given a Ronin::ASM::X86::Opmask object" do
      let(:operand) { Ronin::ASM::X86::Registers::XMM0 }
      let(:k)       { Ronin::ASM::X86::Registers::K1 }
      let(:opmask)  { Ronin::ASM::X86::Opmask.new(operand,k) }

      it "must call .format_opmask with the operand" do
        expect(subject.format_operand(opmask)).to eq(
          subject.format_opmask(opmask)
        )
      end
    end

    context "when given a Ronin::ASM::X86::ER object" do
      let(:operand) { Ronin::ASM::X86::Operands::RD_SAE }

      it "must call .format_decorator with the ER decorator operand" do
        expect(subject.format_operand(operand)).to eq(
          subject.format_decorator(operand)
        )
      end
    end

    context "when given a Ronin::ASM::X86::SAE object" do
      let(:operand) { Ronin::ASM::X86::Operands::SAE }

      it "must call .format_decorator with the SAE decorator operand" do
        expect(subject.format_operand(operand)).to eq(
          subject.format_decorator(operand)
        )
      end
    end
  end
end
