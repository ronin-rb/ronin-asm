require 'spec_helper'
require 'ronin/asm/x86_64/linux'

describe Ronin::ASM::X86_64::Linux do
  it "must include Ronin::ASM::Syscalls::Linux::X86_64 for the Linux x86-64 syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::Linux::X86_64)
  end
end
