require 'spec_helper'
require 'ronin/asm/x86_64/netbsd'

describe Ronin::ASM::X86_64::NetBSD do
  it "must include Ronin::ASM::Syscalls::NetBSD::X86_64 for the NetBSD x86-64 syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::NetBSD::X86_64)
  end
end
