require 'spec_helper'
require 'ronin/asm/x86_64/syntaxes/ruby'

require 'ronin/asm/x86_64/operands'

describe Ronin::ASM::X86_64::Syntaxes::Ruby do
  it "must inherit from Ronin::ASM::X86::Syntaxes::Ruby" do
    expect(described_class).to be < Ronin::ASM::X86::Syntaxes::Ruby
  end

  describe ".format_decorator" do
    subject { described_class }

    context "when given Ronin::ASM::X86_64::Operands::RN_SAE" do
      let(:operand) { Ronin::ASM::X86_64::Operands::RN_SAE }

      it "must return 'rn_sae'" do
        expect(subject.format_decorator(operand)).to eq('rn_sae')
      end
    end

    context "when given Ronin::ASM::X86_64::Operands::RD_SAE" do
      let(:operand) { Ronin::ASM::X86_64::Operands::RD_SAE }

      it "must return 'rd_sae'" do
        expect(subject.format_decorator(operand)).to eq('rd_sae')
      end
    end

    context "when given Ronin::ASM::X86_64::Operands::RU_SAE" do
      let(:operand) { Ronin::ASM::X86_64::Operands::RU_SAE }

      it "must return 'ru_sae'" do
        expect(subject.format_decorator(operand)).to eq('ru_sae')
      end
    end

    context "when given Ronin::ASM::X86_64::Operands::RZ_SAE" do
      let(:operand) { Ronin::ASM::X86_64::Operands::RZ_SAE }

      it "must return 'rz_sae'" do
        expect(subject.format_decorator(operand)).to eq('rz_sae')
      end
    end

    context "when given Ronin::ASM::X86_64::Operands::SAE" do
      let(:operand) { Ronin::ASM::X86_64::Operands::SAE }

      it "must return 'sae'" do
        expect(subject.format_decorator(operand)).to eq('sae')
      end
    end
  end
end
