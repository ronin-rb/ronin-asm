require 'spec_helper'
require 'ronin/asm/x86/linux'

describe Ronin::ASM::X86::Linux do
  it "must include Ronin::ASM::Syscalls::Linux::X86 for the Linux x86 syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::Linux::X86)
  end
end
