require 'spec_helper'
require 'ronin/asm/x86_64/operands'

describe Ronin::ASM::X86_64::Operands do
  describe "ER" do
    subject { described_class::ER }

    it "must have a #type of :'{er}'" do
      expect(subject.type).to eq(:"{er}")
    end
  end
end
