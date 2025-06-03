#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/syscalls/netbsd/x86_64'

describe Ronin::ASM::Syscalls::NetBSD::X86_64 do
  subject do
    obj = Object.new
    obj.extend Ronin::ASM::Syscalls::NetBSD::X86_64
    obj
  end

  describe "#syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 0 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(0,*arguments)

      subject.syscall_syscall(*arguments)
    end
  end

  describe "#exit_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 1 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(1,*arguments)

      subject.exit_syscall(*arguments)
    end
  end

  describe "#fork_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 2" do
      expect(subject).to receive(:syscall_macro).with(2)

      subject.fork_syscall
    end
  end

  describe "#read_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 3 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(3,*arguments)

      subject.read_syscall(*arguments)
    end
  end

  describe "#write_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 4 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(4,*arguments)

      subject.write_syscall(*arguments)
    end
  end

  describe "#open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 5 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(5,*arguments)

      subject.open_syscall(*arguments)
    end
  end

  describe "#close_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 6 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(6,*arguments)

      subject.close_syscall(*arguments)
    end
  end

  describe "#link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 9 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(9,*arguments)

      subject.link_syscall(*arguments)
    end
  end

  describe "#unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 10 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(10,*arguments)

      subject.unlink_syscall(*arguments)
    end
  end

  describe "#chdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 12 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(12,*arguments)

      subject.chdir_syscall(*arguments)
    end
  end

  describe "#fchdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 13 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(13,*arguments)

      subject.fchdir_syscall(*arguments)
    end
  end

  describe "#chmod_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 15 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(15,*arguments)

      subject.chmod_syscall(*arguments)
    end
  end

  describe "#chown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 16 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(16,*arguments)

      subject.chown_syscall(*arguments)
    end
  end

  describe "#obreak_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 17 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(17,*arguments)

      subject.obreak_syscall(*arguments)
    end
  end

  describe "#getpid_with_ppid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 20" do
      expect(subject).to receive(:syscall_macro).with(20)

      subject.getpid_with_ppid_syscall
    end
  end

  describe "#unmount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 22 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(22,*arguments)

      subject.unmount_syscall(*arguments)
    end
  end

  describe "#setuid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 23 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(23,*arguments)

      subject.setuid_syscall(*arguments)
    end
  end

  describe "#getuid_with_euid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 24" do
      expect(subject).to receive(:syscall_macro).with(24)

      subject.getuid_with_euid_syscall
    end
  end

  describe "#geteuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 25" do
      expect(subject).to receive(:syscall_macro).with(25)

      subject.geteuid_syscall
    end
  end

  describe "#ptrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 26 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(26,*arguments)

      subject.ptrace_syscall(*arguments)
    end
  end

  describe "#recvmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 27 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(27,*arguments)

      subject.recvmsg_syscall(*arguments)
    end
  end

  describe "#sendmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 28 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(28,*arguments)

      subject.sendmsg_syscall(*arguments)
    end
  end

  describe "#recvfrom_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 29 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(29,*arguments)

      subject.recvfrom_syscall(*arguments)
    end
  end

  describe "#accept_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 30 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(30,*arguments)

      subject.accept_syscall(*arguments)
    end
  end

  describe "#getpeername_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 31 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(31,*arguments)

      subject.getpeername_syscall(*arguments)
    end
  end

  describe "#getsockname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 32 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(32,*arguments)

      subject.getsockname_syscall(*arguments)
    end
  end

  describe "#access_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 33 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(33,*arguments)

      subject.access_syscall(*arguments)
    end
  end

  describe "#chflags_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 34 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(34,*arguments)

      subject.chflags_syscall(*arguments)
    end
  end

  describe "#fchflags_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 35 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(35,*arguments)

      subject.fchflags_syscall(*arguments)
    end
  end

  describe "#sync_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 36" do
      expect(subject).to receive(:syscall_macro).with(36)

      subject.sync_syscall
    end
  end

  describe "#kill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 37 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(37,*arguments)

      subject.kill_syscall(*arguments)
    end
  end

  describe "#getppid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 39" do
      expect(subject).to receive(:syscall_macro).with(39)

      subject.getppid_syscall
    end
  end

  describe "#dup_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 41 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(41,*arguments)

      subject.dup_syscall(*arguments)
    end
  end

  describe "#pipe_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 42" do
      expect(subject).to receive(:syscall_macro).with(42)

      subject.pipe_syscall
    end
  end

  describe "#getegid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 43" do
      expect(subject).to receive(:syscall_macro).with(43)

      subject.getegid_syscall
    end
  end

  describe "#profil_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 44 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(44,*arguments)

      subject.profil_syscall(*arguments)
    end
  end

  describe "#ktrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 45 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(45,*arguments)

      subject.ktrace_syscall(*arguments)
    end
  end

  describe "#getgid_with_egid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 47" do
      expect(subject).to receive(:syscall_macro).with(47)

      subject.getgid_with_egid_syscall
    end
  end

  describe "#__getlogin_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 49 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(49,*arguments)

      subject.__getlogin_syscall(*arguments)
    end
  end

  describe "#__setlogin_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 50 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(50,*arguments)

      subject.__setlogin_syscall(*arguments)
    end
  end

  describe "#acct_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 51 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(51,*arguments)

      subject.acct_syscall(*arguments)
    end
  end

  describe "#ioctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 54 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(54,*arguments)

      subject.ioctl_syscall(*arguments)
    end
  end

  describe "#revoke_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 56 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(56,*arguments)

      subject.revoke_syscall(*arguments)
    end
  end

  describe "#symlink_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 57 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(57,*arguments)

      subject.symlink_syscall(*arguments)
    end
  end

  describe "#readlink_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 58 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(58,*arguments)

      subject.readlink_syscall(*arguments)
    end
  end

  describe "#execve_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 59 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(59,*arguments)

      subject.execve_syscall(*arguments)
    end
  end

  describe "#umask_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 60 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(60,*arguments)

      subject.umask_syscall(*arguments)
    end
  end

  describe "#chroot_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 61 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(61,*arguments)

      subject.chroot_syscall(*arguments)
    end
  end

  describe "#vfork_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 66" do
      expect(subject).to receive(:syscall_macro).with(66)

      subject.vfork_syscall
    end
  end

  describe "#ovadvise_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 72 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(72,*arguments)

      subject.ovadvise_syscall(*arguments)
    end
  end

  describe "#munmap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 73 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(73,*arguments)

      subject.munmap_syscall(*arguments)
    end
  end

  describe "#mprotect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 74 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(74,*arguments)

      subject.mprotect_syscall(*arguments)
    end
  end

  describe "#madvise_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 75 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(75,*arguments)

      subject.madvise_syscall(*arguments)
    end
  end

  describe "#mincore_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 78 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(78,*arguments)

      subject.mincore_syscall(*arguments)
    end
  end

  describe "#getgroups_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 79 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(79,*arguments)

      subject.getgroups_syscall(*arguments)
    end
  end

  describe "#setgroups_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 80 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(80,*arguments)

      subject.setgroups_syscall(*arguments)
    end
  end

  describe "#getpgrp_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 81" do
      expect(subject).to receive(:syscall_macro).with(81)

      subject.getpgrp_syscall
    end
  end

  describe "#setpgid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 82 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(82,*arguments)

      subject.setpgid_syscall(*arguments)
    end
  end

  describe "#dup2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 90 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(90,*arguments)

      subject.dup2_syscall(*arguments)
    end
  end

  describe "#getrandom_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 91 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(91,*arguments)

      subject.getrandom_syscall(*arguments)
    end
  end

  describe "#fcntl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 92 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(92,*arguments)

      subject.fcntl_syscall(*arguments)
    end
  end

  describe "#fsync_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 95 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(95,*arguments)

      subject.fsync_syscall(*arguments)
    end
  end

  describe "#setpriority_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 96 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(96,*arguments)

      subject.setpriority_syscall(*arguments)
    end
  end

  describe "#connect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 98 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(98,*arguments)

      subject.connect_syscall(*arguments)
    end
  end

  describe "#getpriority_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 100 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(100,*arguments)

      subject.getpriority_syscall(*arguments)
    end
  end

  describe "#bind_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 104 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(104,*arguments)

      subject.bind_syscall(*arguments)
    end
  end

  describe "#setsockopt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 105 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(105,*arguments)

      subject.setsockopt_syscall(*arguments)
    end
  end

  describe "#listen_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 106 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(106,*arguments)

      subject.listen_syscall(*arguments)
    end
  end

  describe "#getsockopt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 118 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(118,*arguments)

      subject.getsockopt_syscall(*arguments)
    end
  end

  describe "#readv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 120 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(120,*arguments)

      subject.readv_syscall(*arguments)
    end
  end

  describe "#writev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 121 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(121,*arguments)

      subject.writev_syscall(*arguments)
    end
  end

  describe "#fchown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 123 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(123,*arguments)

      subject.fchown_syscall(*arguments)
    end
  end

  describe "#fchmod_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 124 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(124,*arguments)

      subject.fchmod_syscall(*arguments)
    end
  end

  describe "#setreuid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 126 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(126,*arguments)

      subject.setreuid_syscall(*arguments)
    end
  end

  describe "#setregid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 127 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(127,*arguments)

      subject.setregid_syscall(*arguments)
    end
  end

  describe "#rename_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 128 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(128,*arguments)

      subject.rename_syscall(*arguments)
    end
  end

  describe "#flock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 131 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(131,*arguments)

      subject.flock_syscall(*arguments)
    end
  end

  describe "#mkfifo_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 132 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(132,*arguments)

      subject.mkfifo_syscall(*arguments)
    end
  end

  describe "#sendto_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 133 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(133,*arguments)

      subject.sendto_syscall(*arguments)
    end
  end

  describe "#shutdown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 134 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(134,*arguments)

      subject.shutdown_syscall(*arguments)
    end
  end

  describe "#socketpair_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 135 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(135,*arguments)

      subject.socketpair_syscall(*arguments)
    end
  end

  describe "#mkdir_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 136 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(136,*arguments)

      subject.mkdir_syscall(*arguments)
    end
  end

  describe "#rmdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 137 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(137,*arguments)

      subject.rmdir_syscall(*arguments)
    end
  end

  describe "#setsid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 147" do
      expect(subject).to receive(:syscall_macro).with(147)

      subject.setsid_syscall
    end
  end

  describe "#nfssvc_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 155 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(155,*arguments)

      subject.nfssvc_syscall(*arguments)
    end
  end

  describe "#sysarch_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 165 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(165,*arguments)

      subject.sysarch_syscall(*arguments)
    end
  end

  describe "#__futex_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 166 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(166,*arguments)

      subject.__futex_syscall(*arguments)
    end
  end

  describe "#__futex_set_robust_list_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 167 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(167,*arguments)

      subject.__futex_set_robust_list_syscall(*arguments)
    end
  end

  describe "#__futex_get_robust_list_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 168 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(168,*arguments)

      subject.__futex_get_robust_list_syscall(*arguments)
    end
  end

  describe "#pread_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 173 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(173,*arguments)

      subject.pread_syscall(*arguments)
    end
  end

  describe "#pwrite_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 174 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(174,*arguments)

      subject.pwrite_syscall(*arguments)
    end
  end

  describe "#ntp_adjtime_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 176 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(176,*arguments)

      subject.ntp_adjtime_syscall(*arguments)
    end
  end

  describe "#timerfd_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 177 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(177,*arguments)

      subject.timerfd_create_syscall(*arguments)
    end
  end

  describe "#timerfd_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 178 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(178,*arguments)

      subject.timerfd_settime_syscall(*arguments)
    end
  end

  describe "#timerfd_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 179 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(179,*arguments)

      subject.timerfd_gettime_syscall(*arguments)
    end
  end

  describe "#setgid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 181 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(181,*arguments)

      subject.setgid_syscall(*arguments)
    end
  end

  describe "#setegid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 182 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(182,*arguments)

      subject.setegid_syscall(*arguments)
    end
  end

  describe "#seteuid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 183 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(183,*arguments)

      subject.seteuid_syscall(*arguments)
    end
  end

  describe "#lfs_bmapv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 184 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(184,*arguments)

      subject.lfs_bmapv_syscall(*arguments)
    end
  end

  describe "#lfs_markv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 185 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(185,*arguments)

      subject.lfs_markv_syscall(*arguments)
    end
  end

  describe "#lfs_segclean_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 186 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(186,*arguments)

      subject.lfs_segclean_syscall(*arguments)
    end
  end

  describe "#pathconf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 191 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(191,*arguments)

      subject.pathconf_syscall(*arguments)
    end
  end

  describe "#fpathconf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 192 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(192,*arguments)

      subject.fpathconf_syscall(*arguments)
    end
  end

  describe "#getsockopt2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 193 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(193,*arguments)

      subject.getsockopt2_syscall(*arguments)
    end
  end

  describe "#getrlimit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 194 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(194,*arguments)

      subject.getrlimit_syscall(*arguments)
    end
  end

  describe "#setrlimit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 195 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(195,*arguments)

      subject.setrlimit_syscall(*arguments)
    end
  end

  describe "#mmap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 197 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(197,*arguments)

      subject.mmap_syscall(*arguments)
    end
  end

  describe "#__syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 198 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(198,*arguments)

      subject.__syscall_syscall(*arguments)
    end
  end

  describe "#lseek_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 199 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(199,*arguments)

      subject.lseek_syscall(*arguments)
    end
  end

  describe "#truncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 200 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(200,*arguments)

      subject.truncate_syscall(*arguments)
    end
  end

  describe "#ftruncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 201 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(201,*arguments)

      subject.ftruncate_syscall(*arguments)
    end
  end

  describe "#__sysctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 202 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(202,*arguments)

      subject.__sysctl_syscall(*arguments)
    end
  end

  describe "#mlock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 203 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(203,*arguments)

      subject.mlock_syscall(*arguments)
    end
  end

  describe "#munlock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 204 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(204,*arguments)

      subject.munlock_syscall(*arguments)
    end
  end

  describe "#undelete_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 205 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(205,*arguments)

      subject.undelete_syscall(*arguments)
    end
  end

  describe "#getpgid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 207 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(207,*arguments)

      subject.getpgid_syscall(*arguments)
    end
  end

  describe "#reboot_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 208 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(208,*arguments)

      subject.reboot_syscall(*arguments)
    end
  end

  describe "#poll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 209 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(209,*arguments)

      subject.poll_syscall(*arguments)
    end
  end

  describe "#afssys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 210 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(210,*arguments)

      subject.afssys_syscall(*arguments)
    end
  end

  describe "#semget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 221 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(221,*arguments)

      subject.semget_syscall(*arguments)
    end
  end

  describe "#semop_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 222 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(222,*arguments)

      subject.semop_syscall(*arguments)
    end
  end

  describe "#semconfig_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 223 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(223,*arguments)

      subject.semconfig_syscall(*arguments)
    end
  end

  describe "#msgget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 225 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(225,*arguments)

      subject.msgget_syscall(*arguments)
    end
  end

  describe "#msgsnd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 226 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(226,*arguments)

      subject.msgsnd_syscall(*arguments)
    end
  end

  describe "#msgrcv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 227 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(227,*arguments)

      subject.msgrcv_syscall(*arguments)
    end
  end

  describe "#shmat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 228 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(228,*arguments)

      subject.shmat_syscall(*arguments)
    end
  end

  describe "#shmdt_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 230 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(230,*arguments)

      subject.shmdt_syscall(*arguments)
    end
  end

  describe "#shmget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 231 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(231,*arguments)

      subject.shmget_syscall(*arguments)
    end
  end

  describe "#timer_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 235 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(235,*arguments)

      subject.timer_create_syscall(*arguments)
    end
  end

  describe "#timer_delete_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 236 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(236,*arguments)

      subject.timer_delete_syscall(*arguments)
    end
  end

  describe "#timer_getoverrun_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 239 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(239,*arguments)

      subject.timer_getoverrun_syscall(*arguments)
    end
  end

  describe "#fdatasync_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 241 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(241,*arguments)

      subject.fdatasync_syscall(*arguments)
    end
  end

  describe "#mlockall_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 242 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(242,*arguments)

      subject.mlockall_syscall(*arguments)
    end
  end

  describe "#munlockall_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 243" do
      expect(subject).to receive(:syscall_macro).with(243)

      subject.munlockall_syscall
    end
  end

  describe "#sigqueueinfo_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 245 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(245,*arguments)

      subject.sigqueueinfo_syscall(*arguments)
    end
  end

  describe "#modctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 246 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(246,*arguments)

      subject.modctl_syscall(*arguments)
    end
  end

  describe "#_ksem_init_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 247 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(247,*arguments)

      subject._ksem_init_syscall(*arguments)
    end
  end

  describe "#_ksem_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 248 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(248,*arguments)

      subject._ksem_open_syscall(*arguments)
    end
  end

  describe "#_ksem_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 249 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(249,*arguments)

      subject._ksem_unlink_syscall(*arguments)
    end
  end

  describe "#_ksem_close_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 250 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(250,*arguments)

      subject._ksem_close_syscall(*arguments)
    end
  end

  describe "#_ksem_post_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 251 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(251,*arguments)

      subject._ksem_post_syscall(*arguments)
    end
  end

  describe "#_ksem_wait_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 252 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(252,*arguments)

      subject._ksem_wait_syscall(*arguments)
    end
  end

  describe "#_ksem_trywait_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 253 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(253,*arguments)

      subject._ksem_trywait_syscall(*arguments)
    end
  end

  describe "#_ksem_getvalue_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 254 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(254,*arguments)

      subject._ksem_getvalue_syscall(*arguments)
    end
  end

  describe "#_ksem_destroy_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 255 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(255,*arguments)

      subject._ksem_destroy_syscall(*arguments)
    end
  end

  describe "#_ksem_timedwait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 256 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(256,*arguments)

      subject._ksem_timedwait_syscall(*arguments)
    end
  end

  describe "#mq_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 257 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(257,*arguments)

      subject.mq_open_syscall(*arguments)
    end
  end

  describe "#mq_close_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 258 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(258,*arguments)

      subject.mq_close_syscall(*arguments)
    end
  end

  describe "#mq_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 259 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(259,*arguments)

      subject.mq_unlink_syscall(*arguments)
    end
  end

  describe "#mq_getattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 260 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(260,*arguments)

      subject.mq_getattr_syscall(*arguments)
    end
  end

  describe "#mq_setattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 261 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(261,*arguments)

      subject.mq_setattr_syscall(*arguments)
    end
  end

  describe "#mq_notify_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 262 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(262,*arguments)

      subject.mq_notify_syscall(*arguments)
    end
  end

  describe "#mq_send_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 263 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(263,*arguments)

      subject.mq_send_syscall(*arguments)
    end
  end

  describe "#mq_receive_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 264 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(264,*arguments)

      subject.mq_receive_syscall(*arguments)
    end
  end

  describe "#eventfd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 267 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(267,*arguments)

      subject.eventfd_syscall(*arguments)
    end
  end

  describe "#__posix_rename_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 270 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(270,*arguments)

      subject.__posix_rename_syscall(*arguments)
    end
  end

  describe "#swapctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 271 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(271,*arguments)

      subject.swapctl_syscall(*arguments)
    end
  end

  describe "#minherit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 273 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(273,*arguments)

      subject.minherit_syscall(*arguments)
    end
  end

  describe "#lchmod_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 274 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(274,*arguments)

      subject.lchmod_syscall(*arguments)
    end
  end

  describe "#lchown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 275 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(275,*arguments)

      subject.lchown_syscall(*arguments)
    end
  end

  describe "#__posix_chown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 283 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(283,*arguments)

      subject.__posix_chown_syscall(*arguments)
    end
  end

  describe "#__posix_fchown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 284 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(284,*arguments)

      subject.__posix_fchown_syscall(*arguments)
    end
  end

  describe "#__posix_lchown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 285 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(285,*arguments)

      subject.__posix_lchown_syscall(*arguments)
    end
  end

  describe "#getsid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 286 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(286,*arguments)

      subject.getsid_syscall(*arguments)
    end
  end

  describe "#__clone_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 287 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(287,*arguments)

      subject.__clone_syscall(*arguments)
    end
  end

  describe "#fktrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 288 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(288,*arguments)

      subject.fktrace_syscall(*arguments)
    end
  end

  describe "#preadv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 289 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(289,*arguments)

      subject.preadv_syscall(*arguments)
    end
  end

  describe "#pwritev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 290 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(290,*arguments)

      subject.pwritev_syscall(*arguments)
    end
  end

  describe "#__getcwd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 296 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(296,*arguments)

      subject.__getcwd_syscall(*arguments)
    end
  end

  describe "#fchroot_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 297 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(297,*arguments)

      subject.fchroot_syscall(*arguments)
    end
  end

  describe "#lchflags_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 304 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(304,*arguments)

      subject.lchflags_syscall(*arguments)
    end
  end

  describe "#issetugid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 305" do
      expect(subject).to receive(:syscall_macro).with(305)

      subject.issetugid_syscall
    end
  end

  describe "#utrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 306 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(306,*arguments)

      subject.utrace_syscall(*arguments)
    end
  end

  describe "#getcontext_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 307 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(307,*arguments)

      subject.getcontext_syscall(*arguments)
    end
  end

  describe "#setcontext_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 308 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(308,*arguments)

      subject.setcontext_syscall(*arguments)
    end
  end

  describe "#_lwp_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 309 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(309,*arguments)

      subject._lwp_create_syscall(*arguments)
    end
  end

  describe "#_lwp_exit_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 310" do
      expect(subject).to receive(:syscall_macro).with(310)

      subject._lwp_exit_syscall
    end
  end

  describe "#_lwp_self_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 311" do
      expect(subject).to receive(:syscall_macro).with(311)

      subject._lwp_self_syscall
    end
  end

  describe "#_lwp_wait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 312 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(312,*arguments)

      subject._lwp_wait_syscall(*arguments)
    end
  end

  describe "#_lwp_suspend_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 313 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(313,*arguments)

      subject._lwp_suspend_syscall(*arguments)
    end
  end

  describe "#_lwp_continue_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 314 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(314,*arguments)

      subject._lwp_continue_syscall(*arguments)
    end
  end

  describe "#_lwp_wakeup_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 315 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(315,*arguments)

      subject._lwp_wakeup_syscall(*arguments)
    end
  end

  describe "#_lwp_getprivate_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 316" do
      expect(subject).to receive(:syscall_macro).with(316)

      subject._lwp_getprivate_syscall
    end
  end

  describe "#_lwp_setprivate_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 317 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(317,*arguments)

      subject._lwp_setprivate_syscall(*arguments)
    end
  end

  describe "#_lwp_kill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 318 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(318,*arguments)

      subject._lwp_kill_syscall(*arguments)
    end
  end

  describe "#_lwp_detach_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 319 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(319,*arguments)

      subject._lwp_detach_syscall(*arguments)
    end
  end

  describe "#_lwp_unpark_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 321 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(321,*arguments)

      subject._lwp_unpark_syscall(*arguments)
    end
  end

  describe "#_lwp_unpark_all_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 322 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(322,*arguments)

      subject._lwp_unpark_all_syscall(*arguments)
    end
  end

  describe "#_lwp_setname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 323 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(323,*arguments)

      subject._lwp_setname_syscall(*arguments)
    end
  end

  describe "#_lwp_getname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 324 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(324,*arguments)

      subject._lwp_getname_syscall(*arguments)
    end
  end

  describe "#_lwp_ctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 325 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(325,*arguments)

      subject._lwp_ctl_syscall(*arguments)
    end
  end

  describe "#__sigaction_sigtramp_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 340 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(340,*arguments)

      subject.__sigaction_sigtramp_syscall(*arguments)
    end
  end

  describe "#rasctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 343 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(343,*arguments)

      subject.rasctl_syscall(*arguments)
    end
  end

  describe "#kqueue_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 344" do
      expect(subject).to receive(:syscall_macro).with(344)

      subject.kqueue_syscall
    end
  end

  describe "#_sched_setparam_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 346 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(346,*arguments)

      subject._sched_setparam_syscall(*arguments)
    end
  end

  describe "#_sched_getparam_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 347 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(347,*arguments)

      subject._sched_getparam_syscall(*arguments)
    end
  end

  describe "#_sched_setaffinity_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 348 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(348,*arguments)

      subject._sched_setaffinity_syscall(*arguments)
    end
  end

  describe "#_sched_getaffinity_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 349 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(349,*arguments)

      subject._sched_getaffinity_syscall(*arguments)
    end
  end

  describe "#sched_yield_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 350" do
      expect(subject).to receive(:syscall_macro).with(350)

      subject.sched_yield_syscall
    end
  end

  describe "#_sched_protect_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 351 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(351,*arguments)

      subject._sched_protect_syscall(*arguments)
    end
  end

  describe "#fsync_range_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 354 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(354,*arguments)

      subject.fsync_range_syscall(*arguments)
    end
  end

  describe "#uuidgen_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 355 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(355,*arguments)

      subject.uuidgen_syscall(*arguments)
    end
  end

  describe "#extattrctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 360 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(360,*arguments)

      subject.extattrctl_syscall(*arguments)
    end
  end

  describe "#extattr_set_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 361 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(361,*arguments)

      subject.extattr_set_file_syscall(*arguments)
    end
  end

  describe "#extattr_get_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 362 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(362,*arguments)

      subject.extattr_get_file_syscall(*arguments)
    end
  end

  describe "#extattr_delete_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 363 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(363,*arguments)

      subject.extattr_delete_file_syscall(*arguments)
    end
  end

  describe "#extattr_set_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 364 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(364,*arguments)

      subject.extattr_set_fd_syscall(*arguments)
    end
  end

  describe "#extattr_get_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 365 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(365,*arguments)

      subject.extattr_get_fd_syscall(*arguments)
    end
  end

  describe "#extattr_delete_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 366 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(366,*arguments)

      subject.extattr_delete_fd_syscall(*arguments)
    end
  end

  describe "#extattr_set_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 367 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(367,*arguments)

      subject.extattr_set_link_syscall(*arguments)
    end
  end

  describe "#extattr_get_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 368 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(368,*arguments)

      subject.extattr_get_link_syscall(*arguments)
    end
  end

  describe "#extattr_delete_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 369 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(369,*arguments)

      subject.extattr_delete_link_syscall(*arguments)
    end
  end

  describe "#extattr_list_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 370 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(370,*arguments)

      subject.extattr_list_fd_syscall(*arguments)
    end
  end

  describe "#extattr_list_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 371 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(371,*arguments)

      subject.extattr_list_file_syscall(*arguments)
    end
  end

  describe "#extattr_list_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 372 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(372,*arguments)

      subject.extattr_list_link_syscall(*arguments)
    end
  end

  describe "#setxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 375 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(375,*arguments)

      subject.setxattr_syscall(*arguments)
    end
  end

  describe "#lsetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 376 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(376,*arguments)

      subject.lsetxattr_syscall(*arguments)
    end
  end

  describe "#fsetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 377 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(377,*arguments)

      subject.fsetxattr_syscall(*arguments)
    end
  end

  describe "#getxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 378 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(378,*arguments)

      subject.getxattr_syscall(*arguments)
    end
  end

  describe "#lgetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 379 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(379,*arguments)

      subject.lgetxattr_syscall(*arguments)
    end
  end

  describe "#fgetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 380 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(380,*arguments)

      subject.fgetxattr_syscall(*arguments)
    end
  end

  describe "#listxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 381 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(381,*arguments)

      subject.listxattr_syscall(*arguments)
    end
  end

  describe "#llistxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 382 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(382,*arguments)

      subject.llistxattr_syscall(*arguments)
    end
  end

  describe "#flistxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 383 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(383,*arguments)

      subject.flistxattr_syscall(*arguments)
    end
  end

  describe "#removexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 384 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(384,*arguments)

      subject.removexattr_syscall(*arguments)
    end
  end

  describe "#lremovexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 385 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(385,*arguments)

      subject.lremovexattr_syscall(*arguments)
    end
  end

  describe "#fremovexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 386 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(386,*arguments)

      subject.fremovexattr_syscall(*arguments)
    end
  end

  describe "#aio_cancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 399 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(399,*arguments)

      subject.aio_cancel_syscall(*arguments)
    end
  end

  describe "#aio_error_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 400 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(400,*arguments)

      subject.aio_error_syscall(*arguments)
    end
  end

  describe "#aio_fsync_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 401 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(401,*arguments)

      subject.aio_fsync_syscall(*arguments)
    end
  end

  describe "#aio_read_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 402 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(402,*arguments)

      subject.aio_read_syscall(*arguments)
    end
  end

  describe "#aio_return_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 403 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(403,*arguments)

      subject.aio_return_syscall(*arguments)
    end
  end

  describe "#aio_write_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 405 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(405,*arguments)

      subject.aio_write_syscall(*arguments)
    end
  end

  describe "#lio_listio_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 406 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(406,*arguments)

      subject.lio_listio_syscall(*arguments)
    end
  end

  describe "#mremap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 411 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(411,*arguments)

      subject.mremap_syscall(*arguments)
    end
  end

  describe "#pset_create_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 412 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(412,*arguments)

      subject.pset_create_syscall(*arguments)
    end
  end

  describe "#pset_destroy_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 413 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(413,*arguments)

      subject.pset_destroy_syscall(*arguments)
    end
  end

  describe "#pset_assign_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 414 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(414,*arguments)

      subject.pset_assign_syscall(*arguments)
    end
  end

  describe "#_pset_bind_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 415 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(415,*arguments)

      subject._pset_bind_syscall(*arguments)
    end
  end

  describe "#pipe2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 453 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(453,*arguments)

      subject.pipe2_syscall(*arguments)
    end
  end

  describe "#kqueue1_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 455 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(455,*arguments)

      subject.kqueue1_syscall(*arguments)
    end
  end

  describe "#paccept_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 456 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(456,*arguments)

      subject.paccept_syscall(*arguments)
    end
  end

  describe "#linkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 457 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(457,*arguments)

      subject.linkat_syscall(*arguments)
    end
  end

  describe "#renameat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 458 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(458,*arguments)

      subject.renameat_syscall(*arguments)
    end
  end

  describe "#mkfifoat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 459 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(459,*arguments)

      subject.mkfifoat_syscall(*arguments)
    end
  end

  describe "#mknodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 460 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(460,*arguments)

      subject.mknodat_syscall(*arguments)
    end
  end

  describe "#mkdirat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 461 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(461,*arguments)

      subject.mkdirat_syscall(*arguments)
    end
  end

  describe "#faccessat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 462 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(462,*arguments)

      subject.faccessat_syscall(*arguments)
    end
  end

  describe "#fchmodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 463 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(463,*arguments)

      subject.fchmodat_syscall(*arguments)
    end
  end

  describe "#fchownat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 464 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(464,*arguments)

      subject.fchownat_syscall(*arguments)
    end
  end

  describe "#fexecve_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 465 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(465,*arguments)

      subject.fexecve_syscall(*arguments)
    end
  end

  describe "#fstatat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 466 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(466,*arguments)

      subject.fstatat_syscall(*arguments)
    end
  end

  describe "#utimensat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 467 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(467,*arguments)

      subject.utimensat_syscall(*arguments)
    end
  end

  describe "#openat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 468 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(468,*arguments)

      subject.openat_syscall(*arguments)
    end
  end

  describe "#readlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 469 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(469,*arguments)

      subject.readlinkat_syscall(*arguments)
    end
  end

  describe "#symlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 470 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(470,*arguments)

      subject.symlinkat_syscall(*arguments)
    end
  end

  describe "#unlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 471 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(471,*arguments)

      subject.unlinkat_syscall(*arguments)
    end
  end

  describe "#futimens_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 472 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(472,*arguments)

      subject.futimens_syscall(*arguments)
    end
  end

  describe "#__quotactl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 473 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(473,*arguments)

      subject.__quotactl_syscall(*arguments)
    end
  end

  describe "#posix_spawn_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 474 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(474,*arguments)

      subject.posix_spawn_syscall(*arguments)
    end
  end

  describe "#recvmmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 475 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(475,*arguments)

      subject.recvmmsg_syscall(*arguments)
    end
  end

  describe "#sendmmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 476 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(476,*arguments)

      subject.sendmmsg_syscall(*arguments)
    end
  end

  describe "#clock_nanosleep_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 477 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(477,*arguments)

      subject.clock_nanosleep_syscall(*arguments)
    end
  end

  describe "#posix_fallocate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 479 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(479,*arguments)

      subject.posix_fallocate_syscall(*arguments)
    end
  end

  describe "#fdiscard_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 480 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(480,*arguments)

      subject.fdiscard_syscall(*arguments)
    end
  end

  describe "#wait6_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 481 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(481,*arguments)

      subject.wait6_syscall(*arguments)
    end
  end

  describe "#clock_getcpuclockid2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 482 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(482,*arguments)

      subject.clock_getcpuclockid2_syscall(*arguments)
    end
  end

  describe "#__acl_get_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 487 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(487,*arguments)

      subject.__acl_get_link_syscall(*arguments)
    end
  end

  describe "#__acl_set_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 488 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(488,*arguments)

      subject.__acl_set_link_syscall(*arguments)
    end
  end

  describe "#__acl_delete_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 489 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(489,*arguments)

      subject.__acl_delete_link_syscall(*arguments)
    end
  end

  describe "#__acl_aclcheck_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 490 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(490,*arguments)

      subject.__acl_aclcheck_link_syscall(*arguments)
    end
  end

  describe "#__acl_get_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 491 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(491,*arguments)

      subject.__acl_get_file_syscall(*arguments)
    end
  end

  describe "#__acl_set_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 492 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(492,*arguments)

      subject.__acl_set_file_syscall(*arguments)
    end
  end

  describe "#__acl_get_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 493 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(493,*arguments)

      subject.__acl_get_fd_syscall(*arguments)
    end
  end

  describe "#__acl_set_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 494 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(494,*arguments)

      subject.__acl_set_fd_syscall(*arguments)
    end
  end

  describe "#__acl_delete_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 495 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(495,*arguments)

      subject.__acl_delete_file_syscall(*arguments)
    end
  end

  describe "#__acl_delete_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 496 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(496,*arguments)

      subject.__acl_delete_fd_syscall(*arguments)
    end
  end

  describe "#__acl_aclcheck_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 497 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(497,*arguments)

      subject.__acl_aclcheck_file_syscall(*arguments)
    end
  end

  describe "#__acl_aclcheck_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 498 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(498,*arguments)

      subject.__acl_aclcheck_fd_syscall(*arguments)
    end
  end

  describe "#lpathconf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 499 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(499,*arguments)

      subject.lpathconf_syscall(*arguments)
    end
  end

  describe "#memfd_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 500 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(500,*arguments)

      subject.memfd_create_syscall(*arguments)
    end
  end

  describe "#epoll_create1_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 502 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(502,*arguments)

      subject.epoll_create1_syscall(*arguments)
    end
  end

  describe "#epoll_ctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 503 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(503,*arguments)

      subject.epoll_ctl_syscall(*arguments)
    end
  end

  describe "#epoll_pwait2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 504 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(504,*arguments)

      subject.epoll_pwait2_syscall(*arguments)
    end
  end

  describe "#semtimedop_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 506 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(506,*arguments)

      subject.semtimedop_syscall(*arguments)
    end
  end
end
