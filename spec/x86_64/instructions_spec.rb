#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/x86_64/instructions'
require 'ronin/asm/program'

require_relative 'helpers/operands'

describe Ronin::ASM::X86_64::Instructions do
  include Helpers::X86_64::Operands

  subject { Ronin::ASM::Program.new(arch: :x86_64) }

  describe "#aadd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AADD object with the given operands" do
        new_instruction = subject.aadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aand" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AAND object with the given operands" do
        new_instruction = subject.aand(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AAND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#adc" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADC object with the given operands" do
        new_instruction = subject.adc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#adcx" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADCX object with the given operands" do
        new_instruction = subject.adcx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADCX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#add" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADD object with the given operands" do
        new_instruction = subject.add(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#addpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADDPD object with the given operands" do
        new_instruction = subject.addpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#addps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADDPS object with the given operands" do
        new_instruction = subject.addps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#addsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADDSD object with the given operands" do
        new_instruction = subject.addsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADDSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#addss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADDSS object with the given operands" do
        new_instruction = subject.addss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADDSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#addsubpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADDSUBPD object with the given operands" do
        new_instruction = subject.addsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADDSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#addsubps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADDSUBPS object with the given operands" do
        new_instruction = subject.addsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADDSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#adox" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ADOX object with the given operands" do
        new_instruction = subject.adox(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ADOX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aesdec" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AESDEC object with the given operands" do
        new_instruction = subject.aesdec(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AESDEC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aesdeclast" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AESDECLAST object with the given operands" do
        new_instruction = subject.aesdeclast(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AESDECLAST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aesenc" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AESENC object with the given operands" do
        new_instruction = subject.aesenc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AESENC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aesenclast" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AESENCLAST object with the given operands" do
        new_instruction = subject.aesenclast(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AESENCLAST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aesimc" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AESIMC object with the given operands" do
        new_instruction = subject.aesimc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AESIMC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aeskeygenassist" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AESKEYGENASSIST object with the given operands" do
        new_instruction = subject.aeskeygenassist(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AESKEYGENASSIST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#and" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AND object with the given operands" do
        new_instruction = subject.and(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#andn" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), reg64(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ANDN object with the given operands" do
        new_instruction = subject.andn(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ANDN)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#andnpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ANDNPD object with the given operands" do
        new_instruction = subject.andnpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ANDNPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#andnps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ANDNPS object with the given operands" do
        new_instruction = subject.andnps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ANDNPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#andpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ANDPD object with the given operands" do
        new_instruction = subject.andpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ANDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#andps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ANDPS object with the given operands" do
        new_instruction = subject.andps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ANDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#aor" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AOR object with the given operands" do
        new_instruction = subject.aor(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AOR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#axor" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::AXOR object with the given operands" do
        new_instruction = subject.axor(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::AXOR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#bextr" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), mem64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BEXTR object with the given operands" do
        new_instruction = subject.bextr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BEXTR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blcfill" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLCFILL object with the given operands" do
        new_instruction = subject.blcfill(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLCFILL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blci" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLCI object with the given operands" do
        new_instruction = subject.blci(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLCI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blcic" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLCIC object with the given operands" do
        new_instruction = subject.blcic(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLCIC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blcmsk" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLCMSK object with the given operands" do
        new_instruction = subject.blcmsk(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLCMSK)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blcs" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLCS object with the given operands" do
        new_instruction = subject.blcs(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLCS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blendpd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLENDPD object with the given operands" do
        new_instruction = subject.blendpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLENDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blendps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLENDPS object with the given operands" do
        new_instruction = subject.blendps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLENDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blendvpd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm0(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLENDVPD object with the given operands" do
        new_instruction = subject.blendvpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLENDVPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blendvps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm0(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLENDVPS object with the given operands" do
        new_instruction = subject.blendvps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLENDVPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blsfill" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLSFILL object with the given operands" do
        new_instruction = subject.blsfill(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLSFILL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blsi" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLSI object with the given operands" do
        new_instruction = subject.blsi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLSI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blsic" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLSIC object with the given operands" do
        new_instruction = subject.blsic(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLSIC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blsmsk" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLSMSK object with the given operands" do
        new_instruction = subject.blsmsk(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLSMSK)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#blsr" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BLSR object with the given operands" do
        new_instruction = subject.blsr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BLSR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#bsf" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BSF object with the given operands" do
        new_instruction = subject.bsf(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BSF)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#bsr" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BSR object with the given operands" do
        new_instruction = subject.bsr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BSR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#bswap" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BSWAP object with the given operands" do
        new_instruction = subject.bswap(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BSWAP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#bt" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BT object with the given operands" do
        new_instruction = subject.bt(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#btc" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BTC object with the given operands" do
        new_instruction = subject.btc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BTC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#btr" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BTR object with the given operands" do
        new_instruction = subject.btr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BTR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#bts" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BTS object with the given operands" do
        new_instruction = subject.bts(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BTS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#bzhi" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), mem64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::BZHI object with the given operands" do
        new_instruction = subject.bzhi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::BZHI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#call" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CALL object with the given operands" do
        new_instruction = subject.call(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CALL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cbw" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CBW object with no operands" do
        new_instruction = subject.cbw

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CBW)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cdq" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CDQ object with no operands" do
        new_instruction = subject.cdq

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CDQ)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cdqe" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CDQE object with no operands" do
        new_instruction = subject.cdqe

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CDQE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#clc" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CLC object with no operands" do
        new_instruction = subject.clc

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CLC)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cld" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CLD object with no operands" do
        new_instruction = subject.cld

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CLD)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cldemote" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CLDEMOTE object with the given operands" do
        new_instruction = subject.cldemote(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CLDEMOTE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#clflush" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CLFLUSH object with the given operands" do
        new_instruction = subject.clflush(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CLFLUSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#clflushopt" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CLFLUSHOPT object with the given operands" do
        new_instruction = subject.clflushopt(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CLFLUSHOPT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#clwb" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CLWB object with the given operands" do
        new_instruction = subject.clwb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CLWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#clzero" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CLZERO object with no operands" do
        new_instruction = subject.clzero

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CLZERO)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cmc" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CMC object with no operands" do
        new_instruction = subject.cmc

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMC)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cmova" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVA object with the given operands" do
        new_instruction = subject.cmova(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovae" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVAE object with the given operands" do
        new_instruction = subject.cmovae(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVAE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovb" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVB object with the given operands" do
        new_instruction = subject.cmovb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovbe" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVBE object with the given operands" do
        new_instruction = subject.cmovbe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVBE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovc" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVC object with the given operands" do
        new_instruction = subject.cmovc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmove" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVE object with the given operands" do
        new_instruction = subject.cmove(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovg" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVG object with the given operands" do
        new_instruction = subject.cmovg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovge" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVGE object with the given operands" do
        new_instruction = subject.cmovge(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVGE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovl" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVL object with the given operands" do
        new_instruction = subject.cmovl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovle" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVLE object with the given operands" do
        new_instruction = subject.cmovle(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVLE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovna" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNA object with the given operands" do
        new_instruction = subject.cmovna(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnae" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNAE object with the given operands" do
        new_instruction = subject.cmovnae(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNAE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnb" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNB object with the given operands" do
        new_instruction = subject.cmovnb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnbe" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNBE object with the given operands" do
        new_instruction = subject.cmovnbe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNBE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnc" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNC object with the given operands" do
        new_instruction = subject.cmovnc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovne" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNE object with the given operands" do
        new_instruction = subject.cmovne(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovng" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNG object with the given operands" do
        new_instruction = subject.cmovng(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnge" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNGE object with the given operands" do
        new_instruction = subject.cmovnge(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNGE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnl" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNL object with the given operands" do
        new_instruction = subject.cmovnl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnle" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNLE object with the given operands" do
        new_instruction = subject.cmovnle(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNLE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovno" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNO object with the given operands" do
        new_instruction = subject.cmovno(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnp" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNP object with the given operands" do
        new_instruction = subject.cmovnp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovns" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNS object with the given operands" do
        new_instruction = subject.cmovns(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovnz" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVNZ object with the given operands" do
        new_instruction = subject.cmovnz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVNZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovo" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVO object with the given operands" do
        new_instruction = subject.cmovo(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovp" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVP object with the given operands" do
        new_instruction = subject.cmovp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovpe" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVPE object with the given operands" do
        new_instruction = subject.cmovpe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVPE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovpo" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVPO object with the given operands" do
        new_instruction = subject.cmovpo(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVPO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovs" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVS object with the given operands" do
        new_instruction = subject.cmovs(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmovz" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMOVZ object with the given operands" do
        new_instruction = subject.cmovz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMOVZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmp" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMP object with the given operands" do
        new_instruction = subject.cmp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpbexadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPBEXADD object with the given operands" do
        new_instruction = subject.cmpbexadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPBEXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpbxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPBXADD object with the given operands" do
        new_instruction = subject.cmpbxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPBXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmplexadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPLEXADD object with the given operands" do
        new_instruction = subject.cmplexadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPLEXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmplxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPLXADD object with the given operands" do
        new_instruction = subject.cmplxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPLXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnbexadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNBEXADD object with the given operands" do
        new_instruction = subject.cmpnbexadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNBEXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnbxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNBXADD object with the given operands" do
        new_instruction = subject.cmpnbxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNBXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnlexadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNLEXADD object with the given operands" do
        new_instruction = subject.cmpnlexadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNLEXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnlxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNLXADD object with the given operands" do
        new_instruction = subject.cmpnlxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNLXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnoxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNOXADD object with the given operands" do
        new_instruction = subject.cmpnoxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNOXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnpxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNPXADD object with the given operands" do
        new_instruction = subject.cmpnpxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNPXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnsxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNSXADD object with the given operands" do
        new_instruction = subject.cmpnsxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNSXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpnzxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPNZXADD object with the given operands" do
        new_instruction = subject.cmpnzxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPNZXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpoxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPOXADD object with the given operands" do
        new_instruction = subject.cmpoxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPOXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmppd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPPD object with the given operands" do
        new_instruction = subject.cmppd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPPS object with the given operands" do
        new_instruction = subject.cmpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmppxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPPXADD object with the given operands" do
        new_instruction = subject.cmppxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPPXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem64(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPSD object with the given operands" do
        new_instruction = subject.cmpsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem32(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPSS object with the given operands" do
        new_instruction = subject.cmpss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpsxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPSXADD object with the given operands" do
        new_instruction = subject.cmpsxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPSXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpxchg" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPXCHG object with the given operands" do
        new_instruction = subject.cmpxchg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPXCHG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpxchg16b" do
    context "when called with 1 operand" do
      let(:operands) { [mem128(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPXCHG16B object with the given operands" do
        new_instruction = subject.cmpxchg16b(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPXCHG16B)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpxchg8b" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPXCHG8B object with the given operands" do
        new_instruction = subject.cmpxchg8b(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPXCHG8B)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cmpzxadd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CMPZXADD object with the given operands" do
        new_instruction = subject.cmpzxadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CMPZXADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#comisd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::COMISD object with the given operands" do
        new_instruction = subject.comisd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::COMISD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#comiss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::COMISS object with the given operands" do
        new_instruction = subject.comiss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::COMISS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cpuid" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CPUID object with no operands" do
        new_instruction = subject.cpuid

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CPUID)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cqo" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CQO object with no operands" do
        new_instruction = subject.cqo

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CQO)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#crc32" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CRC32 object with the given operands" do
        new_instruction = subject.crc32(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CRC32)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtdq2pd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTDQ2PD object with the given operands" do
        new_instruction = subject.cvtdq2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTDQ2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtdq2ps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTDQ2PS object with the given operands" do
        new_instruction = subject.cvtdq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTDQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtpd2dq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPD2DQ object with the given operands" do
        new_instruction = subject.cvtpd2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPD2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtpd2pi" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPD2PI object with the given operands" do
        new_instruction = subject.cvtpd2pi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPD2PI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtpd2ps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPD2PS object with the given operands" do
        new_instruction = subject.cvtpd2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPD2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtpi2pd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPI2PD object with the given operands" do
        new_instruction = subject.cvtpi2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPI2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtpi2ps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPI2PS object with the given operands" do
        new_instruction = subject.cvtpi2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPI2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtps2dq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPS2DQ object with the given operands" do
        new_instruction = subject.cvtps2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPS2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtps2pd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPS2PD object with the given operands" do
        new_instruction = subject.cvtps2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPS2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtps2pi" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTPS2PI object with the given operands" do
        new_instruction = subject.cvtps2pi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTPS2PI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtsd2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTSD2SI object with the given operands" do
        new_instruction = subject.cvtsd2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTSD2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtsd2ss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTSD2SS object with the given operands" do
        new_instruction = subject.cvtsd2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTSD2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtsi2sd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTSI2SD object with the given operands" do
        new_instruction = subject.cvtsi2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTSI2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtsi2ss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTSI2SS object with the given operands" do
        new_instruction = subject.cvtsi2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTSI2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtss2sd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTSS2SD object with the given operands" do
        new_instruction = subject.cvtss2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTSS2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvtss2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTSS2SI object with the given operands" do
        new_instruction = subject.cvtss2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTSS2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvttpd2dq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTTPD2DQ object with the given operands" do
        new_instruction = subject.cvttpd2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTTPD2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvttpd2pi" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTTPD2PI object with the given operands" do
        new_instruction = subject.cvttpd2pi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTTPD2PI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvttps2dq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTTPS2DQ object with the given operands" do
        new_instruction = subject.cvttps2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTTPS2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvttps2pi" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTTPS2PI object with the given operands" do
        new_instruction = subject.cvttps2pi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTTPS2PI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvttsd2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTTSD2SI object with the given operands" do
        new_instruction = subject.cvttsd2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTTSD2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cvttss2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::CVTTSS2SI object with the given operands" do
        new_instruction = subject.cvttss2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CVTTSS2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#cwd" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CWD object with no operands" do
        new_instruction = subject.cwd

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CWD)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#cwde" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::CWDE object with no operands" do
        new_instruction = subject.cwde

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::CWDE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#dec" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DEC object with the given operands" do
        new_instruction = subject.dec(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DEC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#div" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DIV object with the given operands" do
        new_instruction = subject.div(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DIV)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#divpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DIVPD object with the given operands" do
        new_instruction = subject.divpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DIVPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#divps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DIVPS object with the given operands" do
        new_instruction = subject.divps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DIVPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#divsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DIVSD object with the given operands" do
        new_instruction = subject.divsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DIVSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#divss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DIVSS object with the given operands" do
        new_instruction = subject.divss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DIVSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#dppd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DPPD object with the given operands" do
        new_instruction = subject.dppd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DPPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#dpps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::DPPS object with the given operands" do
        new_instruction = subject.dpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::DPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#emms" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::EMMS object with no operands" do
        new_instruction = subject.emms

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::EMMS)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#endbr64" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::ENDBR64 object with no operands" do
        new_instruction = subject.endbr64

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ENDBR64)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#extractps" do
    context "when called with 3 operands" do
      let(:operands) { [mem32(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::EXTRACTPS object with the given operands" do
        new_instruction = subject.extractps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::EXTRACTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#extrq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::EXTRQ object with the given operands" do
        new_instruction = subject.extrq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::EXTRQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), imm8(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::EXTRQ object with the given operands" do
        new_instruction = subject.extrq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::EXTRQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#femms" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::FEMMS object with no operands" do
        new_instruction = subject.femms

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::FEMMS)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#gf2p8affineinvqb" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::GF2P8AFFINEINVQB object with the given operands" do
        new_instruction = subject.gf2p8affineinvqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::GF2P8AFFINEINVQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#gf2p8affineqb" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::GF2P8AFFINEQB object with the given operands" do
        new_instruction = subject.gf2p8affineqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::GF2P8AFFINEQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#gf2p8mulb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::GF2P8MULB object with the given operands" do
        new_instruction = subject.gf2p8mulb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::GF2P8MULB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#haddpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::HADDPD object with the given operands" do
        new_instruction = subject.haddpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::HADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#haddps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::HADDPS object with the given operands" do
        new_instruction = subject.haddps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::HADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#hsubpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::HSUBPD object with the given operands" do
        new_instruction = subject.hsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::HSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#hsubps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::HSUBPS object with the given operands" do
        new_instruction = subject.hsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::HSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#idiv" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::IDIV object with the given operands" do
        new_instruction = subject.idiv(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::IDIV)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#imul" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::IMUL object with the given operands" do
        new_instruction = subject.imul(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::IMUL)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::IMUL object with the given operands" do
        new_instruction = subject.imul(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::IMUL)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), mem64(1), imm32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::IMUL object with the given operands" do
        new_instruction = subject.imul(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::IMUL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#inc" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::INC object with the given operands" do
        new_instruction = subject.inc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::INC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#insertps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem32(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::INSERTPS object with the given operands" do
        new_instruction = subject.insertps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::INSERTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#insertq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::INSERTQ object with the given operands" do
        new_instruction = subject.insertq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::INSERTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), imm8(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::INSERTQ object with the given operands" do
        new_instruction = subject.insertq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::INSERTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#int" do
    context "when called with 1 operand" do
      let(:operands) { [imm8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::INT object with the given operands" do
        new_instruction = subject.int(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::INT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#int3" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::INT3 object with no operands" do
        new_instruction = subject.int3

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::INT3)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#ja" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JA object with the given operands" do
        new_instruction = subject.ja(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jae" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JAE object with the given operands" do
        new_instruction = subject.jae(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JAE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jb" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JB object with the given operands" do
        new_instruction = subject.jb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jbe" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JBE object with the given operands" do
        new_instruction = subject.jbe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JBE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jc" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JC object with the given operands" do
        new_instruction = subject.jc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#je" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JE object with the given operands" do
        new_instruction = subject.je(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jecxz" do
    context "when called with 1 operand" do
      let(:operands) { [rel8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JECXZ object with the given operands" do
        new_instruction = subject.jecxz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JECXZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jg" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JG object with the given operands" do
        new_instruction = subject.jg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jge" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JGE object with the given operands" do
        new_instruction = subject.jge(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JGE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jl" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JL object with the given operands" do
        new_instruction = subject.jl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jle" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JLE object with the given operands" do
        new_instruction = subject.jle(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JLE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jmp" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JMP object with the given operands" do
        new_instruction = subject.jmp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JMP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jna" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNA object with the given operands" do
        new_instruction = subject.jna(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnae" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNAE object with the given operands" do
        new_instruction = subject.jnae(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNAE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnb" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNB object with the given operands" do
        new_instruction = subject.jnb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnbe" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNBE object with the given operands" do
        new_instruction = subject.jnbe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNBE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnc" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNC object with the given operands" do
        new_instruction = subject.jnc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jne" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNE object with the given operands" do
        new_instruction = subject.jne(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jng" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNG object with the given operands" do
        new_instruction = subject.jng(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnge" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNGE object with the given operands" do
        new_instruction = subject.jnge(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNGE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnl" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNL object with the given operands" do
        new_instruction = subject.jnl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnle" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNLE object with the given operands" do
        new_instruction = subject.jnle(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNLE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jno" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNO object with the given operands" do
        new_instruction = subject.jno(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnp" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNP object with the given operands" do
        new_instruction = subject.jnp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jns" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNS object with the given operands" do
        new_instruction = subject.jns(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jnz" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JNZ object with the given operands" do
        new_instruction = subject.jnz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JNZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jo" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JO object with the given operands" do
        new_instruction = subject.jo(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jp" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JP object with the given operands" do
        new_instruction = subject.jp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jpe" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JPE object with the given operands" do
        new_instruction = subject.jpe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JPE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jpo" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JPO object with the given operands" do
        new_instruction = subject.jpo(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JPO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jrcxz" do
    context "when called with 1 operand" do
      let(:operands) { [rel8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JRCXZ object with the given operands" do
        new_instruction = subject.jrcxz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JRCXZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#js" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JS object with the given operands" do
        new_instruction = subject.js(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#jz" do
    context "when called with 1 operand" do
      let(:operands) { [rel32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::JZ object with the given operands" do
        new_instruction = subject.jz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::JZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kaddb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KADDB object with the given operands" do
        new_instruction = subject.kaddb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KADDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kaddd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KADDD object with the given operands" do
        new_instruction = subject.kaddd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KADDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kaddq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KADDQ object with the given operands" do
        new_instruction = subject.kaddq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KADDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kaddw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KADDW object with the given operands" do
        new_instruction = subject.kaddw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KADDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDB object with the given operands" do
        new_instruction = subject.kandb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDD object with the given operands" do
        new_instruction = subject.kandd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandnb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDNB object with the given operands" do
        new_instruction = subject.kandnb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDNB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandnd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDND object with the given operands" do
        new_instruction = subject.kandnd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandnq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDNQ object with the given operands" do
        new_instruction = subject.kandnq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDNQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandnw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDNW object with the given operands" do
        new_instruction = subject.kandnw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDNW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDQ object with the given operands" do
        new_instruction = subject.kandq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kandw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KANDW object with the given operands" do
        new_instruction = subject.kandw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KANDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kmovb" do
    context "when called with 2 operands" do
      let(:operands) { [mem8(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KMOVB object with the given operands" do
        new_instruction = subject.kmovb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KMOVB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kmovd" do
    context "when called with 2 operands" do
      let(:operands) { [mem32(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KMOVD object with the given operands" do
        new_instruction = subject.kmovd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KMOVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kmovq" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KMOVQ object with the given operands" do
        new_instruction = subject.kmovq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KMOVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kmovw" do
    context "when called with 2 operands" do
      let(:operands) { [mem16(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KMOVW object with the given operands" do
        new_instruction = subject.kmovw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KMOVW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#knotb" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KNOTB object with the given operands" do
        new_instruction = subject.knotb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KNOTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#knotd" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KNOTD object with the given operands" do
        new_instruction = subject.knotd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KNOTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#knotq" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KNOTQ object with the given operands" do
        new_instruction = subject.knotq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KNOTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#knotw" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KNOTW object with the given operands" do
        new_instruction = subject.knotw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KNOTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#korb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORB object with the given operands" do
        new_instruction = subject.korb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kord" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORD object with the given operands" do
        new_instruction = subject.kord(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#korq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORQ object with the given operands" do
        new_instruction = subject.korq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kortestb" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORTESTB object with the given operands" do
        new_instruction = subject.kortestb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORTESTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kortestd" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORTESTD object with the given operands" do
        new_instruction = subject.kortestd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORTESTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kortestq" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORTESTQ object with the given operands" do
        new_instruction = subject.kortestq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORTESTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kortestw" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORTESTW object with the given operands" do
        new_instruction = subject.kortestw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORTESTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#korw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KORW object with the given operands" do
        new_instruction = subject.korw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KORW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftlb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTLB object with the given operands" do
        new_instruction = subject.kshiftlb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTLB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftld" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTLD object with the given operands" do
        new_instruction = subject.kshiftld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftlq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTLQ object with the given operands" do
        new_instruction = subject.kshiftlq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftlw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTLW object with the given operands" do
        new_instruction = subject.kshiftlw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftrb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTRB object with the given operands" do
        new_instruction = subject.kshiftrb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTRB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftrd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTRD object with the given operands" do
        new_instruction = subject.kshiftrd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTRD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftrq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTRQ object with the given operands" do
        new_instruction = subject.kshiftrq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTRQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kshiftrw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KSHIFTRW object with the given operands" do
        new_instruction = subject.kshiftrw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KSHIFTRW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ktestb" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KTESTB object with the given operands" do
        new_instruction = subject.ktestb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KTESTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ktestd" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KTESTD object with the given operands" do
        new_instruction = subject.ktestd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KTESTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ktestq" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KTESTQ object with the given operands" do
        new_instruction = subject.ktestq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KTESTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ktestw" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KTESTW object with the given operands" do
        new_instruction = subject.ktestw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KTESTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kunpckbw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KUNPCKBW object with the given operands" do
        new_instruction = subject.kunpckbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KUNPCKBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kunpckdq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KUNPCKDQ object with the given operands" do
        new_instruction = subject.kunpckdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KUNPCKDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kunpckwd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KUNPCKWD object with the given operands" do
        new_instruction = subject.kunpckwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KUNPCKWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxnorb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXNORB object with the given operands" do
        new_instruction = subject.kxnorb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXNORB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxnord" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXNORD object with the given operands" do
        new_instruction = subject.kxnord(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXNORD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxnorq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXNORQ object with the given operands" do
        new_instruction = subject.kxnorq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXNORQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxnorw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXNORW object with the given operands" do
        new_instruction = subject.kxnorw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXNORW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxorb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXORB object with the given operands" do
        new_instruction = subject.kxorb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXORB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxord" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXORD object with the given operands" do
        new_instruction = subject.kxord(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXORD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxorq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXORQ object with the given operands" do
        new_instruction = subject.kxorq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXORQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#kxorw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), k(1), k(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::KXORW object with the given operands" do
        new_instruction = subject.kxorw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::KXORW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#lahf" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::LAHF object with no operands" do
        new_instruction = subject.lahf

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::LAHF)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#lddqu" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::LDDQU object with the given operands" do
        new_instruction = subject.lddqu(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::LDDQU)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ldmxcsr" do
    context "when called with 1 operand" do
      let(:operands) { [mem32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::LDMXCSR object with the given operands" do
        new_instruction = subject.ldmxcsr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::LDMXCSR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ldtilecfg" do
    context "when called with 1 operand" do
      let(:operands) { [mem512(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::LDTILECFG object with the given operands" do
        new_instruction = subject.ldtilecfg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::LDTILECFG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#lea" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::LEA object with the given operands" do
        new_instruction = subject.lea(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::LEA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#lfence" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::LFENCE object with no operands" do
        new_instruction = subject.lfence

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::LFENCE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#lzcnt" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::LZCNT object with the given operands" do
        new_instruction = subject.lzcnt(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::LZCNT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#maskmovdqu" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MASKMOVDQU object with the given operands" do
        new_instruction = subject.maskmovdqu(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MASKMOVDQU)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#maskmovq" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mmx(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MASKMOVQ object with the given operands" do
        new_instruction = subject.maskmovq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MASKMOVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#maxpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MAXPD object with the given operands" do
        new_instruction = subject.maxpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MAXPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#maxps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MAXPS object with the given operands" do
        new_instruction = subject.maxps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MAXPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#maxsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MAXSD object with the given operands" do
        new_instruction = subject.maxsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MAXSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#maxss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MAXSS object with the given operands" do
        new_instruction = subject.maxss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MAXSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mcommit" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::MCOMMIT object with no operands" do
        new_instruction = subject.mcommit

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MCOMMIT)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#mfence" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::MFENCE object with no operands" do
        new_instruction = subject.mfence

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MFENCE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#minpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MINPD object with the given operands" do
        new_instruction = subject.minpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MINPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#minps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MINPS object with the given operands" do
        new_instruction = subject.minps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MINPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#minsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MINSD object with the given operands" do
        new_instruction = subject.minsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MINSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#minss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MINSS object with the given operands" do
        new_instruction = subject.minss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MINSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#monitor" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::MONITOR object with no operands" do
        new_instruction = subject.monitor

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MONITOR)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#monitorx" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::MONITORX object with no operands" do
        new_instruction = subject.monitorx

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MONITORX)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#mov" do
    context "when called with 2 operands" do
      let(:operands) { [moffset64(0), rax(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOV object with the given operands" do
        new_instruction = subject.mov(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOV)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movapd" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVAPD object with the given operands" do
        new_instruction = subject.movapd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVAPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movaps" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVAPS object with the given operands" do
        new_instruction = subject.movaps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVAPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movbe" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVBE object with the given operands" do
        new_instruction = subject.movbe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVBE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movd" do
    context "when called with 2 operands" do
      let(:operands) { [mem32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVD object with the given operands" do
        new_instruction = subject.movd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movddup" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVDDUP object with the given operands" do
        new_instruction = subject.movddup(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVDDUP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movdir64b" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVDIR64B object with the given operands" do
        new_instruction = subject.movdir64b(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVDIR64B)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movdiri" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVDIRI object with the given operands" do
        new_instruction = subject.movdiri(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVDIRI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movdq2q" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVDQ2Q object with the given operands" do
        new_instruction = subject.movdq2q(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVDQ2Q)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movdqa" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVDQA object with the given operands" do
        new_instruction = subject.movdqa(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVDQA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movdqu" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVDQU object with the given operands" do
        new_instruction = subject.movdqu(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVDQU)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movhlps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVHLPS object with the given operands" do
        new_instruction = subject.movhlps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVHLPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movhpd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVHPD object with the given operands" do
        new_instruction = subject.movhpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVHPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movhps" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVHPS object with the given operands" do
        new_instruction = subject.movhps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVHPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movlhps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVLHPS object with the given operands" do
        new_instruction = subject.movlhps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVLHPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movlpd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVLPD object with the given operands" do
        new_instruction = subject.movlpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVLPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movlps" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVLPS object with the given operands" do
        new_instruction = subject.movlps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVLPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movmskpd" do
    context "when called with 2 operands" do
      let(:operands) { [reg32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVMSKPD object with the given operands" do
        new_instruction = subject.movmskpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVMSKPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movmskps" do
    context "when called with 2 operands" do
      let(:operands) { [reg32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVMSKPS object with the given operands" do
        new_instruction = subject.movmskps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVMSKPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movntdq" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTDQ object with the given operands" do
        new_instruction = subject.movntdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movntdqa" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTDQA object with the given operands" do
        new_instruction = subject.movntdqa(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTDQA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movnti" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTI object with the given operands" do
        new_instruction = subject.movnti(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movntpd" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTPD object with the given operands" do
        new_instruction = subject.movntpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movntps" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTPS object with the given operands" do
        new_instruction = subject.movntps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movntq" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), mmx(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTQ object with the given operands" do
        new_instruction = subject.movntq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movntsd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTSD object with the given operands" do
        new_instruction = subject.movntsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movntss" do
    context "when called with 2 operands" do
      let(:operands) { [mem32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVNTSS object with the given operands" do
        new_instruction = subject.movntss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVNTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movq" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVQ object with the given operands" do
        new_instruction = subject.movq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movq2dq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mmx(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVQ2DQ object with the given operands" do
        new_instruction = subject.movq2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVQ2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movsd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVSD object with the given operands" do
        new_instruction = subject.movsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movshdup" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVSHDUP object with the given operands" do
        new_instruction = subject.movshdup(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVSHDUP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movsldup" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVSLDUP object with the given operands" do
        new_instruction = subject.movsldup(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVSLDUP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movss" do
    context "when called with 2 operands" do
      let(:operands) { [mem32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVSS object with the given operands" do
        new_instruction = subject.movss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movsx" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVSX object with the given operands" do
        new_instruction = subject.movsx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVSX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movsxd" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVSXD object with the given operands" do
        new_instruction = subject.movsxd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVSXD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movupd" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVUPD object with the given operands" do
        new_instruction = subject.movupd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVUPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movups" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVUPS object with the given operands" do
        new_instruction = subject.movups(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVUPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#movzx" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MOVZX object with the given operands" do
        new_instruction = subject.movzx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MOVZX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mpsadbw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MPSADBW object with the given operands" do
        new_instruction = subject.mpsadbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MPSADBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mul" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MUL object with the given operands" do
        new_instruction = subject.mul(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MUL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mulpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MULPD object with the given operands" do
        new_instruction = subject.mulpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MULPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mulps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MULPS object with the given operands" do
        new_instruction = subject.mulps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MULPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mulsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MULSD object with the given operands" do
        new_instruction = subject.mulsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MULSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mulss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MULSS object with the given operands" do
        new_instruction = subject.mulss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MULSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mulx" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), reg64(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::MULX object with the given operands" do
        new_instruction = subject.mulx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MULX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#mwait" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::MWAIT object with no operands" do
        new_instruction = subject.mwait

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MWAIT)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#mwaitx" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::MWAITX object with no operands" do
        new_instruction = subject.mwaitx

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::MWAITX)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#neg" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::NEG object with the given operands" do
        new_instruction = subject.neg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::NEG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#nop" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::NOP object with no operands" do
        new_instruction = subject.nop

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::NOP)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#not" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::NOT object with the given operands" do
        new_instruction = subject.not(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::NOT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#or" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::OR object with the given operands" do
        new_instruction = subject.or(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::OR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#orpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ORPD object with the given operands" do
        new_instruction = subject.orpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ORPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#orps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ORPS object with the given operands" do
        new_instruction = subject.orps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ORPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pabsb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PABSB object with the given operands" do
        new_instruction = subject.pabsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PABSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pabsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PABSD object with the given operands" do
        new_instruction = subject.pabsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PABSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pabsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PABSW object with the given operands" do
        new_instruction = subject.pabsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PABSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#packssdw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PACKSSDW object with the given operands" do
        new_instruction = subject.packssdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PACKSSDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#packsswb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PACKSSWB object with the given operands" do
        new_instruction = subject.packsswb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PACKSSWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#packusdw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PACKUSDW object with the given operands" do
        new_instruction = subject.packusdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PACKUSDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#packuswb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PACKUSWB object with the given operands" do
        new_instruction = subject.packuswb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PACKUSWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDB object with the given operands" do
        new_instruction = subject.paddb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDD object with the given operands" do
        new_instruction = subject.paddd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDQ object with the given operands" do
        new_instruction = subject.paddq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddsb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDSB object with the given operands" do
        new_instruction = subject.paddsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDSW object with the given operands" do
        new_instruction = subject.paddsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddusb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDUSB object with the given operands" do
        new_instruction = subject.paddusb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDUSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddusw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDUSW object with the given operands" do
        new_instruction = subject.paddusw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDUSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#paddw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PADDW object with the given operands" do
        new_instruction = subject.paddw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PADDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#palignr" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PALIGNR object with the given operands" do
        new_instruction = subject.palignr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PALIGNR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pand" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PAND object with the given operands" do
        new_instruction = subject.pand(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PAND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pandn" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PANDN object with the given operands" do
        new_instruction = subject.pandn(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PANDN)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pause" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::PAUSE object with no operands" do
        new_instruction = subject.pause

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PAUSE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#pavgb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PAVGB object with the given operands" do
        new_instruction = subject.pavgb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PAVGB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pavgusb" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PAVGUSB object with the given operands" do
        new_instruction = subject.pavgusb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PAVGUSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pavgw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PAVGW object with the given operands" do
        new_instruction = subject.pavgw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PAVGW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pblendvb" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm0(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PBLENDVB object with the given operands" do
        new_instruction = subject.pblendvb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PBLENDVB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pblendw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PBLENDW object with the given operands" do
        new_instruction = subject.pblendw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PBLENDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pclmulqdq" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCLMULQDQ object with the given operands" do
        new_instruction = subject.pclmulqdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCLMULQDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpeqb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPEQB object with the given operands" do
        new_instruction = subject.pcmpeqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPEQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpeqd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPEQD object with the given operands" do
        new_instruction = subject.pcmpeqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPEQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpeqq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPEQQ object with the given operands" do
        new_instruction = subject.pcmpeqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPEQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpeqw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPEQW object with the given operands" do
        new_instruction = subject.pcmpeqw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPEQW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpestri" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPESTRI object with the given operands" do
        new_instruction = subject.pcmpestri(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPESTRI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpestrm" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPESTRM object with the given operands" do
        new_instruction = subject.pcmpestrm(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPESTRM)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpgtb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPGTB object with the given operands" do
        new_instruction = subject.pcmpgtb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPGTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpgtd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPGTD object with the given operands" do
        new_instruction = subject.pcmpgtd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPGTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpgtq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPGTQ object with the given operands" do
        new_instruction = subject.pcmpgtq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPGTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpgtw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPGTW object with the given operands" do
        new_instruction = subject.pcmpgtw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPGTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpistri" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPISTRI object with the given operands" do
        new_instruction = subject.pcmpistri(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPISTRI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pcmpistrm" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PCMPISTRM object with the given operands" do
        new_instruction = subject.pcmpistrm(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PCMPISTRM)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pdep" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), reg64(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PDEP object with the given operands" do
        new_instruction = subject.pdep(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PDEP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pext" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), reg64(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PEXT object with the given operands" do
        new_instruction = subject.pext(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PEXT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pextrb" do
    context "when called with 3 operands" do
      let(:operands) { [mem8(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PEXTRB object with the given operands" do
        new_instruction = subject.pextrb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PEXTRB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pextrd" do
    context "when called with 3 operands" do
      let(:operands) { [mem32(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PEXTRD object with the given operands" do
        new_instruction = subject.pextrd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PEXTRD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pextrq" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PEXTRQ object with the given operands" do
        new_instruction = subject.pextrq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PEXTRQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pextrw" do
    context "when called with 3 operands" do
      let(:operands) { [mem16(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PEXTRW object with the given operands" do
        new_instruction = subject.pextrw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PEXTRW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pf2id" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PF2ID object with the given operands" do
        new_instruction = subject.pf2id(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PF2ID)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pf2iw" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PF2IW object with the given operands" do
        new_instruction = subject.pf2iw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PF2IW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfacc" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFACC object with the given operands" do
        new_instruction = subject.pfacc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFACC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfadd" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFADD object with the given operands" do
        new_instruction = subject.pfadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfcmpeq" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFCMPEQ object with the given operands" do
        new_instruction = subject.pfcmpeq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFCMPEQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfcmpge" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFCMPGE object with the given operands" do
        new_instruction = subject.pfcmpge(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFCMPGE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfcmpgt" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFCMPGT object with the given operands" do
        new_instruction = subject.pfcmpgt(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFCMPGT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfmax" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFMAX object with the given operands" do
        new_instruction = subject.pfmax(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFMAX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfmin" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFMIN object with the given operands" do
        new_instruction = subject.pfmin(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFMIN)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfmul" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFMUL object with the given operands" do
        new_instruction = subject.pfmul(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFMUL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfnacc" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFNACC object with the given operands" do
        new_instruction = subject.pfnacc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFNACC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfpnacc" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFPNACC object with the given operands" do
        new_instruction = subject.pfpnacc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFPNACC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfrcp" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFRCP object with the given operands" do
        new_instruction = subject.pfrcp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFRCP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfrcpit1" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFRCPIT1 object with the given operands" do
        new_instruction = subject.pfrcpit1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFRCPIT1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfrcpit2" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFRCPIT2 object with the given operands" do
        new_instruction = subject.pfrcpit2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFRCPIT2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfrsqit1" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFRSQIT1 object with the given operands" do
        new_instruction = subject.pfrsqit1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFRSQIT1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfrsqrt" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFRSQRT object with the given operands" do
        new_instruction = subject.pfrsqrt(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFRSQRT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfsub" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFSUB object with the given operands" do
        new_instruction = subject.pfsub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFSUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pfsubr" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PFSUBR object with the given operands" do
        new_instruction = subject.pfsubr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PFSUBR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#phaddd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PHADDD object with the given operands" do
        new_instruction = subject.phaddd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PHADDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#phaddsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PHADDSW object with the given operands" do
        new_instruction = subject.phaddsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PHADDSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#phaddw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PHADDW object with the given operands" do
        new_instruction = subject.phaddw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PHADDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#phminposuw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PHMINPOSUW object with the given operands" do
        new_instruction = subject.phminposuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PHMINPOSUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#phsubd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PHSUBD object with the given operands" do
        new_instruction = subject.phsubd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PHSUBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#phsubsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PHSUBSW object with the given operands" do
        new_instruction = subject.phsubsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PHSUBSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#phsubw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PHSUBW object with the given operands" do
        new_instruction = subject.phsubw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PHSUBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pi2fd" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PI2FD object with the given operands" do
        new_instruction = subject.pi2fd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PI2FD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pi2fw" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PI2FW object with the given operands" do
        new_instruction = subject.pi2fw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PI2FW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pinsrb" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem8(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PINSRB object with the given operands" do
        new_instruction = subject.pinsrb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PINSRB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pinsrd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem32(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PINSRD object with the given operands" do
        new_instruction = subject.pinsrd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PINSRD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pinsrq" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem64(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PINSRQ object with the given operands" do
        new_instruction = subject.pinsrq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PINSRQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pinsrw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem16(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PINSRW object with the given operands" do
        new_instruction = subject.pinsrw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PINSRW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaddubsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMADDUBSW object with the given operands" do
        new_instruction = subject.pmaddubsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMADDUBSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaddwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMADDWD object with the given operands" do
        new_instruction = subject.pmaddwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMADDWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaxsb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMAXSB object with the given operands" do
        new_instruction = subject.pmaxsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMAXSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaxsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMAXSD object with the given operands" do
        new_instruction = subject.pmaxsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMAXSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaxsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMAXSW object with the given operands" do
        new_instruction = subject.pmaxsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMAXSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaxub" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMAXUB object with the given operands" do
        new_instruction = subject.pmaxub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMAXUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaxud" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMAXUD object with the given operands" do
        new_instruction = subject.pmaxud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMAXUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmaxuw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMAXUW object with the given operands" do
        new_instruction = subject.pmaxuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMAXUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pminsb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMINSB object with the given operands" do
        new_instruction = subject.pminsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMINSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pminsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMINSD object with the given operands" do
        new_instruction = subject.pminsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMINSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pminsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMINSW object with the given operands" do
        new_instruction = subject.pminsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMINSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pminub" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMINUB object with the given operands" do
        new_instruction = subject.pminub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMINUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pminud" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMINUD object with the given operands" do
        new_instruction = subject.pminud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMINUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pminuw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMINUW object with the given operands" do
        new_instruction = subject.pminuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMINUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovmskb" do
    context "when called with 2 operands" do
      let(:operands) { [reg32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVMSKB object with the given operands" do
        new_instruction = subject.pmovmskb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVMSKB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovsxbd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVSXBD object with the given operands" do
        new_instruction = subject.pmovsxbd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVSXBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovsxbq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVSXBQ object with the given operands" do
        new_instruction = subject.pmovsxbq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVSXBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovsxbw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVSXBW object with the given operands" do
        new_instruction = subject.pmovsxbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVSXBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovsxdq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVSXDQ object with the given operands" do
        new_instruction = subject.pmovsxdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVSXDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovsxwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVSXWD object with the given operands" do
        new_instruction = subject.pmovsxwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVSXWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovsxwq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVSXWQ object with the given operands" do
        new_instruction = subject.pmovsxwq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVSXWQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovzxbd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVZXBD object with the given operands" do
        new_instruction = subject.pmovzxbd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVZXBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovzxbq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVZXBQ object with the given operands" do
        new_instruction = subject.pmovzxbq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVZXBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovzxbw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVZXBW object with the given operands" do
        new_instruction = subject.pmovzxbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVZXBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovzxdq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVZXDQ object with the given operands" do
        new_instruction = subject.pmovzxdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVZXDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovzxwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVZXWD object with the given operands" do
        new_instruction = subject.pmovzxwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVZXWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmovzxwq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMOVZXWQ object with the given operands" do
        new_instruction = subject.pmovzxwq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMOVZXWQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmuldq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULDQ object with the given operands" do
        new_instruction = subject.pmuldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmulhrsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULHRSW object with the given operands" do
        new_instruction = subject.pmulhrsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULHRSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmulhrw" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULHRW object with the given operands" do
        new_instruction = subject.pmulhrw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULHRW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmulhuw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULHUW object with the given operands" do
        new_instruction = subject.pmulhuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULHUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmulhw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULHW object with the given operands" do
        new_instruction = subject.pmulhw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULHW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmulld" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULLD object with the given operands" do
        new_instruction = subject.pmulld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmullw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULLW object with the given operands" do
        new_instruction = subject.pmullw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pmuludq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PMULUDQ object with the given operands" do
        new_instruction = subject.pmuludq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PMULUDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pop" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::POP object with the given operands" do
        new_instruction = subject.pop(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::POP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#popcnt" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::POPCNT object with the given operands" do
        new_instruction = subject.popcnt(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::POPCNT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#por" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::POR object with the given operands" do
        new_instruction = subject.por(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::POR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetch" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCH object with the given operands" do
        new_instruction = subject.prefetch(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetchit0" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHIT0 object with the given operands" do
        new_instruction = subject.prefetchit0(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHIT0)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetchit1" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHIT1 object with the given operands" do
        new_instruction = subject.prefetchit1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHIT1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetchnta" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHNTA object with the given operands" do
        new_instruction = subject.prefetchnta(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHNTA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetcht0" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHT0 object with the given operands" do
        new_instruction = subject.prefetcht0(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHT0)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetcht1" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHT1 object with the given operands" do
        new_instruction = subject.prefetcht1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHT1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetcht2" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHT2 object with the given operands" do
        new_instruction = subject.prefetcht2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHT2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetchw" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHW object with the given operands" do
        new_instruction = subject.prefetchw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#prefetchwt1" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PREFETCHWT1 object with the given operands" do
        new_instruction = subject.prefetchwt1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PREFETCHWT1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psadbw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSADBW object with the given operands" do
        new_instruction = subject.psadbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSADBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pshufb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSHUFB object with the given operands" do
        new_instruction = subject.pshufb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSHUFB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pshufd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSHUFD object with the given operands" do
        new_instruction = subject.pshufd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSHUFD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pshufhw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSHUFHW object with the given operands" do
        new_instruction = subject.pshufhw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSHUFHW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pshuflw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSHUFLW object with the given operands" do
        new_instruction = subject.pshuflw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSHUFLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pshufw" do
    context "when called with 3 operands" do
      let(:operands) { [mmx(0), mem64(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSHUFW object with the given operands" do
        new_instruction = subject.pshufw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSHUFW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psignb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSIGNB object with the given operands" do
        new_instruction = subject.psignb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSIGNB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psignd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSIGND object with the given operands" do
        new_instruction = subject.psignd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSIGND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psignw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSIGNW object with the given operands" do
        new_instruction = subject.psignw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSIGNW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pslld" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSLLD object with the given operands" do
        new_instruction = subject.pslld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSLLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pslldq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), imm8(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSLLDQ object with the given operands" do
        new_instruction = subject.pslldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSLLDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psllq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSLLQ object with the given operands" do
        new_instruction = subject.psllq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSLLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psllw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSLLW object with the given operands" do
        new_instruction = subject.psllw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSLLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psrad" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSRAD object with the given operands" do
        new_instruction = subject.psrad(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSRAD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psraw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSRAW object with the given operands" do
        new_instruction = subject.psraw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSRAW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psrld" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSRLD object with the given operands" do
        new_instruction = subject.psrld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSRLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psrldq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), imm8(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSRLDQ object with the given operands" do
        new_instruction = subject.psrldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSRLDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psrlq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSRLQ object with the given operands" do
        new_instruction = subject.psrlq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSRLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psrlw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSRLW object with the given operands" do
        new_instruction = subject.psrlw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSRLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBB object with the given operands" do
        new_instruction = subject.psubb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBD object with the given operands" do
        new_instruction = subject.psubd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBQ object with the given operands" do
        new_instruction = subject.psubq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubsb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBSB object with the given operands" do
        new_instruction = subject.psubsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubsw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBSW object with the given operands" do
        new_instruction = subject.psubsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubusb" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBUSB object with the given operands" do
        new_instruction = subject.psubusb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBUSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubusw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBUSW object with the given operands" do
        new_instruction = subject.psubusw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBUSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#psubw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSUBW object with the given operands" do
        new_instruction = subject.psubw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSUBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pswapd" do
    context "when called with 2 operands" do
      let(:operands) { [mmx(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PSWAPD object with the given operands" do
        new_instruction = subject.pswapd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PSWAPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ptest" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PTEST object with the given operands" do
        new_instruction = subject.ptest(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PTEST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpckhbw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKHBW object with the given operands" do
        new_instruction = subject.punpckhbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKHBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpckhdq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKHDQ object with the given operands" do
        new_instruction = subject.punpckhdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKHDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpckhqdq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKHQDQ object with the given operands" do
        new_instruction = subject.punpckhqdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKHQDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpckhwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKHWD object with the given operands" do
        new_instruction = subject.punpckhwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKHWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpcklbw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKLBW object with the given operands" do
        new_instruction = subject.punpcklbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKLBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpckldq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKLDQ object with the given operands" do
        new_instruction = subject.punpckldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKLDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpcklqdq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKLQDQ object with the given operands" do
        new_instruction = subject.punpcklqdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKLQDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#punpcklwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUNPCKLWD object with the given operands" do
        new_instruction = subject.punpcklwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUNPCKLWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#push" do
    context "when called with 1 operand" do
      let(:operands) { [mem64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PUSH object with the given operands" do
        new_instruction = subject.push(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PUSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#pxor" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::PXOR object with the given operands" do
        new_instruction = subject.pxor(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::PXOR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rcl" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RCL object with the given operands" do
        new_instruction = subject.rcl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RCL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rcpps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RCPPS object with the given operands" do
        new_instruction = subject.rcpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RCPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rcpss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RCPSS object with the given operands" do
        new_instruction = subject.rcpss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RCPSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rcr" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RCR object with the given operands" do
        new_instruction = subject.rcr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RCR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rdfsbase" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RDFSBASE object with the given operands" do
        new_instruction = subject.rdfsbase(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDFSBASE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rdgsbase" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RDGSBASE object with the given operands" do
        new_instruction = subject.rdgsbase(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDGSBASE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rdpid" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RDPID object with the given operands" do
        new_instruction = subject.rdpid(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDPID)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rdpmc" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::RDPMC object with no operands" do
        new_instruction = subject.rdpmc

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDPMC)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#rdpru" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::RDPRU object with no operands" do
        new_instruction = subject.rdpru

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDPRU)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#rdrand" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RDRAND object with the given operands" do
        new_instruction = subject.rdrand(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDRAND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rdseed" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RDSEED object with the given operands" do
        new_instruction = subject.rdseed(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDSEED)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rdtsc" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::RDTSC object with no operands" do
        new_instruction = subject.rdtsc

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDTSC)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#rdtscp" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::RDTSCP object with no operands" do
        new_instruction = subject.rdtscp

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RDTSCP)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#ret" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::RET object with no operands" do
        new_instruction = subject.ret

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RET)
        expect(new_instruction.operands).to be_empty
      end
    end

    context "when called with 1 operand" do
      let(:operands) { [imm16(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RET object with the given operands" do
        new_instruction = subject.ret(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RET)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rol" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ROL object with the given operands" do
        new_instruction = subject.rol(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ROL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ror" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ROR object with the given operands" do
        new_instruction = subject.ror(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ROR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rorx" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), mem64(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RORX object with the given operands" do
        new_instruction = subject.rorx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RORX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#roundpd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ROUNDPD object with the given operands" do
        new_instruction = subject.roundpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ROUNDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#roundps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ROUNDPS object with the given operands" do
        new_instruction = subject.roundps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ROUNDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#roundsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem64(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ROUNDSD object with the given operands" do
        new_instruction = subject.roundsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ROUNDSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#roundss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem32(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::ROUNDSS object with the given operands" do
        new_instruction = subject.roundss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::ROUNDSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rsqrtps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RSQRTPS object with the given operands" do
        new_instruction = subject.rsqrtps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RSQRTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#rsqrtss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::RSQRTSS object with the given operands" do
        new_instruction = subject.rsqrtss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::RSQRTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sahf" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::SAHF object with no operands" do
        new_instruction = subject.sahf

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SAHF)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#sal" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SAL object with the given operands" do
        new_instruction = subject.sal(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SAL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sar" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SAR object with the given operands" do
        new_instruction = subject.sar(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SAR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sarx" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), mem64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SARX object with the given operands" do
        new_instruction = subject.sarx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SARX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sbb" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SBB object with the given operands" do
        new_instruction = subject.sbb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SBB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#serialize" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::SERIALIZE object with no operands" do
        new_instruction = subject.serialize

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SERIALIZE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#seta" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETA object with the given operands" do
        new_instruction = subject.seta(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setae" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETAE object with the given operands" do
        new_instruction = subject.setae(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETAE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setb" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETB object with the given operands" do
        new_instruction = subject.setb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setbe" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETBE object with the given operands" do
        new_instruction = subject.setbe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETBE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setc" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETC object with the given operands" do
        new_instruction = subject.setc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sete" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETE object with the given operands" do
        new_instruction = subject.sete(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setg" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETG object with the given operands" do
        new_instruction = subject.setg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setge" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETGE object with the given operands" do
        new_instruction = subject.setge(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETGE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setl" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETL object with the given operands" do
        new_instruction = subject.setl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setle" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETLE object with the given operands" do
        new_instruction = subject.setle(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETLE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setna" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNA object with the given operands" do
        new_instruction = subject.setna(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnae" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNAE object with the given operands" do
        new_instruction = subject.setnae(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNAE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnb" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNB object with the given operands" do
        new_instruction = subject.setnb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnbe" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNBE object with the given operands" do
        new_instruction = subject.setnbe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNBE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnc" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNC object with the given operands" do
        new_instruction = subject.setnc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setne" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNE object with the given operands" do
        new_instruction = subject.setne(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setng" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNG object with the given operands" do
        new_instruction = subject.setng(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnge" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNGE object with the given operands" do
        new_instruction = subject.setnge(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNGE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnl" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNL object with the given operands" do
        new_instruction = subject.setnl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnle" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNLE object with the given operands" do
        new_instruction = subject.setnle(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNLE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setno" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNO object with the given operands" do
        new_instruction = subject.setno(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnp" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNP object with the given operands" do
        new_instruction = subject.setnp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setns" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNS object with the given operands" do
        new_instruction = subject.setns(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setnz" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETNZ object with the given operands" do
        new_instruction = subject.setnz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETNZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#seto" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETO object with the given operands" do
        new_instruction = subject.seto(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setp" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETP object with the given operands" do
        new_instruction = subject.setp(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setpe" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETPE object with the given operands" do
        new_instruction = subject.setpe(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETPE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setpo" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETPO object with the given operands" do
        new_instruction = subject.setpo(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETPO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sets" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETS object with the given operands" do
        new_instruction = subject.sets(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#setz" do
    context "when called with 1 operand" do
      let(:operands) { [mem8(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SETZ object with the given operands" do
        new_instruction = subject.setz(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SETZ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sfence" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::SFENCE object with no operands" do
        new_instruction = subject.sfence

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SFENCE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#sha1msg1" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHA1MSG1 object with the given operands" do
        new_instruction = subject.sha1msg1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHA1MSG1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sha1msg2" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHA1MSG2 object with the given operands" do
        new_instruction = subject.sha1msg2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHA1MSG2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sha1nexte" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHA1NEXTE object with the given operands" do
        new_instruction = subject.sha1nexte(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHA1NEXTE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sha1rnds4" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHA1RNDS4 object with the given operands" do
        new_instruction = subject.sha1rnds4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHA1RNDS4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sha256msg1" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHA256MSG1 object with the given operands" do
        new_instruction = subject.sha256msg1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHA256MSG1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sha256msg2" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHA256MSG2 object with the given operands" do
        new_instruction = subject.sha256msg2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHA256MSG2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sha256rnds2" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm0(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHA256RNDS2 object with the given operands" do
        new_instruction = subject.sha256rnds2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHA256RNDS2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shl" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHL object with the given operands" do
        new_instruction = subject.shl(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shld" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), cl(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHLD object with the given operands" do
        new_instruction = subject.shld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shlx" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), mem64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHLX object with the given operands" do
        new_instruction = subject.shlx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHLX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shr" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), cl(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHR object with the given operands" do
        new_instruction = subject.shr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shrd" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), reg64(1), cl(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHRD object with the given operands" do
        new_instruction = subject.shrd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHRD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shrx" do
    context "when called with 3 operands" do
      let(:operands) { [reg64(0), mem64(1), reg64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHRX object with the given operands" do
        new_instruction = subject.shrx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHRX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shufpd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHUFPD object with the given operands" do
        new_instruction = subject.shufpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHUFPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#shufps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SHUFPS object with the given operands" do
        new_instruction = subject.shufps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SHUFPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sqrtpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SQRTPD object with the given operands" do
        new_instruction = subject.sqrtpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SQRTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sqrtps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SQRTPS object with the given operands" do
        new_instruction = subject.sqrtps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SQRTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sqrtsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SQRTSD object with the given operands" do
        new_instruction = subject.sqrtsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SQRTSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sqrtss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SQRTSS object with the given operands" do
        new_instruction = subject.sqrtss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SQRTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#stc" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::STC object with no operands" do
        new_instruction = subject.stc

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::STC)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#std" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::STD object with no operands" do
        new_instruction = subject.std

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::STD)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#stmxcsr" do
    context "when called with 1 operand" do
      let(:operands) { [mem32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::STMXCSR object with the given operands" do
        new_instruction = subject.stmxcsr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::STMXCSR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sttilecfg" do
    context "when called with 1 operand" do
      let(:operands) { [mem512(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::STTILECFG object with the given operands" do
        new_instruction = subject.sttilecfg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::STTILECFG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#sub" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SUB object with the given operands" do
        new_instruction = subject.sub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#subpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SUBPD object with the given operands" do
        new_instruction = subject.subpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#subps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SUBPS object with the given operands" do
        new_instruction = subject.subps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#subsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SUBSD object with the given operands" do
        new_instruction = subject.subsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SUBSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#subss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::SUBSS object with the given operands" do
        new_instruction = subject.subss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SUBSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#syscall" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::SYSCALL object with no operands" do
        new_instruction = subject.syscall

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::SYSCALL)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#t1mskc" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::T1MSKC object with the given operands" do
        new_instruction = subject.t1mskc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::T1MSKC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tcmmimfp16ps" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TCMMIMFP16PS object with the given operands" do
        new_instruction = subject.tcmmimfp16ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TCMMIMFP16PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tcmmrlfp16ps" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TCMMRLFP16PS object with the given operands" do
        new_instruction = subject.tcmmrlfp16ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TCMMRLFP16PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tdpbf16ps" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TDPBF16PS object with the given operands" do
        new_instruction = subject.tdpbf16ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TDPBF16PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tdpbssd" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TDPBSSD object with the given operands" do
        new_instruction = subject.tdpbssd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TDPBSSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tdpbsud" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TDPBSUD object with the given operands" do
        new_instruction = subject.tdpbsud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TDPBSUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tdpbusd" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TDPBUSD object with the given operands" do
        new_instruction = subject.tdpbusd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TDPBUSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tdpbuud" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TDPBUUD object with the given operands" do
        new_instruction = subject.tdpbuud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TDPBUUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tdpfp16ps" do
    context "when called with 3 operands" do
      let(:operands) { [tmm(0), tmm(1), tmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TDPFP16PS object with the given operands" do
        new_instruction = subject.tdpfp16ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TDPFP16PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#test" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TEST object with the given operands" do
        new_instruction = subject.test(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TEST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tileloadd" do
    context "when called with 2 operands" do
      let(:operands) { [tmm(0), sibmem(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TILELOADD object with the given operands" do
        new_instruction = subject.tileloadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TILELOADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tileloaddt1" do
    context "when called with 2 operands" do
      let(:operands) { [tmm(0), sibmem(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TILELOADDT1 object with the given operands" do
        new_instruction = subject.tileloaddt1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TILELOADDT1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tilerelease" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::TILERELEASE object with no operands" do
        new_instruction = subject.tilerelease

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TILERELEASE)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#tilestored" do
    context "when called with 2 operands" do
      let(:operands) { [sibmem(0), tmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TILESTORED object with the given operands" do
        new_instruction = subject.tilestored(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TILESTORED)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tilezero" do
    context "when called with 1 operand" do
      let(:operands) { [tmm(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TILEZERO object with the given operands" do
        new_instruction = subject.tilezero(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TILEZERO)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tpause" do
    context "when called with 1 operand" do
      let(:operands) { [reg32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TPAUSE object with the given operands" do
        new_instruction = subject.tpause(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TPAUSE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tzcnt" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TZCNT object with the given operands" do
        new_instruction = subject.tzcnt(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TZCNT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#tzmsk" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::TZMSK object with the given operands" do
        new_instruction = subject.tzmsk(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::TZMSK)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ucomisd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UCOMISD object with the given operands" do
        new_instruction = subject.ucomisd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UCOMISD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ucomiss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UCOMISS object with the given operands" do
        new_instruction = subject.ucomiss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UCOMISS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#ud2" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::UD2 object with no operands" do
        new_instruction = subject.ud2

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UD2)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#umonitor" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UMONITOR object with the given operands" do
        new_instruction = subject.umonitor(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UMONITOR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#umwait" do
    context "when called with 1 operand" do
      let(:operands) { [reg32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UMWAIT object with the given operands" do
        new_instruction = subject.umwait(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UMWAIT)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#unpckhpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UNPCKHPD object with the given operands" do
        new_instruction = subject.unpckhpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UNPCKHPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#unpckhps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UNPCKHPS object with the given operands" do
        new_instruction = subject.unpckhps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UNPCKHPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#unpcklpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UNPCKLPD object with the given operands" do
        new_instruction = subject.unpcklpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UNPCKLPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#unpcklps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::UNPCKLPS object with the given operands" do
        new_instruction = subject.unpcklps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::UNPCKLPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDPD object with the given operands" do
        new_instruction = subject.vaddpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDPD object with the given operands" do
        new_instruction = subject.vaddpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDPH object with the given operands" do
        new_instruction = subject.vaddph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDPH object with the given operands" do
        new_instruction = subject.vaddph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDPS object with the given operands" do
        new_instruction = subject.vaddps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDPS object with the given operands" do
        new_instruction = subject.vaddps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSD object with the given operands" do
        new_instruction = subject.vaddsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSD object with the given operands" do
        new_instruction = subject.vaddsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSH object with the given operands" do
        new_instruction = subject.vaddsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSH object with the given operands" do
        new_instruction = subject.vaddsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSS object with the given operands" do
        new_instruction = subject.vaddss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSS object with the given operands" do
        new_instruction = subject.vaddss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddsubpd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSUBPD object with the given operands" do
        new_instruction = subject.vaddsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaddsubps" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VADDSUBPS object with the given operands" do
        new_instruction = subject.vaddsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VADDSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaesdec" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VAESDEC object with the given operands" do
        new_instruction = subject.vaesdec(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VAESDEC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaesdeclast" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VAESDECLAST object with the given operands" do
        new_instruction = subject.vaesdeclast(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VAESDECLAST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaesenc" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VAESENC object with the given operands" do
        new_instruction = subject.vaesenc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VAESENC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaesenclast" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VAESENCLAST object with the given operands" do
        new_instruction = subject.vaesenclast(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VAESENCLAST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaesimc" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VAESIMC object with the given operands" do
        new_instruction = subject.vaesimc(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VAESIMC)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vaeskeygenassist" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VAESKEYGENASSIST object with the given operands" do
        new_instruction = subject.vaeskeygenassist(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VAESKEYGENASSIST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#valignd" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VALIGND object with the given operands" do
        new_instruction = subject.valignd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VALIGND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#valignq" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VALIGNQ object with the given operands" do
        new_instruction = subject.valignq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VALIGNQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vandnpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VANDNPD object with the given operands" do
        new_instruction = subject.vandnpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VANDNPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vandnps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VANDNPS object with the given operands" do
        new_instruction = subject.vandnps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VANDNPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vandpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VANDPD object with the given operands" do
        new_instruction = subject.vandpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VANDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vandps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VANDPS object with the given operands" do
        new_instruction = subject.vandps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VANDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbcstnebf162ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBCSTNEBF162PS object with the given operands" do
        new_instruction = subject.vbcstnebf162ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBCSTNEBF162PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbcstnesh2ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBCSTNESH2PS object with the given operands" do
        new_instruction = subject.vbcstnesh2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBCSTNESH2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vblendmpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBLENDMPD object with the given operands" do
        new_instruction = subject.vblendmpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBLENDMPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vblendmps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBLENDMPS object with the given operands" do
        new_instruction = subject.vblendmps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBLENDMPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vblendpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBLENDPD object with the given operands" do
        new_instruction = subject.vblendpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBLENDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vblendps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBLENDPS object with the given operands" do
        new_instruction = subject.vblendps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBLENDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vblendvpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBLENDVPD object with the given operands" do
        new_instruction = subject.vblendvpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBLENDVPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vblendvps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBLENDVPS object with the given operands" do
        new_instruction = subject.vblendvps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBLENDVPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastf128" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTF128 object with the given operands" do
        new_instruction = subject.vbroadcastf128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTF128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastf32x2" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTF32X2 object with the given operands" do
        new_instruction = subject.vbroadcastf32x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTF32X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastf32x4" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTF32X4 object with the given operands" do
        new_instruction = subject.vbroadcastf32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTF32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastf32x8" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTF32X8 object with the given operands" do
        new_instruction = subject.vbroadcastf32x8(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTF32X8)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastf64x2" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTF64X2 object with the given operands" do
        new_instruction = subject.vbroadcastf64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTF64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastf64x4" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTF64X4 object with the given operands" do
        new_instruction = subject.vbroadcastf64x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTF64X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcasti128" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTI128 object with the given operands" do
        new_instruction = subject.vbroadcasti128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTI128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcasti32x2" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTI32X2 object with the given operands" do
        new_instruction = subject.vbroadcasti32x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTI32X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcasti32x4" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTI32X4 object with the given operands" do
        new_instruction = subject.vbroadcasti32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTI32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcasti32x8" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTI32X8 object with the given operands" do
        new_instruction = subject.vbroadcasti32x8(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTI32X8)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcasti64x2" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTI64X2 object with the given operands" do
        new_instruction = subject.vbroadcasti64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTI64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcasti64x4" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTI64X4 object with the given operands" do
        new_instruction = subject.vbroadcasti64x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTI64X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastsd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTSD object with the given operands" do
        new_instruction = subject.vbroadcastsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vbroadcastss" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VBROADCASTSS object with the given operands" do
        new_instruction = subject.vbroadcastss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VBROADCASTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcmppd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPPD object with the given operands" do
        new_instruction = subject.vcmppd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPPD object with the given operands" do
        new_instruction = subject.vcmppd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcmpph" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPPH object with the given operands" do
        new_instruction = subject.vcmpph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPPH object with the given operands" do
        new_instruction = subject.vcmpph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcmpps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPPS object with the given operands" do
        new_instruction = subject.vcmpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPPS object with the given operands" do
        new_instruction = subject.vcmpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcmpsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPSD object with the given operands" do
        new_instruction = subject.vcmpsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [k(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPSD object with the given operands" do
        new_instruction = subject.vcmpsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcmpsh" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), xmm(1), mem16(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPSH object with the given operands" do
        new_instruction = subject.vcmpsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [k(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPSH object with the given operands" do
        new_instruction = subject.vcmpsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcmpss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPSS object with the given operands" do
        new_instruction = subject.vcmpss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [k(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCMPSS object with the given operands" do
        new_instruction = subject.vcmpss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCMPSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcomisd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMISD object with the given operands" do
        new_instruction = subject.vcomisd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMISD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMISD object with the given operands" do
        new_instruction = subject.vcomisd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMISD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcomish" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMISH object with the given operands" do
        new_instruction = subject.vcomish(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMISH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMISH object with the given operands" do
        new_instruction = subject.vcomish(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMISH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcomiss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMISS object with the given operands" do
        new_instruction = subject.vcomiss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMISS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMISS object with the given operands" do
        new_instruction = subject.vcomiss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMISS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcompresspd" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMPRESSPD object with the given operands" do
        new_instruction = subject.vcompresspd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMPRESSPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcompressps" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCOMPRESSPS object with the given operands" do
        new_instruction = subject.vcompressps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCOMPRESSPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtdq2pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTDQ2PD object with the given operands" do
        new_instruction = subject.vcvtdq2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTDQ2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtdq2ph" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTDQ2PH object with the given operands" do
        new_instruction = subject.vcvtdq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTDQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTDQ2PH object with the given operands" do
        new_instruction = subject.vcvtdq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTDQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtdq2ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTDQ2PS object with the given operands" do
        new_instruction = subject.vcvtdq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTDQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTDQ2PS object with the given operands" do
        new_instruction = subject.vcvtdq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTDQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtne2ps2bf16" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTNE2PS2BF16 object with the given operands" do
        new_instruction = subject.vcvtne2ps2bf16(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTNE2PS2BF16)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtneebf162ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTNEEBF162PS object with the given operands" do
        new_instruction = subject.vcvtneebf162ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTNEEBF162PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtneeph2ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTNEEPH2PS object with the given operands" do
        new_instruction = subject.vcvtneeph2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTNEEPH2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtneobf162ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTNEOBF162PS object with the given operands" do
        new_instruction = subject.vcvtneobf162ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTNEOBF162PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtneoph2ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTNEOPH2PS object with the given operands" do
        new_instruction = subject.vcvtneoph2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTNEOPH2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtneps2bf16" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTNEPS2BF16 object with the given operands" do
        new_instruction = subject.vcvtneps2bf16(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTNEPS2BF16)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtpd2dq" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2DQ object with the given operands" do
        new_instruction = subject.vcvtpd2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2DQ object with the given operands" do
        new_instruction = subject.vcvtpd2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtpd2ph" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2PH object with the given operands" do
        new_instruction = subject.vcvtpd2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2PH object with the given operands" do
        new_instruction = subject.vcvtpd2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtpd2ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2PS object with the given operands" do
        new_instruction = subject.vcvtpd2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2PS object with the given operands" do
        new_instruction = subject.vcvtpd2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtpd2qq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2QQ object with the given operands" do
        new_instruction = subject.vcvtpd2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2QQ object with the given operands" do
        new_instruction = subject.vcvtpd2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtpd2udq" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2UDQ object with the given operands" do
        new_instruction = subject.vcvtpd2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2UDQ object with the given operands" do
        new_instruction = subject.vcvtpd2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtpd2uqq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2UQQ object with the given operands" do
        new_instruction = subject.vcvtpd2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPD2UQQ object with the given operands" do
        new_instruction = subject.vcvtpd2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPD2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2dq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2DQ object with the given operands" do
        new_instruction = subject.vcvtph2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2DQ object with the given operands" do
        new_instruction = subject.vcvtph2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2PD object with the given operands" do
        new_instruction = subject.vcvtph2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2PD object with the given operands" do
        new_instruction = subject.vcvtph2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2PS object with the given operands" do
        new_instruction = subject.vcvtph2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2PS object with the given operands" do
        new_instruction = subject.vcvtph2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2psx" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2PSX object with the given operands" do
        new_instruction = subject.vcvtph2psx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2PSX)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2PSX object with the given operands" do
        new_instruction = subject.vcvtph2psx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2PSX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2qq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2QQ object with the given operands" do
        new_instruction = subject.vcvtph2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2QQ object with the given operands" do
        new_instruction = subject.vcvtph2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2udq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2UDQ object with the given operands" do
        new_instruction = subject.vcvtph2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2UDQ object with the given operands" do
        new_instruction = subject.vcvtph2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2uqq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2UQQ object with the given operands" do
        new_instruction = subject.vcvtph2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2UQQ object with the given operands" do
        new_instruction = subject.vcvtph2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2uw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2UW object with the given operands" do
        new_instruction = subject.vcvtph2uw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2UW)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2UW object with the given operands" do
        new_instruction = subject.vcvtph2uw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2UW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtph2w" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2W object with the given operands" do
        new_instruction = subject.vcvtph2w(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2W)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPH2W object with the given operands" do
        new_instruction = subject.vcvtph2w(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPH2W)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtps2dq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2DQ object with the given operands" do
        new_instruction = subject.vcvtps2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2DQ object with the given operands" do
        new_instruction = subject.vcvtps2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtps2pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2PD object with the given operands" do
        new_instruction = subject.vcvtps2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2PD object with the given operands" do
        new_instruction = subject.vcvtps2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtps2ph" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2PH object with the given operands" do
        new_instruction = subject.vcvtps2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [ymm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2PH object with the given operands" do
        new_instruction = subject.vcvtps2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtps2phx" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2PHX object with the given operands" do
        new_instruction = subject.vcvtps2phx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2PHX)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2PHX object with the given operands" do
        new_instruction = subject.vcvtps2phx(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2PHX)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtps2qq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2QQ object with the given operands" do
        new_instruction = subject.vcvtps2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2QQ object with the given operands" do
        new_instruction = subject.vcvtps2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtps2udq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2UDQ object with the given operands" do
        new_instruction = subject.vcvtps2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2UDQ object with the given operands" do
        new_instruction = subject.vcvtps2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtps2uqq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2UQQ object with the given operands" do
        new_instruction = subject.vcvtps2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTPS2UQQ object with the given operands" do
        new_instruction = subject.vcvtps2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTPS2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtqq2pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTQQ2PD object with the given operands" do
        new_instruction = subject.vcvtqq2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTQQ2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTQQ2PD object with the given operands" do
        new_instruction = subject.vcvtqq2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTQQ2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtqq2ph" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTQQ2PH object with the given operands" do
        new_instruction = subject.vcvtqq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTQQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTQQ2PH object with the given operands" do
        new_instruction = subject.vcvtqq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTQQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtqq2ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTQQ2PS object with the given operands" do
        new_instruction = subject.vcvtqq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTQQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTQQ2PS object with the given operands" do
        new_instruction = subject.vcvtqq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTQQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsd2sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2SH object with the given operands" do
        new_instruction = subject.vcvtsd2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2SH object with the given operands" do
        new_instruction = subject.vcvtsd2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsd2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2SI object with the given operands" do
        new_instruction = subject.vcvtsd2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2SI object with the given operands" do
        new_instruction = subject.vcvtsd2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsd2ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2SS object with the given operands" do
        new_instruction = subject.vcvtsd2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2SS object with the given operands" do
        new_instruction = subject.vcvtsd2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsd2usi" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2USI object with the given operands" do
        new_instruction = subject.vcvtsd2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSD2USI object with the given operands" do
        new_instruction = subject.vcvtsd2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSD2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsh2sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2SD object with the given operands" do
        new_instruction = subject.vcvtsh2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2SD object with the given operands" do
        new_instruction = subject.vcvtsh2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsh2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2SI object with the given operands" do
        new_instruction = subject.vcvtsh2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2SI object with the given operands" do
        new_instruction = subject.vcvtsh2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsh2ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2SS object with the given operands" do
        new_instruction = subject.vcvtsh2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2SS object with the given operands" do
        new_instruction = subject.vcvtsh2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsh2usi" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2USI object with the given operands" do
        new_instruction = subject.vcvtsh2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSH2USI object with the given operands" do
        new_instruction = subject.vcvtsh2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSH2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsi2sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSI2SD object with the given operands" do
        new_instruction = subject.vcvtsi2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSI2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSI2SD object with the given operands" do
        new_instruction = subject.vcvtsi2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSI2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsi2sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSI2SH object with the given operands" do
        new_instruction = subject.vcvtsi2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSI2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSI2SH object with the given operands" do
        new_instruction = subject.vcvtsi2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSI2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtsi2ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSI2SS object with the given operands" do
        new_instruction = subject.vcvtsi2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSI2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSI2SS object with the given operands" do
        new_instruction = subject.vcvtsi2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSI2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtss2sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2SD object with the given operands" do
        new_instruction = subject.vcvtss2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2SD object with the given operands" do
        new_instruction = subject.vcvtss2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtss2sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2SH object with the given operands" do
        new_instruction = subject.vcvtss2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2SH object with the given operands" do
        new_instruction = subject.vcvtss2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtss2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2SI object with the given operands" do
        new_instruction = subject.vcvtss2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2SI object with the given operands" do
        new_instruction = subject.vcvtss2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtss2usi" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2USI object with the given operands" do
        new_instruction = subject.vcvtss2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTSS2USI object with the given operands" do
        new_instruction = subject.vcvtss2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTSS2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttpd2dq" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2DQ object with the given operands" do
        new_instruction = subject.vcvttpd2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2DQ object with the given operands" do
        new_instruction = subject.vcvttpd2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttpd2qq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2QQ object with the given operands" do
        new_instruction = subject.vcvttpd2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2QQ object with the given operands" do
        new_instruction = subject.vcvttpd2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttpd2udq" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2UDQ object with the given operands" do
        new_instruction = subject.vcvttpd2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2UDQ object with the given operands" do
        new_instruction = subject.vcvttpd2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttpd2uqq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2UQQ object with the given operands" do
        new_instruction = subject.vcvttpd2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPD2UQQ object with the given operands" do
        new_instruction = subject.vcvttpd2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPD2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttph2dq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2DQ object with the given operands" do
        new_instruction = subject.vcvttph2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2DQ object with the given operands" do
        new_instruction = subject.vcvttph2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttph2qq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2QQ object with the given operands" do
        new_instruction = subject.vcvttph2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2QQ object with the given operands" do
        new_instruction = subject.vcvttph2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttph2udq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2UDQ object with the given operands" do
        new_instruction = subject.vcvttph2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2UDQ object with the given operands" do
        new_instruction = subject.vcvttph2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttph2uqq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2UQQ object with the given operands" do
        new_instruction = subject.vcvttph2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2UQQ object with the given operands" do
        new_instruction = subject.vcvttph2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttph2uw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2UW object with the given operands" do
        new_instruction = subject.vcvttph2uw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2UW)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2UW object with the given operands" do
        new_instruction = subject.vcvttph2uw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2UW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttph2w" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2W object with the given operands" do
        new_instruction = subject.vcvttph2w(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2W)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPH2W object with the given operands" do
        new_instruction = subject.vcvttph2w(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPH2W)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttps2dq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2DQ object with the given operands" do
        new_instruction = subject.vcvttps2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2DQ object with the given operands" do
        new_instruction = subject.vcvttps2dq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2DQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttps2qq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2QQ object with the given operands" do
        new_instruction = subject.vcvttps2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2QQ object with the given operands" do
        new_instruction = subject.vcvttps2qq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2QQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttps2udq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2UDQ object with the given operands" do
        new_instruction = subject.vcvttps2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2UDQ object with the given operands" do
        new_instruction = subject.vcvttps2udq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2UDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttps2uqq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2UQQ object with the given operands" do
        new_instruction = subject.vcvttps2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), ymm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTPS2UQQ object with the given operands" do
        new_instruction = subject.vcvttps2uqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTPS2UQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttsd2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSD2SI object with the given operands" do
        new_instruction = subject.vcvttsd2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSD2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSD2SI object with the given operands" do
        new_instruction = subject.vcvttsd2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSD2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttsd2usi" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSD2USI object with the given operands" do
        new_instruction = subject.vcvttsd2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSD2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSD2USI object with the given operands" do
        new_instruction = subject.vcvttsd2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSD2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttsh2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSH2SI object with the given operands" do
        new_instruction = subject.vcvttsh2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSH2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSH2SI object with the given operands" do
        new_instruction = subject.vcvttsh2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSH2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttsh2usi" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSH2USI object with the given operands" do
        new_instruction = subject.vcvttsh2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSH2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSH2USI object with the given operands" do
        new_instruction = subject.vcvttsh2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSH2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttss2si" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSS2SI object with the given operands" do
        new_instruction = subject.vcvttss2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSS2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSS2SI object with the given operands" do
        new_instruction = subject.vcvttss2si(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSS2SI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvttss2usi" do
    context "when called with 2 operands" do
      let(:operands) { [reg64(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSS2USI object with the given operands" do
        new_instruction = subject.vcvttss2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSS2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [reg64(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTTSS2USI object with the given operands" do
        new_instruction = subject.vcvttss2usi(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTTSS2USI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtudq2pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUDQ2PD object with the given operands" do
        new_instruction = subject.vcvtudq2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUDQ2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtudq2ph" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUDQ2PH object with the given operands" do
        new_instruction = subject.vcvtudq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUDQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUDQ2PH object with the given operands" do
        new_instruction = subject.vcvtudq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUDQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtudq2ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUDQ2PS object with the given operands" do
        new_instruction = subject.vcvtudq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUDQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUDQ2PS object with the given operands" do
        new_instruction = subject.vcvtudq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUDQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtuqq2pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUQQ2PD object with the given operands" do
        new_instruction = subject.vcvtuqq2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUQQ2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUQQ2PD object with the given operands" do
        new_instruction = subject.vcvtuqq2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUQQ2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtuqq2ph" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUQQ2PH object with the given operands" do
        new_instruction = subject.vcvtuqq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUQQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUQQ2PH object with the given operands" do
        new_instruction = subject.vcvtuqq2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUQQ2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtuqq2ps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUQQ2PS object with the given operands" do
        new_instruction = subject.vcvtuqq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUQQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUQQ2PS object with the given operands" do
        new_instruction = subject.vcvtuqq2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUQQ2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtusi2sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUSI2SD object with the given operands" do
        new_instruction = subject.vcvtusi2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUSI2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUSI2SD object with the given operands" do
        new_instruction = subject.vcvtusi2sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUSI2SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtusi2sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUSI2SH object with the given operands" do
        new_instruction = subject.vcvtusi2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUSI2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUSI2SH object with the given operands" do
        new_instruction = subject.vcvtusi2sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUSI2SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtusi2ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUSI2SS object with the given operands" do
        new_instruction = subject.vcvtusi2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUSI2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), er(2), reg64(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUSI2SS object with the given operands" do
        new_instruction = subject.vcvtusi2ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUSI2SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtuw2ph" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUW2PH object with the given operands" do
        new_instruction = subject.vcvtuw2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUW2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTUW2PH object with the given operands" do
        new_instruction = subject.vcvtuw2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTUW2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vcvtw2ph" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTW2PH object with the given operands" do
        new_instruction = subject.vcvtw2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTW2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VCVTW2PH object with the given operands" do
        new_instruction = subject.vcvtw2ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VCVTW2PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdbpsadbw" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDBPSADBW object with the given operands" do
        new_instruction = subject.vdbpsadbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDBPSADBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdivpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVPD object with the given operands" do
        new_instruction = subject.vdivpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVPD object with the given operands" do
        new_instruction = subject.vdivpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdivph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVPH object with the given operands" do
        new_instruction = subject.vdivph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVPH object with the given operands" do
        new_instruction = subject.vdivph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdivps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVPS object with the given operands" do
        new_instruction = subject.vdivps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVPS object with the given operands" do
        new_instruction = subject.vdivps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdivsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVSD object with the given operands" do
        new_instruction = subject.vdivsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVSD object with the given operands" do
        new_instruction = subject.vdivsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdivsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVSH object with the given operands" do
        new_instruction = subject.vdivsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVSH object with the given operands" do
        new_instruction = subject.vdivsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdivss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVSS object with the given operands" do
        new_instruction = subject.vdivss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDIVSS object with the given operands" do
        new_instruction = subject.vdivss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDIVSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdpbf16ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDPBF16PS object with the given operands" do
        new_instruction = subject.vdpbf16ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDPBF16PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdppd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDPPD object with the given operands" do
        new_instruction = subject.vdppd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDPPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vdpps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VDPPS object with the given operands" do
        new_instruction = subject.vdpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VDPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vexp2pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXP2PD object with the given operands" do
        new_instruction = subject.vexp2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXP2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXP2PD object with the given operands" do
        new_instruction = subject.vexp2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXP2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vexp2ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXP2PS object with the given operands" do
        new_instruction = subject.vexp2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXP2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXP2PS object with the given operands" do
        new_instruction = subject.vexp2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXP2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vexpandpd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXPANDPD object with the given operands" do
        new_instruction = subject.vexpandpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXPANDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vexpandps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXPANDPS object with the given operands" do
        new_instruction = subject.vexpandps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXPANDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextractf128" do
    context "when called with 3 operands" do
      let(:operands) { [mem128(0), ymm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTF128 object with the given operands" do
        new_instruction = subject.vextractf128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTF128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextractf32x4" do
    context "when called with 3 operands" do
      let(:operands) { [mem128(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTF32X4 object with the given operands" do
        new_instruction = subject.vextractf32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTF32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextractf32x8" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTF32X8 object with the given operands" do
        new_instruction = subject.vextractf32x8(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTF32X8)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextractf64x2" do
    context "when called with 3 operands" do
      let(:operands) { [mem128(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTF64X2 object with the given operands" do
        new_instruction = subject.vextractf64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTF64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextractf64x4" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTF64X4 object with the given operands" do
        new_instruction = subject.vextractf64x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTF64X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextracti128" do
    context "when called with 3 operands" do
      let(:operands) { [mem128(0), ymm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTI128 object with the given operands" do
        new_instruction = subject.vextracti128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTI128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextracti32x4" do
    context "when called with 3 operands" do
      let(:operands) { [mem128(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTI32X4 object with the given operands" do
        new_instruction = subject.vextracti32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTI32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextracti32x8" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTI32X8 object with the given operands" do
        new_instruction = subject.vextracti32x8(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTI32X8)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextracti64x2" do
    context "when called with 3 operands" do
      let(:operands) { [mem128(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTI64X2 object with the given operands" do
        new_instruction = subject.vextracti64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTI64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextracti64x4" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTI64X4 object with the given operands" do
        new_instruction = subject.vextracti64x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTI64X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vextractps" do
    context "when called with 3 operands" do
      let(:operands) { [mem32(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VEXTRACTPS object with the given operands" do
        new_instruction = subject.vextractps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VEXTRACTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfcmaddcph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMADDCPH object with the given operands" do
        new_instruction = subject.vfcmaddcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMADDCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMADDCPH object with the given operands" do
        new_instruction = subject.vfcmaddcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMADDCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfcmaddcsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMADDCSH object with the given operands" do
        new_instruction = subject.vfcmaddcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMADDCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMADDCSH object with the given operands" do
        new_instruction = subject.vfcmaddcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMADDCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfcmulcph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMULCPH object with the given operands" do
        new_instruction = subject.vfcmulcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMULCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMULCPH object with the given operands" do
        new_instruction = subject.vfcmulcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMULCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfcmulcsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMULCSH object with the given operands" do
        new_instruction = subject.vfcmulcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMULCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFCMULCSH object with the given operands" do
        new_instruction = subject.vfcmulcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFCMULCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfixupimmpd" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMPD object with the given operands" do
        new_instruction = subject.vfixupimmpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMPD object with the given operands" do
        new_instruction = subject.vfixupimmpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfixupimmps" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMPS object with the given operands" do
        new_instruction = subject.vfixupimmps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMPS object with the given operands" do
        new_instruction = subject.vfixupimmps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfixupimmsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMSD object with the given operands" do
        new_instruction = subject.vfixupimmsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMSD object with the given operands" do
        new_instruction = subject.vfixupimmsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfixupimmss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMSS object with the given operands" do
        new_instruction = subject.vfixupimmss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFIXUPIMMSS object with the given operands" do
        new_instruction = subject.vfixupimmss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFIXUPIMMSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd132pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132PD object with the given operands" do
        new_instruction = subject.vfmadd132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132PD object with the given operands" do
        new_instruction = subject.vfmadd132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd132ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132PH object with the given operands" do
        new_instruction = subject.vfmadd132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132PH object with the given operands" do
        new_instruction = subject.vfmadd132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd132ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132PS object with the given operands" do
        new_instruction = subject.vfmadd132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132PS object with the given operands" do
        new_instruction = subject.vfmadd132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd132sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132SD object with the given operands" do
        new_instruction = subject.vfmadd132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132SD object with the given operands" do
        new_instruction = subject.vfmadd132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd132ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132SS object with the given operands" do
        new_instruction = subject.vfmadd132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD132SS object with the given operands" do
        new_instruction = subject.vfmadd132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd213pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213PD object with the given operands" do
        new_instruction = subject.vfmadd213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213PD object with the given operands" do
        new_instruction = subject.vfmadd213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd213ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213PH object with the given operands" do
        new_instruction = subject.vfmadd213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213PH object with the given operands" do
        new_instruction = subject.vfmadd213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd213ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213PS object with the given operands" do
        new_instruction = subject.vfmadd213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213PS object with the given operands" do
        new_instruction = subject.vfmadd213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd213sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213SD object with the given operands" do
        new_instruction = subject.vfmadd213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213SD object with the given operands" do
        new_instruction = subject.vfmadd213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd213ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213SS object with the given operands" do
        new_instruction = subject.vfmadd213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD213SS object with the given operands" do
        new_instruction = subject.vfmadd213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd231pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231PD object with the given operands" do
        new_instruction = subject.vfmadd231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231PD object with the given operands" do
        new_instruction = subject.vfmadd231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd231ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231PH object with the given operands" do
        new_instruction = subject.vfmadd231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231PH object with the given operands" do
        new_instruction = subject.vfmadd231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd231ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231PS object with the given operands" do
        new_instruction = subject.vfmadd231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231PS object with the given operands" do
        new_instruction = subject.vfmadd231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd231sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231SD object with the given operands" do
        new_instruction = subject.vfmadd231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231SD object with the given operands" do
        new_instruction = subject.vfmadd231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmadd231ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231SS object with the given operands" do
        new_instruction = subject.vfmadd231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADD231SS object with the given operands" do
        new_instruction = subject.vfmadd231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADD231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddcph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDCPH object with the given operands" do
        new_instruction = subject.vfmaddcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDCPH object with the given operands" do
        new_instruction = subject.vfmaddcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddcsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDCSH object with the given operands" do
        new_instruction = subject.vfmaddcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDCSH object with the given operands" do
        new_instruction = subject.vfmaddcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDPD object with the given operands" do
        new_instruction = subject.vfmaddpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDPS object with the given operands" do
        new_instruction = subject.vfmaddps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSD object with the given operands" do
        new_instruction = subject.vfmaddsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSS object with the given operands" do
        new_instruction = subject.vfmaddss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub132pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB132PD object with the given operands" do
        new_instruction = subject.vfmaddsub132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB132PD object with the given operands" do
        new_instruction = subject.vfmaddsub132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub132ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB132PH object with the given operands" do
        new_instruction = subject.vfmaddsub132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB132PH object with the given operands" do
        new_instruction = subject.vfmaddsub132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub132ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB132PS object with the given operands" do
        new_instruction = subject.vfmaddsub132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB132PS object with the given operands" do
        new_instruction = subject.vfmaddsub132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub213pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB213PD object with the given operands" do
        new_instruction = subject.vfmaddsub213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB213PD object with the given operands" do
        new_instruction = subject.vfmaddsub213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub213ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB213PH object with the given operands" do
        new_instruction = subject.vfmaddsub213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB213PH object with the given operands" do
        new_instruction = subject.vfmaddsub213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub213ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB213PS object with the given operands" do
        new_instruction = subject.vfmaddsub213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB213PS object with the given operands" do
        new_instruction = subject.vfmaddsub213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub231pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB231PD object with the given operands" do
        new_instruction = subject.vfmaddsub231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB231PD object with the given operands" do
        new_instruction = subject.vfmaddsub231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub231ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB231PH object with the given operands" do
        new_instruction = subject.vfmaddsub231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB231PH object with the given operands" do
        new_instruction = subject.vfmaddsub231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsub231ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB231PS object with the given operands" do
        new_instruction = subject.vfmaddsub231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUB231PS object with the given operands" do
        new_instruction = subject.vfmaddsub231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUB231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsubpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUBPD object with the given operands" do
        new_instruction = subject.vfmaddsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmaddsubps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMADDSUBPS object with the given operands" do
        new_instruction = subject.vfmaddsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMADDSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub132pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132PD object with the given operands" do
        new_instruction = subject.vfmsub132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132PD object with the given operands" do
        new_instruction = subject.vfmsub132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub132ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132PH object with the given operands" do
        new_instruction = subject.vfmsub132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132PH object with the given operands" do
        new_instruction = subject.vfmsub132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub132ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132PS object with the given operands" do
        new_instruction = subject.vfmsub132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132PS object with the given operands" do
        new_instruction = subject.vfmsub132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub132sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132SD object with the given operands" do
        new_instruction = subject.vfmsub132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132SD object with the given operands" do
        new_instruction = subject.vfmsub132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub132sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132SH object with the given operands" do
        new_instruction = subject.vfmsub132sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132SH object with the given operands" do
        new_instruction = subject.vfmsub132sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub132ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132SS object with the given operands" do
        new_instruction = subject.vfmsub132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB132SS object with the given operands" do
        new_instruction = subject.vfmsub132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub213pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213PD object with the given operands" do
        new_instruction = subject.vfmsub213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213PD object with the given operands" do
        new_instruction = subject.vfmsub213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub213ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213PH object with the given operands" do
        new_instruction = subject.vfmsub213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213PH object with the given operands" do
        new_instruction = subject.vfmsub213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub213ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213PS object with the given operands" do
        new_instruction = subject.vfmsub213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213PS object with the given operands" do
        new_instruction = subject.vfmsub213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub213sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213SD object with the given operands" do
        new_instruction = subject.vfmsub213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213SD object with the given operands" do
        new_instruction = subject.vfmsub213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub213sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213SH object with the given operands" do
        new_instruction = subject.vfmsub213sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213SH object with the given operands" do
        new_instruction = subject.vfmsub213sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub213ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213SS object with the given operands" do
        new_instruction = subject.vfmsub213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB213SS object with the given operands" do
        new_instruction = subject.vfmsub213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub231pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231PD object with the given operands" do
        new_instruction = subject.vfmsub231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231PD object with the given operands" do
        new_instruction = subject.vfmsub231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub231ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231PH object with the given operands" do
        new_instruction = subject.vfmsub231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231PH object with the given operands" do
        new_instruction = subject.vfmsub231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub231ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231PS object with the given operands" do
        new_instruction = subject.vfmsub231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231PS object with the given operands" do
        new_instruction = subject.vfmsub231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub231sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231SD object with the given operands" do
        new_instruction = subject.vfmsub231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231SD object with the given operands" do
        new_instruction = subject.vfmsub231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub231sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231SH object with the given operands" do
        new_instruction = subject.vfmsub231sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231SH object with the given operands" do
        new_instruction = subject.vfmsub231sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsub231ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231SS object with the given operands" do
        new_instruction = subject.vfmsub231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUB231SS object with the given operands" do
        new_instruction = subject.vfmsub231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUB231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd132pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD132PD object with the given operands" do
        new_instruction = subject.vfmsubadd132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD132PD object with the given operands" do
        new_instruction = subject.vfmsubadd132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd132ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD132PH object with the given operands" do
        new_instruction = subject.vfmsubadd132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD132PH object with the given operands" do
        new_instruction = subject.vfmsubadd132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd132ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD132PS object with the given operands" do
        new_instruction = subject.vfmsubadd132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD132PS object with the given operands" do
        new_instruction = subject.vfmsubadd132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd213pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD213PD object with the given operands" do
        new_instruction = subject.vfmsubadd213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD213PD object with the given operands" do
        new_instruction = subject.vfmsubadd213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd213ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD213PH object with the given operands" do
        new_instruction = subject.vfmsubadd213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD213PH object with the given operands" do
        new_instruction = subject.vfmsubadd213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd213ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD213PS object with the given operands" do
        new_instruction = subject.vfmsubadd213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD213PS object with the given operands" do
        new_instruction = subject.vfmsubadd213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd231pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD231PD object with the given operands" do
        new_instruction = subject.vfmsubadd231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD231PD object with the given operands" do
        new_instruction = subject.vfmsubadd231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd231ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD231PH object with the given operands" do
        new_instruction = subject.vfmsubadd231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD231PH object with the given operands" do
        new_instruction = subject.vfmsubadd231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubadd231ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD231PS object with the given operands" do
        new_instruction = subject.vfmsubadd231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADD231PS object with the given operands" do
        new_instruction = subject.vfmsubadd231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADD231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubaddpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADDPD object with the given operands" do
        new_instruction = subject.vfmsubaddpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubaddps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBADDPS object with the given operands" do
        new_instruction = subject.vfmsubaddps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBPD object with the given operands" do
        new_instruction = subject.vfmsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBPS object with the given operands" do
        new_instruction = subject.vfmsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBSD object with the given operands" do
        new_instruction = subject.vfmsubsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmsubss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMSUBSS object with the given operands" do
        new_instruction = subject.vfmsubss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMSUBSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmulcph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMULCPH object with the given operands" do
        new_instruction = subject.vfmulcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMULCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMULCPH object with the given operands" do
        new_instruction = subject.vfmulcph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMULCPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfmulcsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMULCSH object with the given operands" do
        new_instruction = subject.vfmulcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMULCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFMULCSH object with the given operands" do
        new_instruction = subject.vfmulcsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFMULCSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd132pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132PD object with the given operands" do
        new_instruction = subject.vfnmadd132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132PD object with the given operands" do
        new_instruction = subject.vfnmadd132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd132ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132PH object with the given operands" do
        new_instruction = subject.vfnmadd132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132PH object with the given operands" do
        new_instruction = subject.vfnmadd132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd132ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132PS object with the given operands" do
        new_instruction = subject.vfnmadd132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132PS object with the given operands" do
        new_instruction = subject.vfnmadd132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd132sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132SD object with the given operands" do
        new_instruction = subject.vfnmadd132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132SD object with the given operands" do
        new_instruction = subject.vfnmadd132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd132ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132SS object with the given operands" do
        new_instruction = subject.vfnmadd132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD132SS object with the given operands" do
        new_instruction = subject.vfnmadd132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd213pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213PD object with the given operands" do
        new_instruction = subject.vfnmadd213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213PD object with the given operands" do
        new_instruction = subject.vfnmadd213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd213ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213PH object with the given operands" do
        new_instruction = subject.vfnmadd213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213PH object with the given operands" do
        new_instruction = subject.vfnmadd213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd213ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213PS object with the given operands" do
        new_instruction = subject.vfnmadd213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213PS object with the given operands" do
        new_instruction = subject.vfnmadd213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd213sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213SD object with the given operands" do
        new_instruction = subject.vfnmadd213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213SD object with the given operands" do
        new_instruction = subject.vfnmadd213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd213ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213SS object with the given operands" do
        new_instruction = subject.vfnmadd213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD213SS object with the given operands" do
        new_instruction = subject.vfnmadd213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd231pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231PD object with the given operands" do
        new_instruction = subject.vfnmadd231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231PD object with the given operands" do
        new_instruction = subject.vfnmadd231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd231ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231PH object with the given operands" do
        new_instruction = subject.vfnmadd231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231PH object with the given operands" do
        new_instruction = subject.vfnmadd231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd231ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231PS object with the given operands" do
        new_instruction = subject.vfnmadd231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231PS object with the given operands" do
        new_instruction = subject.vfnmadd231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd231sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231SD object with the given operands" do
        new_instruction = subject.vfnmadd231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231SD object with the given operands" do
        new_instruction = subject.vfnmadd231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmadd231ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231SS object with the given operands" do
        new_instruction = subject.vfnmadd231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADD231SS object with the given operands" do
        new_instruction = subject.vfnmadd231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADD231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmaddpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADDPD object with the given operands" do
        new_instruction = subject.vfnmaddpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmaddps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADDPS object with the given operands" do
        new_instruction = subject.vfnmaddps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmaddsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADDSD object with the given operands" do
        new_instruction = subject.vfnmaddsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADDSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmaddss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMADDSS object with the given operands" do
        new_instruction = subject.vfnmaddss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMADDSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub132pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132PD object with the given operands" do
        new_instruction = subject.vfnmsub132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132PD object with the given operands" do
        new_instruction = subject.vfnmsub132pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub132ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132PH object with the given operands" do
        new_instruction = subject.vfnmsub132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132PH object with the given operands" do
        new_instruction = subject.vfnmsub132ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub132ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132PS object with the given operands" do
        new_instruction = subject.vfnmsub132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132PS object with the given operands" do
        new_instruction = subject.vfnmsub132ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub132sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132SD object with the given operands" do
        new_instruction = subject.vfnmsub132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132SD object with the given operands" do
        new_instruction = subject.vfnmsub132sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub132sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132SH object with the given operands" do
        new_instruction = subject.vfnmsub132sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132SH object with the given operands" do
        new_instruction = subject.vfnmsub132sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub132ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132SS object with the given operands" do
        new_instruction = subject.vfnmsub132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB132SS object with the given operands" do
        new_instruction = subject.vfnmsub132ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB132SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub213pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213PD object with the given operands" do
        new_instruction = subject.vfnmsub213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213PD object with the given operands" do
        new_instruction = subject.vfnmsub213pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub213ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213PH object with the given operands" do
        new_instruction = subject.vfnmsub213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213PH object with the given operands" do
        new_instruction = subject.vfnmsub213ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub213ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213PS object with the given operands" do
        new_instruction = subject.vfnmsub213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213PS object with the given operands" do
        new_instruction = subject.vfnmsub213ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub213sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213SD object with the given operands" do
        new_instruction = subject.vfnmsub213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213SD object with the given operands" do
        new_instruction = subject.vfnmsub213sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub213sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213SH object with the given operands" do
        new_instruction = subject.vfnmsub213sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213SH object with the given operands" do
        new_instruction = subject.vfnmsub213sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub213ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213SS object with the given operands" do
        new_instruction = subject.vfnmsub213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB213SS object with the given operands" do
        new_instruction = subject.vfnmsub213ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB213SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub231pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231PD object with the given operands" do
        new_instruction = subject.vfnmsub231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231PD object with the given operands" do
        new_instruction = subject.vfnmsub231pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub231ph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231PH object with the given operands" do
        new_instruction = subject.vfnmsub231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231PH object with the given operands" do
        new_instruction = subject.vfnmsub231ph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231PH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub231ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231PS object with the given operands" do
        new_instruction = subject.vfnmsub231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231PS object with the given operands" do
        new_instruction = subject.vfnmsub231ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub231sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231SD object with the given operands" do
        new_instruction = subject.vfnmsub231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231SD object with the given operands" do
        new_instruction = subject.vfnmsub231sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub231sh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231SH object with the given operands" do
        new_instruction = subject.vfnmsub231sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231SH object with the given operands" do
        new_instruction = subject.vfnmsub231sh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231SH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsub231ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231SS object with the given operands" do
        new_instruction = subject.vfnmsub231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUB231SS object with the given operands" do
        new_instruction = subject.vfnmsub231ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUB231SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsubpd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUBPD object with the given operands" do
        new_instruction = subject.vfnmsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsubps" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUBPS object with the given operands" do
        new_instruction = subject.vfnmsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsubsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUBSD object with the given operands" do
        new_instruction = subject.vfnmsubsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUBSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfnmsubss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFNMSUBSS object with the given operands" do
        new_instruction = subject.vfnmsubss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFNMSUBSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfpclasspd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFPCLASSPD object with the given operands" do
        new_instruction = subject.vfpclasspd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFPCLASSPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfpclassph" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFPCLASSPH object with the given operands" do
        new_instruction = subject.vfpclassph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFPCLASSPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfpclassps" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFPCLASSPS object with the given operands" do
        new_instruction = subject.vfpclassps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFPCLASSPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfpclasssd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), mem64(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFPCLASSSD object with the given operands" do
        new_instruction = subject.vfpclasssd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFPCLASSSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfpclasssh" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), mem16(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFPCLASSSH object with the given operands" do
        new_instruction = subject.vfpclasssh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFPCLASSSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfpclassss" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), mem32(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFPCLASSSS object with the given operands" do
        new_instruction = subject.vfpclassss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFPCLASSSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfrczpd" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFRCZPD object with the given operands" do
        new_instruction = subject.vfrczpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFRCZPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfrczps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFRCZPS object with the given operands" do
        new_instruction = subject.vfrczps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFRCZPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfrczsd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFRCZSD object with the given operands" do
        new_instruction = subject.vfrczsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFRCZSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vfrczss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VFRCZSS object with the given operands" do
        new_instruction = subject.vfrczss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VFRCZSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherdpd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm_k(0), vm32y(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERDPD object with the given operands" do
        new_instruction = subject.vgatherdpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), vm32x(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERDPD object with the given operands" do
        new_instruction = subject.vgatherdpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherdps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm_k(0), vm32z(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERDPS object with the given operands" do
        new_instruction = subject.vgatherdps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), vm32y(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERDPS object with the given operands" do
        new_instruction = subject.vgatherdps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf0dpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm32y_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF0DPD object with the given operands" do
        new_instruction = subject.vgatherpf0dpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF0DPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf0dps" do
    context "when called with 1 operand" do
      let(:operands) { [vm32z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF0DPS object with the given operands" do
        new_instruction = subject.vgatherpf0dps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF0DPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf0qpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF0QPD object with the given operands" do
        new_instruction = subject.vgatherpf0qpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF0QPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf0qps" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF0QPS object with the given operands" do
        new_instruction = subject.vgatherpf0qps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF0QPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf1dpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm32y_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF1DPD object with the given operands" do
        new_instruction = subject.vgatherpf1dpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF1DPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf1dps" do
    context "when called with 1 operand" do
      let(:operands) { [vm32z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF1DPS object with the given operands" do
        new_instruction = subject.vgatherpf1dps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF1DPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf1qpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF1QPD object with the given operands" do
        new_instruction = subject.vgatherpf1qpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF1QPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherpf1qps" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERPF1QPS object with the given operands" do
        new_instruction = subject.vgatherpf1qps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERPF1QPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherqpd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm_k(0), vm64z(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERQPD object with the given operands" do
        new_instruction = subject.vgatherqpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERQPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), vm64y(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERQPD object with the given operands" do
        new_instruction = subject.vgatherqpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERQPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgatherqps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm_k(0), vm64z(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERQPS object with the given operands" do
        new_instruction = subject.vgatherqps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERQPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), vm64y(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGATHERQPS object with the given operands" do
        new_instruction = subject.vgatherqps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGATHERQPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetexppd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPPD object with the given operands" do
        new_instruction = subject.vgetexppd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPPD object with the given operands" do
        new_instruction = subject.vgetexppd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetexpph" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPPH object with the given operands" do
        new_instruction = subject.vgetexpph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPPH object with the given operands" do
        new_instruction = subject.vgetexpph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetexpps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPPS object with the given operands" do
        new_instruction = subject.vgetexpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPPS object with the given operands" do
        new_instruction = subject.vgetexpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetexpsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPSD object with the given operands" do
        new_instruction = subject.vgetexpsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPSD object with the given operands" do
        new_instruction = subject.vgetexpsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetexpsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPSH object with the given operands" do
        new_instruction = subject.vgetexpsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPSH object with the given operands" do
        new_instruction = subject.vgetexpsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetexpss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPSS object with the given operands" do
        new_instruction = subject.vgetexpss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETEXPSS object with the given operands" do
        new_instruction = subject.vgetexpss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETEXPSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetmantpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTPD object with the given operands" do
        new_instruction = subject.vgetmantpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTPD object with the given operands" do
        new_instruction = subject.vgetmantpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetmantph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTPH object with the given operands" do
        new_instruction = subject.vgetmantph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTPH object with the given operands" do
        new_instruction = subject.vgetmantph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetmantps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTPS object with the given operands" do
        new_instruction = subject.vgetmantps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTPS object with the given operands" do
        new_instruction = subject.vgetmantps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetmantsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTSD object with the given operands" do
        new_instruction = subject.vgetmantsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTSD object with the given operands" do
        new_instruction = subject.vgetmantsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetmantsh" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTSH object with the given operands" do
        new_instruction = subject.vgetmantsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTSH object with the given operands" do
        new_instruction = subject.vgetmantsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgetmantss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTSS object with the given operands" do
        new_instruction = subject.vgetmantss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGETMANTSS object with the given operands" do
        new_instruction = subject.vgetmantss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGETMANTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgf2p8affineinvqb" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGF2P8AFFINEINVQB object with the given operands" do
        new_instruction = subject.vgf2p8affineinvqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGF2P8AFFINEINVQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgf2p8affineqb" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGF2P8AFFINEQB object with the given operands" do
        new_instruction = subject.vgf2p8affineqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGF2P8AFFINEQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vgf2p8mulb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VGF2P8MULB object with the given operands" do
        new_instruction = subject.vgf2p8mulb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VGF2P8MULB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vhaddpd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VHADDPD object with the given operands" do
        new_instruction = subject.vhaddpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VHADDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vhaddps" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VHADDPS object with the given operands" do
        new_instruction = subject.vhaddps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VHADDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vhsubpd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VHSUBPD object with the given operands" do
        new_instruction = subject.vhsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VHSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vhsubps" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VHSUBPS object with the given operands" do
        new_instruction = subject.vhsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VHSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinsertf128" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTF128 object with the given operands" do
        new_instruction = subject.vinsertf128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTF128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinsertf32x4" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTF32X4 object with the given operands" do
        new_instruction = subject.vinsertf32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTF32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinsertf32x8" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTF32X8 object with the given operands" do
        new_instruction = subject.vinsertf32x8(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTF32X8)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinsertf64x2" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTF64X2 object with the given operands" do
        new_instruction = subject.vinsertf64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTF64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinsertf64x4" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTF64X4 object with the given operands" do
        new_instruction = subject.vinsertf64x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTF64X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinserti128" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTI128 object with the given operands" do
        new_instruction = subject.vinserti128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTI128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinserti32x4" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTI32X4 object with the given operands" do
        new_instruction = subject.vinserti32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTI32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinserti32x8" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTI32X8 object with the given operands" do
        new_instruction = subject.vinserti32x8(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTI32X8)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinserti64x2" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTI64X2 object with the given operands" do
        new_instruction = subject.vinserti64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTI64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinserti64x4" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTI64X4 object with the given operands" do
        new_instruction = subject.vinserti64x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTI64X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vinsertps" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VINSERTPS object with the given operands" do
        new_instruction = subject.vinsertps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VINSERTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vlddqu" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VLDDQU object with the given operands" do
        new_instruction = subject.vlddqu(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VLDDQU)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vldmxcsr" do
    context "when called with 1 operand" do
      let(:operands) { [mem32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VLDMXCSR object with the given operands" do
        new_instruction = subject.vldmxcsr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VLDMXCSR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaskmovdqu" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMASKMOVDQU object with the given operands" do
        new_instruction = subject.vmaskmovdqu(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMASKMOVDQU)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaskmovpd" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), ymm(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMASKMOVPD object with the given operands" do
        new_instruction = subject.vmaskmovpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMASKMOVPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaskmovps" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), ymm(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMASKMOVPS object with the given operands" do
        new_instruction = subject.vmaskmovps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMASKMOVPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaxpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXPD object with the given operands" do
        new_instruction = subject.vmaxpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXPD object with the given operands" do
        new_instruction = subject.vmaxpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaxph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXPH object with the given operands" do
        new_instruction = subject.vmaxph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXPH object with the given operands" do
        new_instruction = subject.vmaxph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaxps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXPS object with the given operands" do
        new_instruction = subject.vmaxps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXPS object with the given operands" do
        new_instruction = subject.vmaxps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaxsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXSD object with the given operands" do
        new_instruction = subject.vmaxsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXSD object with the given operands" do
        new_instruction = subject.vmaxsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaxsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXSH object with the given operands" do
        new_instruction = subject.vmaxsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXSH object with the given operands" do
        new_instruction = subject.vmaxsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmaxss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXSS object with the given operands" do
        new_instruction = subject.vmaxss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMAXSS object with the given operands" do
        new_instruction = subject.vmaxss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMAXSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vminpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINPD object with the given operands" do
        new_instruction = subject.vminpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINPD object with the given operands" do
        new_instruction = subject.vminpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vminph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINPH object with the given operands" do
        new_instruction = subject.vminph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINPH object with the given operands" do
        new_instruction = subject.vminph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vminps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINPS object with the given operands" do
        new_instruction = subject.vminps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINPS object with the given operands" do
        new_instruction = subject.vminps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vminsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINSD object with the given operands" do
        new_instruction = subject.vminsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINSD object with the given operands" do
        new_instruction = subject.vminsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vminsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINSH object with the given operands" do
        new_instruction = subject.vminsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINSH object with the given operands" do
        new_instruction = subject.vminsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vminss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINSS object with the given operands" do
        new_instruction = subject.vminss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMINSS object with the given operands" do
        new_instruction = subject.vminss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMINSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovapd" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVAPD object with the given operands" do
        new_instruction = subject.vmovapd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVAPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovaps" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVAPS object with the given operands" do
        new_instruction = subject.vmovaps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVAPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovd" do
    context "when called with 2 operands" do
      let(:operands) { [mem32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVD object with the given operands" do
        new_instruction = subject.vmovd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovddup" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDDUP object with the given operands" do
        new_instruction = subject.vmovddup(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDDUP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqa" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQA object with the given operands" do
        new_instruction = subject.vmovdqa(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqa32" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQA32 object with the given operands" do
        new_instruction = subject.vmovdqa32(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQA32)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqa64" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQA64 object with the given operands" do
        new_instruction = subject.vmovdqa64(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQA64)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqu" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQU object with the given operands" do
        new_instruction = subject.vmovdqu(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQU)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqu16" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQU16 object with the given operands" do
        new_instruction = subject.vmovdqu16(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQU16)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqu32" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQU32 object with the given operands" do
        new_instruction = subject.vmovdqu32(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQU32)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqu64" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQU64 object with the given operands" do
        new_instruction = subject.vmovdqu64(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQU64)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovdqu8" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVDQU8 object with the given operands" do
        new_instruction = subject.vmovdqu8(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVDQU8)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovhlps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVHLPS object with the given operands" do
        new_instruction = subject.vmovhlps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVHLPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovhpd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVHPD object with the given operands" do
        new_instruction = subject.vmovhpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVHPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVHPD object with the given operands" do
        new_instruction = subject.vmovhpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVHPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovhps" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVHPS object with the given operands" do
        new_instruction = subject.vmovhps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVHPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVHPS object with the given operands" do
        new_instruction = subject.vmovhps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVHPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovlhps" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVLHPS object with the given operands" do
        new_instruction = subject.vmovlhps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVLHPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovlpd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVLPD object with the given operands" do
        new_instruction = subject.vmovlpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVLPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVLPD object with the given operands" do
        new_instruction = subject.vmovlpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVLPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovlps" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVLPS object with the given operands" do
        new_instruction = subject.vmovlps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVLPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVLPS object with the given operands" do
        new_instruction = subject.vmovlps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVLPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovmskpd" do
    context "when called with 2 operands" do
      let(:operands) { [reg32(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVMSKPD object with the given operands" do
        new_instruction = subject.vmovmskpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVMSKPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovmskps" do
    context "when called with 2 operands" do
      let(:operands) { [reg32(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVMSKPS object with the given operands" do
        new_instruction = subject.vmovmskps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVMSKPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovntdq" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVNTDQ object with the given operands" do
        new_instruction = subject.vmovntdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVNTDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovntdqa" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVNTDQA object with the given operands" do
        new_instruction = subject.vmovntdqa(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVNTDQA)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovntpd" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVNTPD object with the given operands" do
        new_instruction = subject.vmovntpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVNTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovntps" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVNTPS object with the given operands" do
        new_instruction = subject.vmovntps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVNTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovq" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVQ object with the given operands" do
        new_instruction = subject.vmovq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovsd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSD object with the given operands" do
        new_instruction = subject.vmovsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSD object with the given operands" do
        new_instruction = subject.vmovsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovsh" do
    context "when called with 2 operands" do
      let(:operands) { [mem16(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSH object with the given operands" do
        new_instruction = subject.vmovsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSH object with the given operands" do
        new_instruction = subject.vmovsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovshdup" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSHDUP object with the given operands" do
        new_instruction = subject.vmovshdup(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSHDUP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovsldup" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSLDUP object with the given operands" do
        new_instruction = subject.vmovsldup(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSLDUP)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovss" do
    context "when called with 2 operands" do
      let(:operands) { [mem32(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSS object with the given operands" do
        new_instruction = subject.vmovss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVSS object with the given operands" do
        new_instruction = subject.vmovss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovupd" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVUPD object with the given operands" do
        new_instruction = subject.vmovupd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVUPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovups" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVUPS object with the given operands" do
        new_instruction = subject.vmovups(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVUPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmovw" do
    context "when called with 2 operands" do
      let(:operands) { [mem16(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMOVW object with the given operands" do
        new_instruction = subject.vmovw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMOVW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmpsadbw" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMPSADBW object with the given operands" do
        new_instruction = subject.vmpsadbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMPSADBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmulpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULPD object with the given operands" do
        new_instruction = subject.vmulpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULPD object with the given operands" do
        new_instruction = subject.vmulpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmulph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULPH object with the given operands" do
        new_instruction = subject.vmulph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULPH object with the given operands" do
        new_instruction = subject.vmulph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmulps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULPS object with the given operands" do
        new_instruction = subject.vmulps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULPS object with the given operands" do
        new_instruction = subject.vmulps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmulsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULSD object with the given operands" do
        new_instruction = subject.vmulsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULSD object with the given operands" do
        new_instruction = subject.vmulsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmulsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULSH object with the given operands" do
        new_instruction = subject.vmulsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULSH object with the given operands" do
        new_instruction = subject.vmulsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vmulss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULSS object with the given operands" do
        new_instruction = subject.vmulss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VMULSS object with the given operands" do
        new_instruction = subject.vmulss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VMULSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vorpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VORPD object with the given operands" do
        new_instruction = subject.vorpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VORPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vorps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VORPS object with the given operands" do
        new_instruction = subject.vorps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VORPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpabsb" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPABSB object with the given operands" do
        new_instruction = subject.vpabsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPABSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpabsd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPABSD object with the given operands" do
        new_instruction = subject.vpabsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPABSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpabsq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPABSQ object with the given operands" do
        new_instruction = subject.vpabsq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPABSQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpabsw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPABSW object with the given operands" do
        new_instruction = subject.vpabsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPABSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpackssdw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPACKSSDW object with the given operands" do
        new_instruction = subject.vpackssdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPACKSSDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpacksswb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPACKSSWB object with the given operands" do
        new_instruction = subject.vpacksswb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPACKSSWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpackusdw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPACKUSDW object with the given operands" do
        new_instruction = subject.vpackusdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPACKUSDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpackuswb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPACKUSWB object with the given operands" do
        new_instruction = subject.vpackuswb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPACKUSWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDB object with the given operands" do
        new_instruction = subject.vpaddb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDD object with the given operands" do
        new_instruction = subject.vpaddd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDQ object with the given operands" do
        new_instruction = subject.vpaddq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddsb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDSB object with the given operands" do
        new_instruction = subject.vpaddsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddsw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDSW object with the given operands" do
        new_instruction = subject.vpaddsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddusb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDUSB object with the given operands" do
        new_instruction = subject.vpaddusb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDUSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddusw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDUSW object with the given operands" do
        new_instruction = subject.vpaddusw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDUSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpaddw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPADDW object with the given operands" do
        new_instruction = subject.vpaddw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPADDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpalignr" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPALIGNR object with the given operands" do
        new_instruction = subject.vpalignr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPALIGNR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpand" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPAND object with the given operands" do
        new_instruction = subject.vpand(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPAND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpandd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPANDD object with the given operands" do
        new_instruction = subject.vpandd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPANDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpandn" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPANDN object with the given operands" do
        new_instruction = subject.vpandn(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPANDN)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpandnd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPANDND object with the given operands" do
        new_instruction = subject.vpandnd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPANDND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpandnq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPANDNQ object with the given operands" do
        new_instruction = subject.vpandnq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPANDNQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpandq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPANDQ object with the given operands" do
        new_instruction = subject.vpandq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPANDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpavgb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPAVGB object with the given operands" do
        new_instruction = subject.vpavgb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPAVGB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpavgw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPAVGW object with the given operands" do
        new_instruction = subject.vpavgw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPAVGW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpblendd" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBLENDD object with the given operands" do
        new_instruction = subject.vpblendd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBLENDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpblendmb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBLENDMB object with the given operands" do
        new_instruction = subject.vpblendmb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBLENDMB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpblendmd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBLENDMD object with the given operands" do
        new_instruction = subject.vpblendmd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBLENDMD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpblendmq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBLENDMQ object with the given operands" do
        new_instruction = subject.vpblendmq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBLENDMQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpblendmw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBLENDMW object with the given operands" do
        new_instruction = subject.vpblendmw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBLENDMW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpblendvb" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBLENDVB object with the given operands" do
        new_instruction = subject.vpblendvb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBLENDVB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpblendw" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBLENDW object with the given operands" do
        new_instruction = subject.vpblendw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBLENDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpbroadcastb" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem8(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBROADCASTB object with the given operands" do
        new_instruction = subject.vpbroadcastb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBROADCASTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpbroadcastd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBROADCASTD object with the given operands" do
        new_instruction = subject.vpbroadcastd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBROADCASTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpbroadcastmb2q" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBROADCASTMB2Q object with the given operands" do
        new_instruction = subject.vpbroadcastmb2q(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBROADCASTMB2Q)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpbroadcastmw2d" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBROADCASTMW2D object with the given operands" do
        new_instruction = subject.vpbroadcastmw2d(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBROADCASTMW2D)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpbroadcastq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBROADCASTQ object with the given operands" do
        new_instruction = subject.vpbroadcastq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBROADCASTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpbroadcastw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPBROADCASTW object with the given operands" do
        new_instruction = subject.vpbroadcastw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPBROADCASTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpclmulqdq" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCLMULQDQ object with the given operands" do
        new_instruction = subject.vpclmulqdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCLMULQDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmov" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMOV object with the given operands" do
        new_instruction = subject.vpcmov(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMOV)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpb" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPB object with the given operands" do
        new_instruction = subject.vpcmpb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpd" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPD object with the given operands" do
        new_instruction = subject.vpcmpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpeqb" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPEQB object with the given operands" do
        new_instruction = subject.vpcmpeqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPEQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpeqd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPEQD object with the given operands" do
        new_instruction = subject.vpcmpeqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPEQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpeqq" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPEQQ object with the given operands" do
        new_instruction = subject.vpcmpeqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPEQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpeqw" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPEQW object with the given operands" do
        new_instruction = subject.vpcmpeqw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPEQW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpestri" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPESTRI object with the given operands" do
        new_instruction = subject.vpcmpestri(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPESTRI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpestrm" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPESTRM object with the given operands" do
        new_instruction = subject.vpcmpestrm(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPESTRM)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpgtb" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPGTB object with the given operands" do
        new_instruction = subject.vpcmpgtb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPGTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpgtd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPGTD object with the given operands" do
        new_instruction = subject.vpcmpgtd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPGTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpgtq" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPGTQ object with the given operands" do
        new_instruction = subject.vpcmpgtq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPGTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpgtw" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPGTW object with the given operands" do
        new_instruction = subject.vpcmpgtw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPGTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpistri" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPISTRI object with the given operands" do
        new_instruction = subject.vpcmpistri(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPISTRI)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpistrm" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPISTRM object with the given operands" do
        new_instruction = subject.vpcmpistrm(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPISTRM)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpq" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPQ object with the given operands" do
        new_instruction = subject.vpcmpq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpub" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPUB object with the given operands" do
        new_instruction = subject.vpcmpub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpud" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPUD object with the given operands" do
        new_instruction = subject.vpcmpud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpuq" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPUQ object with the given operands" do
        new_instruction = subject.vpcmpuq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPUQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpuw" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPUW object with the given operands" do
        new_instruction = subject.vpcmpuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcmpw" do
    context "when called with 4 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCMPW object with the given operands" do
        new_instruction = subject.vpcmpw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCMPW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomb" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMB object with the given operands" do
        new_instruction = subject.vpcomb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMD object with the given operands" do
        new_instruction = subject.vpcomd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcompressb" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMPRESSB object with the given operands" do
        new_instruction = subject.vpcompressb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMPRESSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcompressd" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMPRESSD object with the given operands" do
        new_instruction = subject.vpcompressd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMPRESSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcompressq" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMPRESSQ object with the given operands" do
        new_instruction = subject.vpcompressq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMPRESSQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcompressw" do
    context "when called with 2 operands" do
      let(:operands) { [mem512(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMPRESSW object with the given operands" do
        new_instruction = subject.vpcompressw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMPRESSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomq" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMQ object with the given operands" do
        new_instruction = subject.vpcomq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomub" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMUB object with the given operands" do
        new_instruction = subject.vpcomub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomud" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMUD object with the given operands" do
        new_instruction = subject.vpcomud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomuq" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMUQ object with the given operands" do
        new_instruction = subject.vpcomuq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMUQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomuw" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMUW object with the given operands" do
        new_instruction = subject.vpcomuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpcomw" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCOMW object with the given operands" do
        new_instruction = subject.vpcomw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCOMW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpconflictd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCONFLICTD object with the given operands" do
        new_instruction = subject.vpconflictd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCONFLICTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpconflictq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPCONFLICTQ object with the given operands" do
        new_instruction = subject.vpconflictq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPCONFLICTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbssd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBSSD object with the given operands" do
        new_instruction = subject.vpdpbssd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBSSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbssds" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBSSDS object with the given operands" do
        new_instruction = subject.vpdpbssds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBSSDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbsud" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBSUD object with the given operands" do
        new_instruction = subject.vpdpbsud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBSUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbsuds" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBSUDS object with the given operands" do
        new_instruction = subject.vpdpbsuds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBSUDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbusd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBUSD object with the given operands" do
        new_instruction = subject.vpdpbusd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBUSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbusds" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBUSDS object with the given operands" do
        new_instruction = subject.vpdpbusds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBUSDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbuud" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBUUD object with the given operands" do
        new_instruction = subject.vpdpbuud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBUUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpbuuds" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPBUUDS object with the given operands" do
        new_instruction = subject.vpdpbuuds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPBUUDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwssd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWSSD object with the given operands" do
        new_instruction = subject.vpdpwssd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWSSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwssds" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWSSDS object with the given operands" do
        new_instruction = subject.vpdpwssds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWSSDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwsud" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWSUD object with the given operands" do
        new_instruction = subject.vpdpwsud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWSUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwsuds" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWSUDS object with the given operands" do
        new_instruction = subject.vpdpwsuds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWSUDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwusd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWUSD object with the given operands" do
        new_instruction = subject.vpdpwusd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWUSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwusds" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWUSDS object with the given operands" do
        new_instruction = subject.vpdpwusds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWUSDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwuud" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWUUD object with the given operands" do
        new_instruction = subject.vpdpwuud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWUUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpdpwuuds" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPDPWUUDS object with the given operands" do
        new_instruction = subject.vpdpwuuds(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPDPWUUDS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vperm2f128" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERM2F128 object with the given operands" do
        new_instruction = subject.vperm2f128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERM2F128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vperm2i128" do
    context "when called with 4 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERM2I128 object with the given operands" do
        new_instruction = subject.vperm2i128(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERM2I128)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMB object with the given operands" do
        new_instruction = subject.vpermb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMD object with the given operands" do
        new_instruction = subject.vpermd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermi2b" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMI2B object with the given operands" do
        new_instruction = subject.vpermi2b(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMI2B)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermi2d" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMI2D object with the given operands" do
        new_instruction = subject.vpermi2d(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMI2D)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermi2pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMI2PD object with the given operands" do
        new_instruction = subject.vpermi2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMI2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermi2ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMI2PS object with the given operands" do
        new_instruction = subject.vpermi2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMI2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermi2q" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMI2Q object with the given operands" do
        new_instruction = subject.vpermi2q(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMI2Q)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermi2w" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMI2W object with the given operands" do
        new_instruction = subject.vpermi2w(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMI2W)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermil2pd" do
    context "when called with 5 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMIL2PD object with the given operands" do
        new_instruction = subject.vpermil2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMIL2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermil2ps" do
    context "when called with 5 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2), ymm(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMIL2PS object with the given operands" do
        new_instruction = subject.vpermil2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMIL2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermilpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMILPD object with the given operands" do
        new_instruction = subject.vpermilpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMILPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermilps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMILPS object with the given operands" do
        new_instruction = subject.vpermilps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMILPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMPD object with the given operands" do
        new_instruction = subject.vpermpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMPS object with the given operands" do
        new_instruction = subject.vpermps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMQ object with the given operands" do
        new_instruction = subject.vpermq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermt2b" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMT2B object with the given operands" do
        new_instruction = subject.vpermt2b(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMT2B)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermt2d" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMT2D object with the given operands" do
        new_instruction = subject.vpermt2d(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMT2D)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermt2pd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMT2PD object with the given operands" do
        new_instruction = subject.vpermt2pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMT2PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermt2ps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMT2PS object with the given operands" do
        new_instruction = subject.vpermt2ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMT2PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermt2q" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMT2Q object with the given operands" do
        new_instruction = subject.vpermt2q(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMT2Q)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermt2w" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMT2W object with the given operands" do
        new_instruction = subject.vpermt2w(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMT2W)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpermw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPERMW object with the given operands" do
        new_instruction = subject.vpermw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPERMW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpexpandb" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXPANDB object with the given operands" do
        new_instruction = subject.vpexpandb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXPANDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpexpandd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXPANDD object with the given operands" do
        new_instruction = subject.vpexpandd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXPANDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpexpandq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXPANDQ object with the given operands" do
        new_instruction = subject.vpexpandq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXPANDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpexpandw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXPANDW object with the given operands" do
        new_instruction = subject.vpexpandw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXPANDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpextrb" do
    context "when called with 3 operands" do
      let(:operands) { [mem8(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXTRB object with the given operands" do
        new_instruction = subject.vpextrb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXTRB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpextrd" do
    context "when called with 3 operands" do
      let(:operands) { [mem32(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXTRD object with the given operands" do
        new_instruction = subject.vpextrd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXTRD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpextrq" do
    context "when called with 3 operands" do
      let(:operands) { [mem64(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXTRQ object with the given operands" do
        new_instruction = subject.vpextrq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXTRQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpextrw" do
    context "when called with 3 operands" do
      let(:operands) { [mem16(0), xmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPEXTRW object with the given operands" do
        new_instruction = subject.vpextrw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPEXTRW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpgatherdd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm_k(0), vm32z(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERDD object with the given operands" do
        new_instruction = subject.vpgatherdd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), vm32y(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERDD object with the given operands" do
        new_instruction = subject.vpgatherdd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpgatherdq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm_k(0), vm32y(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERDQ object with the given operands" do
        new_instruction = subject.vpgatherdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), vm32x(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERDQ object with the given operands" do
        new_instruction = subject.vpgatherdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpgatherqd" do
    context "when called with 2 operands" do
      let(:operands) { [ymm_k(0), vm64z(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERQD object with the given operands" do
        new_instruction = subject.vpgatherqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), vm64y(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERQD object with the given operands" do
        new_instruction = subject.vpgatherqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpgatherqq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm_k(0), vm64z(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERQQ object with the given operands" do
        new_instruction = subject.vpgatherqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [ymm(0), vm64y(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPGATHERQQ object with the given operands" do
        new_instruction = subject.vpgatherqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPGATHERQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddbd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDBD object with the given operands" do
        new_instruction = subject.vphaddbd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddbq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDBQ object with the given operands" do
        new_instruction = subject.vphaddbq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddbw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDBW object with the given operands" do
        new_instruction = subject.vphaddbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDD object with the given operands" do
        new_instruction = subject.vphaddd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphadddq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDDQ object with the given operands" do
        new_instruction = subject.vphadddq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddsw" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDSW object with the given operands" do
        new_instruction = subject.vphaddsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddubd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDUBD object with the given operands" do
        new_instruction = subject.vphaddubd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDUBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddubq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDUBQ object with the given operands" do
        new_instruction = subject.vphaddubq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDUBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddubw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDUBW object with the given operands" do
        new_instruction = subject.vphaddubw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDUBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddudq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDUDQ object with the given operands" do
        new_instruction = subject.vphaddudq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDUDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphadduwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDUWD object with the given operands" do
        new_instruction = subject.vphadduwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDUWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphadduwq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDUWQ object with the given operands" do
        new_instruction = subject.vphadduwq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDUWQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddw" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDW object with the given operands" do
        new_instruction = subject.vphaddw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDWD object with the given operands" do
        new_instruction = subject.vphaddwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphaddwq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHADDWQ object with the given operands" do
        new_instruction = subject.vphaddwq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHADDWQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphminposuw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHMINPOSUW object with the given operands" do
        new_instruction = subject.vphminposuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHMINPOSUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphsubbw" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHSUBBW object with the given operands" do
        new_instruction = subject.vphsubbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHSUBBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphsubd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHSUBD object with the given operands" do
        new_instruction = subject.vphsubd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHSUBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphsubdq" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHSUBDQ object with the given operands" do
        new_instruction = subject.vphsubdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHSUBDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphsubsw" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHSUBSW object with the given operands" do
        new_instruction = subject.vphsubsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHSUBSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphsubw" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHSUBW object with the given operands" do
        new_instruction = subject.vphsubw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHSUBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vphsubwd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPHSUBWD object with the given operands" do
        new_instruction = subject.vphsubwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPHSUBWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpinsrb" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem8(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPINSRB object with the given operands" do
        new_instruction = subject.vpinsrb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPINSRB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpinsrd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPINSRD object with the given operands" do
        new_instruction = subject.vpinsrd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPINSRD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpinsrq" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPINSRQ object with the given operands" do
        new_instruction = subject.vpinsrq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPINSRQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpinsrw" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPINSRW object with the given operands" do
        new_instruction = subject.vpinsrw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPINSRW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vplzcntd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPLZCNTD object with the given operands" do
        new_instruction = subject.vplzcntd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPLZCNTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vplzcntq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPLZCNTQ object with the given operands" do
        new_instruction = subject.vplzcntq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPLZCNTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacsdd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSDD object with the given operands" do
        new_instruction = subject.vpmacsdd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacsdqh" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSDQH object with the given operands" do
        new_instruction = subject.vpmacsdqh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSDQH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacsdql" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSDQL object with the given operands" do
        new_instruction = subject.vpmacsdql(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSDQL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacssdd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSSDD object with the given operands" do
        new_instruction = subject.vpmacssdd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSSDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacssdqh" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSSDQH object with the given operands" do
        new_instruction = subject.vpmacssdqh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSSDQH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacssdql" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSSDQL object with the given operands" do
        new_instruction = subject.vpmacssdql(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSSDQL)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacsswd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSSWD object with the given operands" do
        new_instruction = subject.vpmacsswd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSSWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacssww" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSSWW object with the given operands" do
        new_instruction = subject.vpmacssww(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSSWW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacswd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSWD object with the given operands" do
        new_instruction = subject.vpmacswd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmacsww" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMACSWW object with the given operands" do
        new_instruction = subject.vpmacsww(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMACSWW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmadcsswd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMADCSSWD object with the given operands" do
        new_instruction = subject.vpmadcsswd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMADCSSWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmadcswd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMADCSWD object with the given operands" do
        new_instruction = subject.vpmadcswd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMADCSWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmadd52huq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMADD52HUQ object with the given operands" do
        new_instruction = subject.vpmadd52huq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMADD52HUQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmadd52luq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMADD52LUQ object with the given operands" do
        new_instruction = subject.vpmadd52luq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMADD52LUQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaddubsw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMADDUBSW object with the given operands" do
        new_instruction = subject.vpmaddubsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMADDUBSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaddwd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMADDWD object with the given operands" do
        new_instruction = subject.vpmaddwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMADDWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaskmovd" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), ymm(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMASKMOVD object with the given operands" do
        new_instruction = subject.vpmaskmovd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMASKMOVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaskmovq" do
    context "when called with 3 operands" do
      let(:operands) { [mem256(0), ymm(1), ymm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMASKMOVQ object with the given operands" do
        new_instruction = subject.vpmaskmovq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMASKMOVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxsb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXSB object with the given operands" do
        new_instruction = subject.vpmaxsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxsd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXSD object with the given operands" do
        new_instruction = subject.vpmaxsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxsq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXSQ object with the given operands" do
        new_instruction = subject.vpmaxsq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXSQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxsw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXSW object with the given operands" do
        new_instruction = subject.vpmaxsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxub" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXUB object with the given operands" do
        new_instruction = subject.vpmaxub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxud" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXUD object with the given operands" do
        new_instruction = subject.vpmaxud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxuq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXUQ object with the given operands" do
        new_instruction = subject.vpmaxuq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXUQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmaxuw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMAXUW object with the given operands" do
        new_instruction = subject.vpmaxuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMAXUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminsb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINSB object with the given operands" do
        new_instruction = subject.vpminsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminsd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINSD object with the given operands" do
        new_instruction = subject.vpminsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminsq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINSQ object with the given operands" do
        new_instruction = subject.vpminsq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINSQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminsw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINSW object with the given operands" do
        new_instruction = subject.vpminsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminub" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINUB object with the given operands" do
        new_instruction = subject.vpminub(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINUB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminud" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINUD object with the given operands" do
        new_instruction = subject.vpminud(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINUD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminuq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINUQ object with the given operands" do
        new_instruction = subject.vpminuq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINUQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpminuw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMINUW object with the given operands" do
        new_instruction = subject.vpminuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMINUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovb2m" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVB2M object with the given operands" do
        new_instruction = subject.vpmovb2m(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVB2M)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovd2m" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVD2M object with the given operands" do
        new_instruction = subject.vpmovd2m(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVD2M)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovdb" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVDB object with the given operands" do
        new_instruction = subject.vpmovdb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovdw" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVDW object with the given operands" do
        new_instruction = subject.vpmovdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovm2b" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVM2B object with the given operands" do
        new_instruction = subject.vpmovm2b(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVM2B)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovm2d" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVM2D object with the given operands" do
        new_instruction = subject.vpmovm2d(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVM2D)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovm2q" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVM2Q object with the given operands" do
        new_instruction = subject.vpmovm2q(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVM2Q)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovm2w" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), k(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVM2W object with the given operands" do
        new_instruction = subject.vpmovm2w(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVM2W)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovmskb" do
    context "when called with 2 operands" do
      let(:operands) { [reg32(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVMSKB object with the given operands" do
        new_instruction = subject.vpmovmskb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVMSKB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovq2m" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVQ2M object with the given operands" do
        new_instruction = subject.vpmovq2m(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVQ2M)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovqb" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVQB object with the given operands" do
        new_instruction = subject.vpmovqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovqd" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVQD object with the given operands" do
        new_instruction = subject.vpmovqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovqw" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVQW object with the given operands" do
        new_instruction = subject.vpmovqw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVQW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsdb" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSDB object with the given operands" do
        new_instruction = subject.vpmovsdb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsdw" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSDW object with the given operands" do
        new_instruction = subject.vpmovsdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsqb" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSQB object with the given operands" do
        new_instruction = subject.vpmovsqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsqd" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSQD object with the given operands" do
        new_instruction = subject.vpmovsqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsqw" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSQW object with the given operands" do
        new_instruction = subject.vpmovsqw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSQW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovswb" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSWB object with the given operands" do
        new_instruction = subject.vpmovswb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsxbd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSXBD object with the given operands" do
        new_instruction = subject.vpmovsxbd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSXBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsxbq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSXBQ object with the given operands" do
        new_instruction = subject.vpmovsxbq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSXBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsxbw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSXBW object with the given operands" do
        new_instruction = subject.vpmovsxbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSXBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsxdq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSXDQ object with the given operands" do
        new_instruction = subject.vpmovsxdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSXDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsxwd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSXWD object with the given operands" do
        new_instruction = subject.vpmovsxwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSXWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovsxwq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVSXWQ object with the given operands" do
        new_instruction = subject.vpmovsxwq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVSXWQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovusdb" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVUSDB object with the given operands" do
        new_instruction = subject.vpmovusdb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVUSDB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovusdw" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVUSDW object with the given operands" do
        new_instruction = subject.vpmovusdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVUSDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovusqb" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVUSQB object with the given operands" do
        new_instruction = subject.vpmovusqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVUSQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovusqd" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVUSQD object with the given operands" do
        new_instruction = subject.vpmovusqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVUSQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovusqw" do
    context "when called with 2 operands" do
      let(:operands) { [mem128(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVUSQW object with the given operands" do
        new_instruction = subject.vpmovusqw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVUSQW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovuswb" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVUSWB object with the given operands" do
        new_instruction = subject.vpmovuswb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVUSWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovw2m" do
    context "when called with 2 operands" do
      let(:operands) { [k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVW2M object with the given operands" do
        new_instruction = subject.vpmovw2m(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVW2M)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovwb" do
    context "when called with 2 operands" do
      let(:operands) { [mem256(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVWB object with the given operands" do
        new_instruction = subject.vpmovwb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVWB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovzxbd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVZXBD object with the given operands" do
        new_instruction = subject.vpmovzxbd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVZXBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovzxbq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVZXBQ object with the given operands" do
        new_instruction = subject.vpmovzxbq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVZXBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovzxbw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVZXBW object with the given operands" do
        new_instruction = subject.vpmovzxbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVZXBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovzxdq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVZXDQ object with the given operands" do
        new_instruction = subject.vpmovzxdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVZXDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovzxwd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVZXWD object with the given operands" do
        new_instruction = subject.vpmovzxwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVZXWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmovzxwq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMOVZXWQ object with the given operands" do
        new_instruction = subject.vpmovzxwq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMOVZXWQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmuldq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULDQ object with the given operands" do
        new_instruction = subject.vpmuldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmulhrsw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULHRSW object with the given operands" do
        new_instruction = subject.vpmulhrsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULHRSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmulhuw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULHUW object with the given operands" do
        new_instruction = subject.vpmulhuw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULHUW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmulhw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULHW object with the given operands" do
        new_instruction = subject.vpmulhw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULHW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmulld" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULLD object with the given operands" do
        new_instruction = subject.vpmulld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmullq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULLQ object with the given operands" do
        new_instruction = subject.vpmullq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmullw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULLW object with the given operands" do
        new_instruction = subject.vpmullw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmultishiftqb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULTISHIFTQB object with the given operands" do
        new_instruction = subject.vpmultishiftqb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULTISHIFTQB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpmuludq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPMULUDQ object with the given operands" do
        new_instruction = subject.vpmuludq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPMULUDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpopcntb" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPOPCNTB object with the given operands" do
        new_instruction = subject.vpopcntb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPOPCNTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpopcntd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPOPCNTD object with the given operands" do
        new_instruction = subject.vpopcntd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPOPCNTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpopcntq" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPOPCNTQ object with the given operands" do
        new_instruction = subject.vpopcntq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPOPCNTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpopcntw" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), mem512(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPOPCNTW object with the given operands" do
        new_instruction = subject.vpopcntw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPOPCNTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpor" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPOR object with the given operands" do
        new_instruction = subject.vpor(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPOR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpord" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPORD object with the given operands" do
        new_instruction = subject.vpord(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPORD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vporq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPORQ object with the given operands" do
        new_instruction = subject.vporq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPORQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpperm" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), xmm(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPPERM object with the given operands" do
        new_instruction = subject.vpperm(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPPERM)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprold" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROLD object with the given operands" do
        new_instruction = subject.vprold(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprolq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROLQ object with the given operands" do
        new_instruction = subject.vprolq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprolvd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROLVD object with the given operands" do
        new_instruction = subject.vprolvd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROLVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprolvq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROLVQ object with the given operands" do
        new_instruction = subject.vprolvq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROLVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprord" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPRORD object with the given operands" do
        new_instruction = subject.vprord(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPRORD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprorq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPRORQ object with the given operands" do
        new_instruction = subject.vprorq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPRORQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprorvd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPRORVD object with the given operands" do
        new_instruction = subject.vprorvd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPRORVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprorvq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPRORVQ object with the given operands" do
        new_instruction = subject.vprorvq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPRORVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprotb" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROTB object with the given operands" do
        new_instruction = subject.vprotb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROTB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprotd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROTD object with the given operands" do
        new_instruction = subject.vprotd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROTD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprotq" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROTQ object with the given operands" do
        new_instruction = subject.vprotq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROTQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vprotw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPROTW object with the given operands" do
        new_instruction = subject.vprotw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPROTW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsadbw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSADBW object with the given operands" do
        new_instruction = subject.vpsadbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSADBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpscatterdd" do
    context "when called with 2 operands" do
      let(:operands) { [vm32z_k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSCATTERDD object with the given operands" do
        new_instruction = subject.vpscatterdd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSCATTERDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpscatterdq" do
    context "when called with 2 operands" do
      let(:operands) { [vm32y_k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSCATTERDQ object with the given operands" do
        new_instruction = subject.vpscatterdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSCATTERDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpscatterqd" do
    context "when called with 2 operands" do
      let(:operands) { [vm64z_k(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSCATTERQD object with the given operands" do
        new_instruction = subject.vpscatterqd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSCATTERQD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpscatterqq" do
    context "when called with 2 operands" do
      let(:operands) { [vm64z_k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSCATTERQQ object with the given operands" do
        new_instruction = subject.vpscatterqq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSCATTERQQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshab" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHAB object with the given operands" do
        new_instruction = subject.vpshab(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHAB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshad" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHAD object with the given operands" do
        new_instruction = subject.vpshad(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHAD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshaq" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHAQ object with the given operands" do
        new_instruction = subject.vpshaq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHAQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshaw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHAW object with the given operands" do
        new_instruction = subject.vpshaw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHAW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshlb" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLB object with the given operands" do
        new_instruction = subject.vpshlb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshld" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLD object with the given operands" do
        new_instruction = subject.vpshld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshldd" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLDD object with the given operands" do
        new_instruction = subject.vpshldd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshldq" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLDQ object with the given operands" do
        new_instruction = subject.vpshldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshldvd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLDVD object with the given operands" do
        new_instruction = subject.vpshldvd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLDVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshldvq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLDVQ object with the given operands" do
        new_instruction = subject.vpshldvq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLDVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshldvw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLDVW object with the given operands" do
        new_instruction = subject.vpshldvw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLDVW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshldw" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLDW object with the given operands" do
        new_instruction = subject.vpshldw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshlq" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLQ object with the given operands" do
        new_instruction = subject.vpshlq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshlw" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), mem128(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHLW object with the given operands" do
        new_instruction = subject.vpshlw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshrdd" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHRDD object with the given operands" do
        new_instruction = subject.vpshrdd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHRDD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshrdq" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHRDQ object with the given operands" do
        new_instruction = subject.vpshrdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHRDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshrdvd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHRDVD object with the given operands" do
        new_instruction = subject.vpshrdvd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHRDVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshrdvq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHRDVQ object with the given operands" do
        new_instruction = subject.vpshrdvq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHRDVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshrdvw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHRDVW object with the given operands" do
        new_instruction = subject.vpshrdvw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHRDVW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshrdw" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHRDW object with the given operands" do
        new_instruction = subject.vpshrdw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHRDW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshufb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHUFB object with the given operands" do
        new_instruction = subject.vpshufb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHUFB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshufbitqmb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHUFBITQMB object with the given operands" do
        new_instruction = subject.vpshufbitqmb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHUFBITQMB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshufd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHUFD object with the given operands" do
        new_instruction = subject.vpshufd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHUFD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshufhw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHUFHW object with the given operands" do
        new_instruction = subject.vpshufhw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHUFHW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpshuflw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSHUFLW object with the given operands" do
        new_instruction = subject.vpshuflw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSHUFLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsignb" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSIGNB object with the given operands" do
        new_instruction = subject.vpsignb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSIGNB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsignd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSIGND object with the given operands" do
        new_instruction = subject.vpsignd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSIGND)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsignw" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSIGNW object with the given operands" do
        new_instruction = subject.vpsignw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSIGNW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpslld" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSLLD object with the given operands" do
        new_instruction = subject.vpslld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSLLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpslldq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSLLDQ object with the given operands" do
        new_instruction = subject.vpslldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSLLDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsllq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSLLQ object with the given operands" do
        new_instruction = subject.vpsllq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSLLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsllvd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSLLVD object with the given operands" do
        new_instruction = subject.vpsllvd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSLLVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsllvq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSLLVQ object with the given operands" do
        new_instruction = subject.vpsllvq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSLLVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsllvw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSLLVW object with the given operands" do
        new_instruction = subject.vpsllvw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSLLVW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsllw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSLLW object with the given operands" do
        new_instruction = subject.vpsllw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSLLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrad" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRAD object with the given operands" do
        new_instruction = subject.vpsrad(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRAD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsraq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRAQ object with the given operands" do
        new_instruction = subject.vpsraq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRAQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsravd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRAVD object with the given operands" do
        new_instruction = subject.vpsravd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRAVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsravq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRAVQ object with the given operands" do
        new_instruction = subject.vpsravq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRAVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsravw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRAVW object with the given operands" do
        new_instruction = subject.vpsravw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRAVW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsraw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRAW object with the given operands" do
        new_instruction = subject.vpsraw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRAW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrld" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRLD object with the given operands" do
        new_instruction = subject.vpsrld(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRLD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrldq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRLDQ object with the given operands" do
        new_instruction = subject.vpsrldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRLDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrlq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRLQ object with the given operands" do
        new_instruction = subject.vpsrlq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRLQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrlvd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRLVD object with the given operands" do
        new_instruction = subject.vpsrlvd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRLVD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrlvq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRLVQ object with the given operands" do
        new_instruction = subject.vpsrlvq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRLVQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrlvw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRLVW object with the given operands" do
        new_instruction = subject.vpsrlvw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRLVW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsrlw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), mem512(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSRLW object with the given operands" do
        new_instruction = subject.vpsrlw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSRLW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBB object with the given operands" do
        new_instruction = subject.vpsubb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBD object with the given operands" do
        new_instruction = subject.vpsubd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBQ object with the given operands" do
        new_instruction = subject.vpsubq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubsb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBSB object with the given operands" do
        new_instruction = subject.vpsubsb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubsw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBSW object with the given operands" do
        new_instruction = subject.vpsubsw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubusb" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBUSB object with the given operands" do
        new_instruction = subject.vpsubusb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBUSB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubusw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBUSW object with the given operands" do
        new_instruction = subject.vpsubusw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBUSW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpsubw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPSUBW object with the given operands" do
        new_instruction = subject.vpsubw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPSUBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpternlogd" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTERNLOGD object with the given operands" do
        new_instruction = subject.vpternlogd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTERNLOGD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpternlogq" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTERNLOGQ object with the given operands" do
        new_instruction = subject.vpternlogq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTERNLOGQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptest" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTEST object with the given operands" do
        new_instruction = subject.vptest(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTEST)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestmb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTMB object with the given operands" do
        new_instruction = subject.vptestmb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTMB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestmd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTMD object with the given operands" do
        new_instruction = subject.vptestmd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTMD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestmq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTMQ object with the given operands" do
        new_instruction = subject.vptestmq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTMQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestmw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTMW object with the given operands" do
        new_instruction = subject.vptestmw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTMW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestnmb" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTNMB object with the given operands" do
        new_instruction = subject.vptestnmb(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTNMB)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestnmd" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTNMD object with the given operands" do
        new_instruction = subject.vptestnmd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTNMD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestnmq" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTNMQ object with the given operands" do
        new_instruction = subject.vptestnmq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTNMQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vptestnmw" do
    context "when called with 3 operands" do
      let(:operands) { [k(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPTESTNMW object with the given operands" do
        new_instruction = subject.vptestnmw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPTESTNMW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpckhbw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKHBW object with the given operands" do
        new_instruction = subject.vpunpckhbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKHBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpckhdq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKHDQ object with the given operands" do
        new_instruction = subject.vpunpckhdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKHDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpckhqdq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKHQDQ object with the given operands" do
        new_instruction = subject.vpunpckhqdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKHQDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpckhwd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKHWD object with the given operands" do
        new_instruction = subject.vpunpckhwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKHWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpcklbw" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKLBW object with the given operands" do
        new_instruction = subject.vpunpcklbw(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKLBW)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpckldq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKLDQ object with the given operands" do
        new_instruction = subject.vpunpckldq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKLDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpcklqdq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKLQDQ object with the given operands" do
        new_instruction = subject.vpunpcklqdq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKLQDQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpunpcklwd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), mem512(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPUNPCKLWD object with the given operands" do
        new_instruction = subject.vpunpcklwd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPUNPCKLWD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpxor" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPXOR object with the given operands" do
        new_instruction = subject.vpxor(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPXOR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpxord" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPXORD object with the given operands" do
        new_instruction = subject.vpxord(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPXORD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vpxorq" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VPXORQ object with the given operands" do
        new_instruction = subject.vpxorq(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VPXORQ)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrangepd" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGEPD object with the given operands" do
        new_instruction = subject.vrangepd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGEPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGEPD object with the given operands" do
        new_instruction = subject.vrangepd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGEPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrangeps" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGEPS object with the given operands" do
        new_instruction = subject.vrangeps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGEPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGEPS object with the given operands" do
        new_instruction = subject.vrangeps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGEPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrangesd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGESD object with the given operands" do
        new_instruction = subject.vrangesd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGESD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGESD object with the given operands" do
        new_instruction = subject.vrangesd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGESD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrangess" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGESS object with the given operands" do
        new_instruction = subject.vrangess(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGESS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRANGESS object with the given operands" do
        new_instruction = subject.vrangess(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRANGESS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp14pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP14PD object with the given operands" do
        new_instruction = subject.vrcp14pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP14PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp14ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP14PS object with the given operands" do
        new_instruction = subject.vrcp14ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP14PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp14sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP14SD object with the given operands" do
        new_instruction = subject.vrcp14sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP14SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp14ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP14SS object with the given operands" do
        new_instruction = subject.vrcp14ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP14SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp28pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28PD object with the given operands" do
        new_instruction = subject.vrcp28pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28PD object with the given operands" do
        new_instruction = subject.vrcp28pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp28ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28PS object with the given operands" do
        new_instruction = subject.vrcp28ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28PS object with the given operands" do
        new_instruction = subject.vrcp28ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp28sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28SD object with the given operands" do
        new_instruction = subject.vrcp28sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28SD object with the given operands" do
        new_instruction = subject.vrcp28sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcp28ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28SS object with the given operands" do
        new_instruction = subject.vrcp28ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCP28SS object with the given operands" do
        new_instruction = subject.vrcp28ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCP28SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcpph" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCPPH object with the given operands" do
        new_instruction = subject.vrcpph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCPPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcpps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCPPS object with the given operands" do
        new_instruction = subject.vrcpps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCPPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcpsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCPSH object with the given operands" do
        new_instruction = subject.vrcpsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCPSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrcpss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRCPSS object with the given operands" do
        new_instruction = subject.vrcpss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRCPSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vreducepd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCEPD object with the given operands" do
        new_instruction = subject.vreducepd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCEPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vreduceph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCEPH object with the given operands" do
        new_instruction = subject.vreduceph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCEPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCEPH object with the given operands" do
        new_instruction = subject.vreduceph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCEPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vreduceps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCEPS object with the given operands" do
        new_instruction = subject.vreduceps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCEPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vreducesd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCESD object with the given operands" do
        new_instruction = subject.vreducesd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCESD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vreducesh" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCESH object with the given operands" do
        new_instruction = subject.vreducesh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCESH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCESH object with the given operands" do
        new_instruction = subject.vreducesh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCESH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vreducess" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VREDUCESS object with the given operands" do
        new_instruction = subject.vreducess(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VREDUCESS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrndscalepd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALEPD object with the given operands" do
        new_instruction = subject.vrndscalepd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALEPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALEPD object with the given operands" do
        new_instruction = subject.vrndscalepd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALEPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrndscaleph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALEPH object with the given operands" do
        new_instruction = subject.vrndscaleph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALEPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALEPH object with the given operands" do
        new_instruction = subject.vrndscaleph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALEPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrndscaleps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALEPS object with the given operands" do
        new_instruction = subject.vrndscaleps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALEPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALEPS object with the given operands" do
        new_instruction = subject.vrndscaleps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALEPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrndscalesd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALESD object with the given operands" do
        new_instruction = subject.vrndscalesd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALESD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALESD object with the given operands" do
        new_instruction = subject.vrndscalesd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALESD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrndscalesh" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALESH object with the given operands" do
        new_instruction = subject.vrndscalesh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALESH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALESH object with the given operands" do
        new_instruction = subject.vrndscalesh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALESH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrndscaless" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALESS object with the given operands" do
        new_instruction = subject.vrndscaless(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALESS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 5 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3), imm8(4)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRNDSCALESS object with the given operands" do
        new_instruction = subject.vrndscaless(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRNDSCALESS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vroundpd" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), mem256(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VROUNDPD object with the given operands" do
        new_instruction = subject.vroundpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VROUNDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vroundps" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), mem256(1), imm8(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VROUNDPS object with the given operands" do
        new_instruction = subject.vroundps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VROUNDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vroundsd" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VROUNDSD object with the given operands" do
        new_instruction = subject.vroundsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VROUNDSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vroundss" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VROUNDSS object with the given operands" do
        new_instruction = subject.vroundss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VROUNDSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt14pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT14PD object with the given operands" do
        new_instruction = subject.vrsqrt14pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT14PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt14ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT14PS object with the given operands" do
        new_instruction = subject.vrsqrt14ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT14PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt14sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT14SD object with the given operands" do
        new_instruction = subject.vrsqrt14sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT14SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt14ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT14SS object with the given operands" do
        new_instruction = subject.vrsqrt14ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT14SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt28pd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28PD object with the given operands" do
        new_instruction = subject.vrsqrt28pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28PD object with the given operands" do
        new_instruction = subject.vrsqrt28pd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28PD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt28ps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28PS object with the given operands" do
        new_instruction = subject.vrsqrt28ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28PS object with the given operands" do
        new_instruction = subject.vrsqrt28ps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28PS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt28sd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28SD object with the given operands" do
        new_instruction = subject.vrsqrt28sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28SD object with the given operands" do
        new_instruction = subject.vrsqrt28sd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28SD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrt28ss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28SS object with the given operands" do
        new_instruction = subject.vrsqrt28ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), sae(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRT28SS object with the given operands" do
        new_instruction = subject.vrsqrt28ss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRT28SS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrtph" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRTPH object with the given operands" do
        new_instruction = subject.vrsqrtph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRTPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrtps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRTPS object with the given operands" do
        new_instruction = subject.vrsqrtps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrtsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRTSH object with the given operands" do
        new_instruction = subject.vrsqrtsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRTSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vrsqrtss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VRSQRTSS object with the given operands" do
        new_instruction = subject.vrsqrtss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VRSQRTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscalefpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFPD object with the given operands" do
        new_instruction = subject.vscalefpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFPD object with the given operands" do
        new_instruction = subject.vscalefpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscalefph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFPH object with the given operands" do
        new_instruction = subject.vscalefph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFPH object with the given operands" do
        new_instruction = subject.vscalefph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscalefps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFPS object with the given operands" do
        new_instruction = subject.vscalefps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFPS object with the given operands" do
        new_instruction = subject.vscalefps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscalefsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFSD object with the given operands" do
        new_instruction = subject.vscalefsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFSD object with the given operands" do
        new_instruction = subject.vscalefsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscalefsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFSH object with the given operands" do
        new_instruction = subject.vscalefsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFSH object with the given operands" do
        new_instruction = subject.vscalefsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscalefss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFSS object with the given operands" do
        new_instruction = subject.vscalefss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCALEFSS object with the given operands" do
        new_instruction = subject.vscalefss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCALEFSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterdpd" do
    context "when called with 2 operands" do
      let(:operands) { [vm32y_k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERDPD object with the given operands" do
        new_instruction = subject.vscatterdpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERDPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterdps" do
    context "when called with 2 operands" do
      let(:operands) { [vm32z_k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERDPS object with the given operands" do
        new_instruction = subject.vscatterdps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERDPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf0dpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm32y_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF0DPD object with the given operands" do
        new_instruction = subject.vscatterpf0dpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF0DPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf0dps" do
    context "when called with 1 operand" do
      let(:operands) { [vm32z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF0DPS object with the given operands" do
        new_instruction = subject.vscatterpf0dps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF0DPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf0qpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF0QPD object with the given operands" do
        new_instruction = subject.vscatterpf0qpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF0QPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf0qps" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF0QPS object with the given operands" do
        new_instruction = subject.vscatterpf0qps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF0QPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf1dpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm32y_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF1DPD object with the given operands" do
        new_instruction = subject.vscatterpf1dpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF1DPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf1dps" do
    context "when called with 1 operand" do
      let(:operands) { [vm32z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF1DPS object with the given operands" do
        new_instruction = subject.vscatterpf1dps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF1DPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf1qpd" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF1QPD object with the given operands" do
        new_instruction = subject.vscatterpf1qpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF1QPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterpf1qps" do
    context "when called with 1 operand" do
      let(:operands) { [vm64z_k(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERPF1QPS object with the given operands" do
        new_instruction = subject.vscatterpf1qps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERPF1QPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterqpd" do
    context "when called with 2 operands" do
      let(:operands) { [vm64z_k(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERQPD object with the given operands" do
        new_instruction = subject.vscatterqpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERQPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vscatterqps" do
    context "when called with 2 operands" do
      let(:operands) { [vm64z_k(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSCATTERQPS object with the given operands" do
        new_instruction = subject.vscatterqps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSCATTERQPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsha512msg1" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), xmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHA512MSG1 object with the given operands" do
        new_instruction = subject.vsha512msg1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHA512MSG1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsha512msg2" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), ymm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHA512MSG2 object with the given operands" do
        new_instruction = subject.vsha512msg2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHA512MSG2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsha512rnds2" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), xmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHA512RNDS2 object with the given operands" do
        new_instruction = subject.vsha512rnds2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHA512RNDS2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vshuff32x4" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHUFF32X4 object with the given operands" do
        new_instruction = subject.vshuff32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHUFF32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vshuff64x2" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHUFF64X2 object with the given operands" do
        new_instruction = subject.vshuff64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHUFF64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vshufi32x4" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHUFI32X4 object with the given operands" do
        new_instruction = subject.vshufi32x4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHUFI32X4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vshufi64x2" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHUFI64X2 object with the given operands" do
        new_instruction = subject.vshufi64x2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHUFI64X2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vshufpd" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHUFPD object with the given operands" do
        new_instruction = subject.vshufpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHUFPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vshufps" do
    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSHUFPS object with the given operands" do
        new_instruction = subject.vshufps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSHUFPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsm3msg1" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSM3MSG1 object with the given operands" do
        new_instruction = subject.vsm3msg1(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSM3MSG1)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsm3msg2" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSM3MSG2 object with the given operands" do
        new_instruction = subject.vsm3msg2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSM3MSG2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsm3rnds2" do
    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), mem128(2), imm8(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSM3RNDS2 object with the given operands" do
        new_instruction = subject.vsm3rnds2(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSM3RNDS2)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsm4key4" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSM4KEY4 object with the given operands" do
        new_instruction = subject.vsm4key4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSM4KEY4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsm4rnds4" do
    context "when called with 3 operands" do
      let(:operands) { [ymm(0), ymm(1), mem256(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSM4RNDS4 object with the given operands" do
        new_instruction = subject.vsm4rnds4(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSM4RNDS4)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsqrtpd" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTPD object with the given operands" do
        new_instruction = subject.vsqrtpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTPD object with the given operands" do
        new_instruction = subject.vsqrtpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsqrtph" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTPH object with the given operands" do
        new_instruction = subject.vsqrtph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTPH object with the given operands" do
        new_instruction = subject.vsqrtph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsqrtps" do
    context "when called with 2 operands" do
      let(:operands) { [zmm(0), zmm(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTPS object with the given operands" do
        new_instruction = subject.vsqrtps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), er(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTPS object with the given operands" do
        new_instruction = subject.vsqrtps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsqrtsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTSD object with the given operands" do
        new_instruction = subject.vsqrtsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTSD object with the given operands" do
        new_instruction = subject.vsqrtsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsqrtsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTSH object with the given operands" do
        new_instruction = subject.vsqrtsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTSH object with the given operands" do
        new_instruction = subject.vsqrtsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsqrtss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTSS object with the given operands" do
        new_instruction = subject.vsqrtss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSQRTSS object with the given operands" do
        new_instruction = subject.vsqrtss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSQRTSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vstmxcsr" do
    context "when called with 1 operand" do
      let(:operands) { [mem32(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSTMXCSR object with the given operands" do
        new_instruction = subject.vstmxcsr(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSTMXCSR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsubpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBPD object with the given operands" do
        new_instruction = subject.vsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBPD object with the given operands" do
        new_instruction = subject.vsubpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsubph" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBPH object with the given operands" do
        new_instruction = subject.vsubph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBPH object with the given operands" do
        new_instruction = subject.vsubph(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBPH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsubps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBPS object with the given operands" do
        new_instruction = subject.vsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBPS object with the given operands" do
        new_instruction = subject.vsubps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsubsd" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem64(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBSD object with the given operands" do
        new_instruction = subject.vsubsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBSD object with the given operands" do
        new_instruction = subject.vsubsd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBSD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsubsh" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem16(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBSH object with the given operands" do
        new_instruction = subject.vsubsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBSH object with the given operands" do
        new_instruction = subject.vsubsh(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBSH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vsubss" do
    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), mem32(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBSS object with the given operands" do
        new_instruction = subject.vsubss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 4 operands" do
      let(:operands) { [xmm(0), xmm(1), xmm(2), er(3)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VSUBSS object with the given operands" do
        new_instruction = subject.vsubss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VSUBSS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vtestpd" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VTESTPD object with the given operands" do
        new_instruction = subject.vtestpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VTESTPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vtestps" do
    context "when called with 2 operands" do
      let(:operands) { [ymm(0), mem256(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VTESTPS object with the given operands" do
        new_instruction = subject.vtestps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VTESTPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vucomisd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUCOMISD object with the given operands" do
        new_instruction = subject.vucomisd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUCOMISD)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUCOMISD object with the given operands" do
        new_instruction = subject.vucomisd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUCOMISD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vucomish" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem16(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUCOMISH object with the given operands" do
        new_instruction = subject.vucomish(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUCOMISH)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUCOMISH object with the given operands" do
        new_instruction = subject.vucomish(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUCOMISH)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vucomiss" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem32(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUCOMISS object with the given operands" do
        new_instruction = subject.vucomiss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUCOMISS)
        expect(new_instruction.operands).to eq(operands)
      end
    end

    context "when called with 3 operands" do
      let(:operands) { [xmm(0), xmm(1), sae(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUCOMISS object with the given operands" do
        new_instruction = subject.vucomiss(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUCOMISS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vunpckhpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUNPCKHPD object with the given operands" do
        new_instruction = subject.vunpckhpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUNPCKHPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vunpckhps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUNPCKHPS object with the given operands" do
        new_instruction = subject.vunpckhps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUNPCKHPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vunpcklpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUNPCKLPD object with the given operands" do
        new_instruction = subject.vunpcklpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUNPCKLPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vunpcklps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VUNPCKLPS object with the given operands" do
        new_instruction = subject.vunpcklps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VUNPCKLPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vxorpd" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VXORPD object with the given operands" do
        new_instruction = subject.vxorpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VXORPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vxorps" do
    context "when called with 3 operands" do
      let(:operands) { [zmm(0), zmm(1), zmm(2)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::VXORPS object with the given operands" do
        new_instruction = subject.vxorps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VXORPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#vzeroall" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::VZEROALL object with no operands" do
        new_instruction = subject.vzeroall

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VZEROALL)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#vzeroupper" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::VZEROUPPER object with no operands" do
        new_instruction = subject.vzeroupper

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::VZEROUPPER)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#wrfsbase" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::WRFSBASE object with the given operands" do
        new_instruction = subject.wrfsbase(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::WRFSBASE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#wrgsbase" do
    context "when called with 1 operand" do
      let(:operands) { [reg64(0)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::WRGSBASE object with the given operands" do
        new_instruction = subject.wrgsbase(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::WRGSBASE)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#xadd" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::XADD object with the given operands" do
        new_instruction = subject.xadd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::XADD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#xchg" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::XCHG object with the given operands" do
        new_instruction = subject.xchg(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::XCHG)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#xgetbv" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::XGETBV object with no operands" do
        new_instruction = subject.xgetbv

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::XGETBV)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#xlatb" do
    context "when called with no operands" do
      it "must create a Ronin::ASM::X86_64::Instructions::XLATB object with no operands" do
        new_instruction = subject.xlatb

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::XLATB)
        expect(new_instruction.operands).to be_empty
      end
    end
  end

  describe "#xor" do
    context "when called with 2 operands" do
      let(:operands) { [mem64(0), reg64(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::XOR object with the given operands" do
        new_instruction = subject.xor(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::XOR)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#xorpd" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::XORPD object with the given operands" do
        new_instruction = subject.xorpd(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::XORPD)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end

  describe "#xorps" do
    context "when called with 2 operands" do
      let(:operands) { [xmm(0), mem128(1)] }

      it "must create a new Ronin::ASM::X86_64::Instructions::XORPS object with the given operands" do
        new_instruction = subject.xorps(*operands)

        expect(new_instruction).to be_a(Ronin::ASM::X86_64::Instructions::XORPS)
        expect(new_instruction.operands).to eq(operands)
      end
    end
  end
end
