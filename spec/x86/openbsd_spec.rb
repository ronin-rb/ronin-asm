require 'spec_helper'
require 'ronin/asm/x86/openbsd'

describe Ronin::ASM::X86::OpenBSD do
  it "must include Ronin::ASM::Syscalls::OpenBSD for the OpenBSD syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::OpenBSD)
  end
end
