require 'spec_helper'
require 'ronin/asm/x86/macos'

describe Ronin::ASM::X86::MacOS do
  it "must include Ronin::ASM::Syscalls::MacOS for the macOS syscall methods" do
    expect(described_class).to include(Ronin::ASM::Syscalls::MacOS)
  end
end
