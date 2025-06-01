require 'spec_helper'
require 'ronin/asm/x86_64/openbsd'

describe Ronin::ASM::X86_64::OpenBSD do
  it "must include Ronin::ASM::Syscalls::OpenBSD for the OpenBSD syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::OpenBSD)
  end
end
