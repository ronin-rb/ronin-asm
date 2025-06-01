require 'spec_helper'
require 'ronin/asm/x86/freebsd'

describe Ronin::ASM::X86::FreeBSD do
  it "must include Ronin::ASM::Syscalls::FreeBSD for the FreeBSD syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::FreeBSD)
  end
end
