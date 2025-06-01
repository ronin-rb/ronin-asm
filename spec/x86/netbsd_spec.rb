require 'spec_helper'
require 'ronin/asm/x86/netbsd'

describe Ronin::ASM::X86::NetBSD do
  it "must include Ronin::ASM::Syscalls::NetBSD::X86 for the NetBSD x86 syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::NetBSD::X86)
  end
end
