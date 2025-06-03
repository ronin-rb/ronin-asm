#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/syscalls/freebsd'

describe Ronin::ASM::Syscalls::FreeBSD do
  subject do
    obj = Object.new
    obj.extend Ronin::ASM::Syscalls::FreeBSD 
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

  describe "#wait4_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 7 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(7,*arguments)

      subject.wait4_syscall(*arguments)
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

  describe "#break_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 17 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(17,*arguments)

      subject.break_syscall(*arguments)
    end
  end

  describe "#getpid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 20" do
      expect(subject).to receive(:syscall_macro).with(20)

      subject.getpid_syscall
    end
  end

  describe "#mount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 21 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(21,*arguments)

      subject.mount_syscall(*arguments)
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

  describe "#getuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 24" do
      expect(subject).to receive(:syscall_macro).with(24)

      subject.getuid_syscall
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

  describe "#getgid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 47" do
      expect(subject).to receive(:syscall_macro).with(47)

      subject.getgid_syscall
    end
  end

  describe "#getlogin_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 49 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(49,*arguments)

      subject.getlogin_syscall(*arguments)
    end
  end

  describe "#setlogin_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 50 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(50,*arguments)

      subject.setlogin_syscall(*arguments)
    end
  end

  describe "#acct_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 51 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(51,*arguments)

      subject.acct_syscall(*arguments)
    end
  end

  describe "#sigaltstack_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 53 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(53,*arguments)

      subject.sigaltstack_syscall(*arguments)
    end
  end

  describe "#ioctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 54 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(54,*arguments)

      subject.ioctl_syscall(*arguments)
    end
  end

  describe "#reboot_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 55 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(55,*arguments)

      subject.reboot_syscall(*arguments)
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

  describe "#msync_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 65 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(65,*arguments)

      subject.msync_syscall(*arguments)
    end
  end

  describe "#vfork_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 66" do
      expect(subject).to receive(:syscall_macro).with(66)

      subject.vfork_syscall
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

  describe "#setitimer_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 83 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(83,*arguments)

      subject.setitimer_syscall(*arguments)
    end
  end

  describe "#swapon_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 85 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(85,*arguments)

      subject.swapon_syscall(*arguments)
    end
  end

  describe "#getitimer_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 86 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(86,*arguments)

      subject.getitimer_syscall(*arguments)
    end
  end

  describe "#getdtablesize_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 89" do
      expect(subject).to receive(:syscall_macro).with(89)

      subject.getdtablesize_syscall
    end
  end

  describe "#dup2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 90 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(90,*arguments)

      subject.dup2_syscall(*arguments)
    end
  end

  describe "#fcntl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 92 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(92,*arguments)

      subject.fcntl_syscall(*arguments)
    end
  end

  describe "#select_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 93 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(93,*arguments)

      subject.select_syscall(*arguments)
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

  describe "#socket_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 97 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(97,*arguments)

      subject.socket_syscall(*arguments)
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

  describe "#gettimeofday_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 116 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(116,*arguments)

      subject.gettimeofday_syscall(*arguments)
    end
  end

  describe "#getrusage_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 117 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(117,*arguments)

      subject.getrusage_syscall(*arguments)
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

  describe "#settimeofday_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 122 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(122,*arguments)

      subject.settimeofday_syscall(*arguments)
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

  describe "#utimes_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 138 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(138,*arguments)

      subject.utimes_syscall(*arguments)
    end
  end

  describe "#adjtime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 140 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(140,*arguments)

      subject.adjtime_syscall(*arguments)
    end
  end

  describe "#setsid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 147" do
      expect(subject).to receive(:syscall_macro).with(147)

      subject.setsid_syscall
    end
  end

  describe "#quotactl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 148 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(148,*arguments)

      subject.quotactl_syscall(*arguments)
    end
  end

  describe "#nlm_syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 154 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(154,*arguments)

      subject.nlm_syscall_syscall(*arguments)
    end
  end

  describe "#nfssvc_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 155 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(155,*arguments)

      subject.nfssvc_syscall(*arguments)
    end
  end

  describe "#lgetfh_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 160 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(160,*arguments)

      subject.lgetfh_syscall(*arguments)
    end
  end

  describe "#getfh_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 161 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(161,*arguments)

      subject.getfh_syscall(*arguments)
    end
  end

  describe "#sysarch_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 165 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(165,*arguments)

      subject.sysarch_syscall(*arguments)
    end
  end

  describe "#rtprio_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 166 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(166,*arguments)

      subject.rtprio_syscall(*arguments)
    end
  end

  describe "#semsys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 169 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(169,*arguments)

      subject.semsys_syscall(*arguments)
    end
  end

  describe "#msgsys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 170 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(170,*arguments)

      subject.msgsys_syscall(*arguments)
    end
  end

  describe "#shmsys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 171 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(171,*arguments)

      subject.shmsys_syscall(*arguments)
    end
  end

  describe "#setfib_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 175 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(175,*arguments)

      subject.setfib_syscall(*arguments)
    end
  end

  describe "#ntp_adjtime_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 176 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(176,*arguments)

      subject.ntp_adjtime_syscall(*arguments)
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

  describe "#__syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 198 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(198,*arguments)

      subject.__syscall_syscall(*arguments)
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

  describe "#futimes_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 206 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(206,*arguments)

      subject.futimes_syscall(*arguments)
    end
  end

  describe "#getpgid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 207 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(207,*arguments)

      subject.getpgid_syscall(*arguments)
    end
  end

  describe "#poll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 209 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(209,*arguments)

      subject.poll_syscall(*arguments)
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

  describe "#clock_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 232 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(232,*arguments)

      subject.clock_gettime_syscall(*arguments)
    end
  end

  describe "#clock_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 233 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(233,*arguments)

      subject.clock_settime_syscall(*arguments)
    end
  end

  describe "#clock_getres_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 234 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(234,*arguments)

      subject.clock_getres_syscall(*arguments)
    end
  end

  describe "#ktimer_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 235 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(235,*arguments)

      subject.ktimer_create_syscall(*arguments)
    end
  end

  describe "#ktimer_delete_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 236 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(236,*arguments)

      subject.ktimer_delete_syscall(*arguments)
    end
  end

  describe "#ktimer_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 237 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(237,*arguments)

      subject.ktimer_settime_syscall(*arguments)
    end
  end

  describe "#ktimer_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 238 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(238,*arguments)

      subject.ktimer_gettime_syscall(*arguments)
    end
  end

  describe "#ktimer_getoverrun_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 239 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(239,*arguments)

      subject.ktimer_getoverrun_syscall(*arguments)
    end
  end

  describe "#nanosleep_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 240 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(240,*arguments)

      subject.nanosleep_syscall(*arguments)
    end
  end

  describe "#ffclock_getcounter_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 241 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(241,*arguments)

      subject.ffclock_getcounter_syscall(*arguments)
    end
  end

  describe "#ffclock_setestimate_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 242 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(242,*arguments)

      subject.ffclock_setestimate_syscall(*arguments)
    end
  end

  describe "#ffclock_getestimate_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 243 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(243,*arguments)

      subject.ffclock_getestimate_syscall(*arguments)
    end
  end

  describe "#clock_nanosleep_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 244 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(244,*arguments)

      subject.clock_nanosleep_syscall(*arguments)
    end
  end

  describe "#clock_getcpuclockid2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 247 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(247,*arguments)

      subject.clock_getcpuclockid2_syscall(*arguments)
    end
  end

  describe "#ntp_gettime_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 248 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(248,*arguments)

      subject.ntp_gettime_syscall(*arguments)
    end
  end

  describe "#minherit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 250 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(250,*arguments)

      subject.minherit_syscall(*arguments)
    end
  end

  describe "#rfork_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 251 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(251,*arguments)

      subject.rfork_syscall(*arguments)
    end
  end

  describe "#issetugid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 253" do
      expect(subject).to receive(:syscall_macro).with(253)

      subject.issetugid_syscall
    end
  end

  describe "#lchown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 254 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(254,*arguments)

      subject.lchown_syscall(*arguments)
    end
  end

  describe "#aio_read_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 255 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(255,*arguments)

      subject.aio_read_syscall(*arguments)
    end
  end

  describe "#aio_write_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 256 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(256,*arguments)

      subject.aio_write_syscall(*arguments)
    end
  end

  describe "#lio_listio_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 257 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(257,*arguments)

      subject.lio_listio_syscall(*arguments)
    end
  end

  describe "#lchmod_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 274 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(274,*arguments)

      subject.lchmod_syscall(*arguments)
    end
  end

  describe "#lutimes_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 276 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(276,*arguments)

      subject.lutimes_syscall(*arguments)
    end
  end

  describe "#preadv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 289 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(289,*arguments)

      subject.preadv_syscall(*arguments)
    end
  end

  describe "#pwritev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 290 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(290,*arguments)

      subject.pwritev_syscall(*arguments)
    end
  end

  describe "#fhopen_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 298 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(298,*arguments)

      subject.fhopen_syscall(*arguments)
    end
  end

  describe "#modnext_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 300 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(300,*arguments)

      subject.modnext_syscall(*arguments)
    end
  end

  describe "#modstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 301 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(301,*arguments)

      subject.modstat_syscall(*arguments)
    end
  end

  describe "#modfnext_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 302 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(302,*arguments)

      subject.modfnext_syscall(*arguments)
    end
  end

  describe "#modfind_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 303 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(303,*arguments)

      subject.modfind_syscall(*arguments)
    end
  end

  describe "#kldload_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 304 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(304,*arguments)

      subject.kldload_syscall(*arguments)
    end
  end

  describe "#kldunload_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 305 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(305,*arguments)

      subject.kldunload_syscall(*arguments)
    end
  end

  describe "#kldfind_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 306 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(306,*arguments)

      subject.kldfind_syscall(*arguments)
    end
  end

  describe "#kldnext_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 307 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(307,*arguments)

      subject.kldnext_syscall(*arguments)
    end
  end

  describe "#kldstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 308 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(308,*arguments)

      subject.kldstat_syscall(*arguments)
    end
  end

  describe "#kldfirstmod_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 309 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(309,*arguments)

      subject.kldfirstmod_syscall(*arguments)
    end
  end

  describe "#getsid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 310 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(310,*arguments)

      subject.getsid_syscall(*arguments)
    end
  end

  describe "#setresuid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 311 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(311,*arguments)

      subject.setresuid_syscall(*arguments)
    end
  end

  describe "#setresgid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 312 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(312,*arguments)

      subject.setresgid_syscall(*arguments)
    end
  end

  describe "#aio_return_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 314 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(314,*arguments)

      subject.aio_return_syscall(*arguments)
    end
  end

  describe "#aio_suspend_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 315 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(315,*arguments)

      subject.aio_suspend_syscall(*arguments)
    end
  end

  describe "#aio_cancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 316 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(316,*arguments)

      subject.aio_cancel_syscall(*arguments)
    end
  end

  describe "#aio_error_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 317 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(317,*arguments)

      subject.aio_error_syscall(*arguments)
    end
  end

  describe "#yield_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 321" do
      expect(subject).to receive(:syscall_macro).with(321)

      subject.yield_syscall
    end
  end

  describe "#mlockall_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 324 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(324,*arguments)

      subject.mlockall_syscall(*arguments)
    end
  end

  describe "#munlockall_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 325" do
      expect(subject).to receive(:syscall_macro).with(325)

      subject.munlockall_syscall
    end
  end

  describe "#__getcwd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 326 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(326,*arguments)

      subject.__getcwd_syscall(*arguments)
    end
  end

  describe "#sched_setparam_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 327 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(327,*arguments)

      subject.sched_setparam_syscall(*arguments)
    end
  end

  describe "#sched_getparam_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 328 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(328,*arguments)

      subject.sched_getparam_syscall(*arguments)
    end
  end

  describe "#sched_setscheduler_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 329 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(329,*arguments)

      subject.sched_setscheduler_syscall(*arguments)
    end
  end

  describe "#sched_getscheduler_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 330 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(330,*arguments)

      subject.sched_getscheduler_syscall(*arguments)
    end
  end

  describe "#sched_yield_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 331" do
      expect(subject).to receive(:syscall_macro).with(331)

      subject.sched_yield_syscall
    end
  end

  describe "#sched_get_priority_max_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 332 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(332,*arguments)

      subject.sched_get_priority_max_syscall(*arguments)
    end
  end

  describe "#sched_get_priority_min_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 333 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(333,*arguments)

      subject.sched_get_priority_min_syscall(*arguments)
    end
  end

  describe "#sched_rr_get_interval_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 334 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(334,*arguments)

      subject.sched_rr_get_interval_syscall(*arguments)
    end
  end

  describe "#utrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 335 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(335,*arguments)

      subject.utrace_syscall(*arguments)
    end
  end

  describe "#kldsym_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 337 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(337,*arguments)

      subject.kldsym_syscall(*arguments)
    end
  end

  describe "#jail_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 338 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(338,*arguments)

      subject.jail_syscall(*arguments)
    end
  end

  describe "#nnpfs_syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 339 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(339,*arguments)

      subject.nnpfs_syscall_syscall(*arguments)
    end
  end

  describe "#sigprocmask_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 340 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(340,*arguments)

      subject.sigprocmask_syscall(*arguments)
    end
  end

  describe "#sigsuspend_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 341 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(341,*arguments)

      subject.sigsuspend_syscall(*arguments)
    end
  end

  describe "#sigpending_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 343 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(343,*arguments)

      subject.sigpending_syscall(*arguments)
    end
  end

  describe "#sigtimedwait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 345 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(345,*arguments)

      subject.sigtimedwait_syscall(*arguments)
    end
  end

  describe "#sigwaitinfo_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 346 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(346,*arguments)

      subject.sigwaitinfo_syscall(*arguments)
    end
  end

  describe "#__acl_get_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 347 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(347,*arguments)

      subject.__acl_get_file_syscall(*arguments)
    end
  end

  describe "#__acl_set_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 348 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(348,*arguments)

      subject.__acl_set_file_syscall(*arguments)
    end
  end

  describe "#__acl_get_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 349 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(349,*arguments)

      subject.__acl_get_fd_syscall(*arguments)
    end
  end

  describe "#__acl_set_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 350 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(350,*arguments)

      subject.__acl_set_fd_syscall(*arguments)
    end
  end

  describe "#__acl_delete_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 351 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(351,*arguments)

      subject.__acl_delete_file_syscall(*arguments)
    end
  end

  describe "#__acl_delete_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 352 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(352,*arguments)

      subject.__acl_delete_fd_syscall(*arguments)
    end
  end

  describe "#__acl_aclcheck_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 353 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(353,*arguments)

      subject.__acl_aclcheck_file_syscall(*arguments)
    end
  end

  describe "#__acl_aclcheck_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 354 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(354,*arguments)

      subject.__acl_aclcheck_fd_syscall(*arguments)
    end
  end

  describe "#extattrctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 355 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(355,*arguments)

      subject.extattrctl_syscall(*arguments)
    end
  end

  describe "#extattr_set_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 356 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(356,*arguments)

      subject.extattr_set_file_syscall(*arguments)
    end
  end

  describe "#extattr_get_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 357 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(357,*arguments)

      subject.extattr_get_file_syscall(*arguments)
    end
  end

  describe "#extattr_delete_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 358 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(358,*arguments)

      subject.extattr_delete_file_syscall(*arguments)
    end
  end

  describe "#aio_waitcomplete_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 359 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(359,*arguments)

      subject.aio_waitcomplete_syscall(*arguments)
    end
  end

  describe "#getresuid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 360 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(360,*arguments)

      subject.getresuid_syscall(*arguments)
    end
  end

  describe "#getresgid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 361 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(361,*arguments)

      subject.getresgid_syscall(*arguments)
    end
  end

  describe "#kqueue_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 362" do
      expect(subject).to receive(:syscall_macro).with(362)

      subject.kqueue_syscall
    end
  end

  describe "#extattr_set_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 371 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(371,*arguments)

      subject.extattr_set_fd_syscall(*arguments)
    end
  end

  describe "#extattr_get_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 372 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(372,*arguments)

      subject.extattr_get_fd_syscall(*arguments)
    end
  end

  describe "#extattr_delete_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 373 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(373,*arguments)

      subject.extattr_delete_fd_syscall(*arguments)
    end
  end

  describe "#__setugid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 374 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(374,*arguments)

      subject.__setugid_syscall(*arguments)
    end
  end

  describe "#eaccess_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 376 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(376,*arguments)

      subject.eaccess_syscall(*arguments)
    end
  end

  describe "#afs3_syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 377 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(377,*arguments)

      subject.afs3_syscall_syscall(*arguments)
    end
  end

  describe "#nmount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 378 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(378,*arguments)

      subject.nmount_syscall(*arguments)
    end
  end

  describe "#__mac_get_proc_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 384 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(384,*arguments)

      subject.__mac_get_proc_syscall(*arguments)
    end
  end

  describe "#__mac_set_proc_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 385 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(385,*arguments)

      subject.__mac_set_proc_syscall(*arguments)
    end
  end

  describe "#__mac_get_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 386 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(386,*arguments)

      subject.__mac_get_fd_syscall(*arguments)
    end
  end

  describe "#__mac_get_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 387 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(387,*arguments)

      subject.__mac_get_file_syscall(*arguments)
    end
  end

  describe "#__mac_set_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 388 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(388,*arguments)

      subject.__mac_set_fd_syscall(*arguments)
    end
  end

  describe "#__mac_set_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 389 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(389,*arguments)

      subject.__mac_set_file_syscall(*arguments)
    end
  end

  describe "#kenv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 390 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(390,*arguments)

      subject.kenv_syscall(*arguments)
    end
  end

  describe "#lchflags_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 391 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(391,*arguments)

      subject.lchflags_syscall(*arguments)
    end
  end

  describe "#uuidgen_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 392 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(392,*arguments)

      subject.uuidgen_syscall(*arguments)
    end
  end

  describe "#sendfile_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 393 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(393,*arguments)

      subject.sendfile_syscall(*arguments)
    end
  end

  describe "#mac_syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 394 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(394,*arguments)

      subject.mac_syscall_syscall(*arguments)
    end
  end

  describe "#ksem_close_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 400 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(400,*arguments)

      subject.ksem_close_syscall(*arguments)
    end
  end

  describe "#ksem_post_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 401 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(401,*arguments)

      subject.ksem_post_syscall(*arguments)
    end
  end

  describe "#ksem_wait_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 402 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(402,*arguments)

      subject.ksem_wait_syscall(*arguments)
    end
  end

  describe "#ksem_trywait_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 403 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(403,*arguments)

      subject.ksem_trywait_syscall(*arguments)
    end
  end

  describe "#ksem_init_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 404 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(404,*arguments)

      subject.ksem_init_syscall(*arguments)
    end
  end

  describe "#ksem_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 405 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(405,*arguments)

      subject.ksem_open_syscall(*arguments)
    end
  end

  describe "#ksem_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 406 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(406,*arguments)

      subject.ksem_unlink_syscall(*arguments)
    end
  end

  describe "#ksem_getvalue_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 407 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(407,*arguments)

      subject.ksem_getvalue_syscall(*arguments)
    end
  end

  describe "#ksem_destroy_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 408 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(408,*arguments)

      subject.ksem_destroy_syscall(*arguments)
    end
  end

  describe "#__mac_get_pid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 409 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(409,*arguments)

      subject.__mac_get_pid_syscall(*arguments)
    end
  end

  describe "#__mac_get_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 410 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(410,*arguments)

      subject.__mac_get_link_syscall(*arguments)
    end
  end

  describe "#__mac_set_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 411 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(411,*arguments)

      subject.__mac_set_link_syscall(*arguments)
    end
  end

  describe "#extattr_set_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 412 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(412,*arguments)

      subject.extattr_set_link_syscall(*arguments)
    end
  end

  describe "#extattr_get_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 413 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(413,*arguments)

      subject.extattr_get_link_syscall(*arguments)
    end
  end

  describe "#extattr_delete_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 414 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(414,*arguments)

      subject.extattr_delete_link_syscall(*arguments)
    end
  end

  describe "#__mac_execve_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 415 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(415,*arguments)

      subject.__mac_execve_syscall(*arguments)
    end
  end

  describe "#sigaction_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 416 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(416,*arguments)

      subject.sigaction_syscall(*arguments)
    end
  end

  describe "#sigreturn_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 417 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(417,*arguments)

      subject.sigreturn_syscall(*arguments)
    end
  end

  describe "#getcontext_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 421 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(421,*arguments)

      subject.getcontext_syscall(*arguments)
    end
  end

  describe "#setcontext_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 422 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(422,*arguments)

      subject.setcontext_syscall(*arguments)
    end
  end

  describe "#swapcontext_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 423 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(423,*arguments)

      subject.swapcontext_syscall(*arguments)
    end
  end

  describe "#__acl_get_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 425 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(425,*arguments)

      subject.__acl_get_link_syscall(*arguments)
    end
  end

  describe "#__acl_set_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 426 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(426,*arguments)

      subject.__acl_set_link_syscall(*arguments)
    end
  end

  describe "#__acl_delete_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 427 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(427,*arguments)

      subject.__acl_delete_link_syscall(*arguments)
    end
  end

  describe "#__acl_aclcheck_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 428 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(428,*arguments)

      subject.__acl_aclcheck_link_syscall(*arguments)
    end
  end

  describe "#sigwait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 429 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(429,*arguments)

      subject.sigwait_syscall(*arguments)
    end
  end

  describe "#thr_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 430 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(430,*arguments)

      subject.thr_create_syscall(*arguments)
    end
  end

  describe "#thr_exit_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 431 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(431,*arguments)

      subject.thr_exit_syscall(*arguments)
    end
  end

  describe "#thr_self_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 432 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(432,*arguments)

      subject.thr_self_syscall(*arguments)
    end
  end

  describe "#thr_kill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 433 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(433,*arguments)

      subject.thr_kill_syscall(*arguments)
    end
  end

  describe "#jail_attach_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 436 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(436,*arguments)

      subject.jail_attach_syscall(*arguments)
    end
  end

  describe "#extattr_list_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 437 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(437,*arguments)

      subject.extattr_list_fd_syscall(*arguments)
    end
  end

  describe "#extattr_list_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 438 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(438,*arguments)

      subject.extattr_list_file_syscall(*arguments)
    end
  end

  describe "#extattr_list_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 439 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(439,*arguments)

      subject.extattr_list_link_syscall(*arguments)
    end
  end

  describe "#ksem_timedwait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 441 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(441,*arguments)

      subject.ksem_timedwait_syscall(*arguments)
    end
  end

  describe "#thr_suspend_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 442 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(442,*arguments)

      subject.thr_suspend_syscall(*arguments)
    end
  end

  describe "#thr_wake_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 443 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(443,*arguments)

      subject.thr_wake_syscall(*arguments)
    end
  end

  describe "#kldunloadf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 444 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(444,*arguments)

      subject.kldunloadf_syscall(*arguments)
    end
  end

  describe "#audit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 445 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(445,*arguments)

      subject.audit_syscall(*arguments)
    end
  end

  describe "#auditon_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 446 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(446,*arguments)

      subject.auditon_syscall(*arguments)
    end
  end

  describe "#getauid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 447 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(447,*arguments)

      subject.getauid_syscall(*arguments)
    end
  end

  describe "#setauid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 448 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(448,*arguments)

      subject.setauid_syscall(*arguments)
    end
  end

  describe "#getaudit_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 449 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(449,*arguments)

      subject.getaudit_syscall(*arguments)
    end
  end

  describe "#setaudit_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 450 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(450,*arguments)

      subject.setaudit_syscall(*arguments)
    end
  end

  describe "#getaudit_addr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 451 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(451,*arguments)

      subject.getaudit_addr_syscall(*arguments)
    end
  end

  describe "#setaudit_addr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 452 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(452,*arguments)

      subject.setaudit_addr_syscall(*arguments)
    end
  end

  describe "#auditctl_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 453 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(453,*arguments)

      subject.auditctl_syscall(*arguments)
    end
  end

  describe "#_umtx_op_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 454 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(454,*arguments)

      subject._umtx_op_syscall(*arguments)
    end
  end

  describe "#thr_new_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 455 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(455,*arguments)

      subject.thr_new_syscall(*arguments)
    end
  end

  describe "#sigqueue_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 456 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(456,*arguments)

      subject.sigqueue_syscall(*arguments)
    end
  end

  describe "#kmq_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 457 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(457,*arguments)

      subject.kmq_open_syscall(*arguments)
    end
  end

  describe "#kmq_setattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 458 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(458,*arguments)

      subject.kmq_setattr_syscall(*arguments)
    end
  end

  describe "#kmq_timedreceive_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 459 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(459,*arguments)

      subject.kmq_timedreceive_syscall(*arguments)
    end
  end

  describe "#kmq_timedsend_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 460 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(460,*arguments)

      subject.kmq_timedsend_syscall(*arguments)
    end
  end

  describe "#kmq_notify_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 461 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(461,*arguments)

      subject.kmq_notify_syscall(*arguments)
    end
  end

  describe "#kmq_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 462 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(462,*arguments)

      subject.kmq_unlink_syscall(*arguments)
    end
  end

  describe "#abort2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 463 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(463,*arguments)

      subject.abort2_syscall(*arguments)
    end
  end

  describe "#thr_set_name_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 464 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(464,*arguments)

      subject.thr_set_name_syscall(*arguments)
    end
  end

  describe "#aio_fsync_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 465 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(465,*arguments)

      subject.aio_fsync_syscall(*arguments)
    end
  end

  describe "#rtprio_thread_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 466 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(466,*arguments)

      subject.rtprio_thread_syscall(*arguments)
    end
  end

  describe "#sctp_peeloff_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 471 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(471,*arguments)

      subject.sctp_peeloff_syscall(*arguments)
    end
  end

  describe "#sctp_generic_sendmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 472 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(472,*arguments)

      subject.sctp_generic_sendmsg_syscall(*arguments)
    end
  end

  describe "#sctp_generic_sendmsg_iov_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 473 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(473,*arguments)

      subject.sctp_generic_sendmsg_iov_syscall(*arguments)
    end
  end

  describe "#sctp_generic_recvmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 474 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(474,*arguments)

      subject.sctp_generic_recvmsg_syscall(*arguments)
    end
  end

  describe "#pread_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 475 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(475,*arguments)

      subject.pread_syscall(*arguments)
    end
  end

  describe "#pwrite_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 476 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(476,*arguments)

      subject.pwrite_syscall(*arguments)
    end
  end

  describe "#mmap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 477 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(477,*arguments)

      subject.mmap_syscall(*arguments)
    end
  end

  describe "#lseek_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 478 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(478,*arguments)

      subject.lseek_syscall(*arguments)
    end
  end

  describe "#truncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 479 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(479,*arguments)

      subject.truncate_syscall(*arguments)
    end
  end

  describe "#ftruncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 480 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(480,*arguments)

      subject.ftruncate_syscall(*arguments)
    end
  end

  describe "#thr_kill2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 481 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(481,*arguments)

      subject.thr_kill2_syscall(*arguments)
    end
  end

  describe "#shm_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 483 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(483,*arguments)

      subject.shm_unlink_syscall(*arguments)
    end
  end

  describe "#cpuset_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 484 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(484,*arguments)

      subject.cpuset_syscall(*arguments)
    end
  end

  describe "#cpuset_setid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 485 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(485,*arguments)

      subject.cpuset_setid_syscall(*arguments)
    end
  end

  describe "#cpuset_getid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 486 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(486,*arguments)

      subject.cpuset_getid_syscall(*arguments)
    end
  end

  describe "#cpuset_getaffinity_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 487 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(487,*arguments)

      subject.cpuset_getaffinity_syscall(*arguments)
    end
  end

  describe "#cpuset_setaffinity_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 488 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(488,*arguments)

      subject.cpuset_setaffinity_syscall(*arguments)
    end
  end

  describe "#faccessat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 489 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(489,*arguments)

      subject.faccessat_syscall(*arguments)
    end
  end

  describe "#fchmodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 490 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(490,*arguments)

      subject.fchmodat_syscall(*arguments)
    end
  end

  describe "#fchownat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 491 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(491,*arguments)

      subject.fchownat_syscall(*arguments)
    end
  end

  describe "#fexecve_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 492 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(492,*arguments)

      subject.fexecve_syscall(*arguments)
    end
  end

  describe "#futimesat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 494 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(494,*arguments)

      subject.futimesat_syscall(*arguments)
    end
  end

  describe "#linkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 495 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(495,*arguments)

      subject.linkat_syscall(*arguments)
    end
  end

  describe "#mkdirat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 496 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(496,*arguments)

      subject.mkdirat_syscall(*arguments)
    end
  end

  describe "#mkfifoat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 497 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(497,*arguments)

      subject.mkfifoat_syscall(*arguments)
    end
  end

  describe "#openat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 499 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(499,*arguments)

      subject.openat_syscall(*arguments)
    end
  end

  describe "#readlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 500 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(500,*arguments)

      subject.readlinkat_syscall(*arguments)
    end
  end

  describe "#renameat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 501 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(501,*arguments)

      subject.renameat_syscall(*arguments)
    end
  end

  describe "#symlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 502 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(502,*arguments)

      subject.symlinkat_syscall(*arguments)
    end
  end

  describe "#unlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 503 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(503,*arguments)

      subject.unlinkat_syscall(*arguments)
    end
  end

  describe "#posix_openpt_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 504 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(504,*arguments)

      subject.posix_openpt_syscall(*arguments)
    end
  end

  describe "#jail_get_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 506 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(506,*arguments)

      subject.jail_get_syscall(*arguments)
    end
  end

  describe "#jail_set_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 507 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(507,*arguments)

      subject.jail_set_syscall(*arguments)
    end
  end

  describe "#jail_remove_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 508 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(508,*arguments)

      subject.jail_remove_syscall(*arguments)
    end
  end

  describe "#__semctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 510 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(510,*arguments)

      subject.__semctl_syscall(*arguments)
    end
  end

  describe "#msgctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 511 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(511,*arguments)

      subject.msgctl_syscall(*arguments)
    end
  end

  describe "#shmctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 512 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(512,*arguments)

      subject.shmctl_syscall(*arguments)
    end
  end

  describe "#lpathconf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 513 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(513,*arguments)

      subject.lpathconf_syscall(*arguments)
    end
  end

  describe "#__cap_rights_get_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 515 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(515,*arguments)

      subject.__cap_rights_get_syscall(*arguments)
    end
  end

  describe "#cap_enter_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 516" do
      expect(subject).to receive(:syscall_macro).with(516)

      subject.cap_enter_syscall
    end
  end

  describe "#cap_getmode_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 517 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(517,*arguments)

      subject.cap_getmode_syscall(*arguments)
    end
  end

  describe "#pdfork_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 518 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(518,*arguments)

      subject.pdfork_syscall(*arguments)
    end
  end

  describe "#pdkill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 519 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(519,*arguments)

      subject.pdkill_syscall(*arguments)
    end
  end

  describe "#pdgetpid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 520 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(520,*arguments)

      subject.pdgetpid_syscall(*arguments)
    end
  end

  describe "#pselect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 522 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(522,*arguments)

      subject.pselect_syscall(*arguments)
    end
  end

  describe "#getloginclass_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 523 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(523,*arguments)

      subject.getloginclass_syscall(*arguments)
    end
  end

  describe "#setloginclass_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 524 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(524,*arguments)

      subject.setloginclass_syscall(*arguments)
    end
  end

  describe "#rctl_get_racct_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 525 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(525,*arguments)

      subject.rctl_get_racct_syscall(*arguments)
    end
  end

  describe "#rctl_get_rules_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 526 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(526,*arguments)

      subject.rctl_get_rules_syscall(*arguments)
    end
  end

  describe "#rctl_get_limits_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 527 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(527,*arguments)

      subject.rctl_get_limits_syscall(*arguments)
    end
  end

  describe "#rctl_add_rule_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 528 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(528,*arguments)

      subject.rctl_add_rule_syscall(*arguments)
    end
  end

  describe "#rctl_remove_rule_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 529 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(529,*arguments)

      subject.rctl_remove_rule_syscall(*arguments)
    end
  end

  describe "#posix_fallocate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 530 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(530,*arguments)

      subject.posix_fallocate_syscall(*arguments)
    end
  end

  describe "#posix_fadvise_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 531 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(531,*arguments)

      subject.posix_fadvise_syscall(*arguments)
    end
  end

  describe "#wait6_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 532 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(532,*arguments)

      subject.wait6_syscall(*arguments)
    end
  end

  describe "#cap_rights_limit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 533 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(533,*arguments)

      subject.cap_rights_limit_syscall(*arguments)
    end
  end

  describe "#cap_ioctls_limit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 534 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(534,*arguments)

      subject.cap_ioctls_limit_syscall(*arguments)
    end
  end

  describe "#cap_ioctls_get_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 535 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(535,*arguments)

      subject.cap_ioctls_get_syscall(*arguments)
    end
  end

  describe "#cap_fcntls_limit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 536 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(536,*arguments)

      subject.cap_fcntls_limit_syscall(*arguments)
    end
  end

  describe "#cap_fcntls_get_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 537 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(537,*arguments)

      subject.cap_fcntls_get_syscall(*arguments)
    end
  end

  describe "#bindat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 538 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(538,*arguments)

      subject.bindat_syscall(*arguments)
    end
  end

  describe "#connectat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 539 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(539,*arguments)

      subject.connectat_syscall(*arguments)
    end
  end

  describe "#chflagsat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 540 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(540,*arguments)

      subject.chflagsat_syscall(*arguments)
    end
  end

  describe "#accept4_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 541 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(541,*arguments)

      subject.accept4_syscall(*arguments)
    end
  end

  describe "#pipe2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 542 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(542,*arguments)

      subject.pipe2_syscall(*arguments)
    end
  end

  describe "#aio_mlock_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 543 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(543,*arguments)

      subject.aio_mlock_syscall(*arguments)
    end
  end

  describe "#procctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 544 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(544,*arguments)

      subject.procctl_syscall(*arguments)
    end
  end

  describe "#ppoll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 545 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(545,*arguments)

      subject.ppoll_syscall(*arguments)
    end
  end

  describe "#futimens_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 546 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(546,*arguments)

      subject.futimens_syscall(*arguments)
    end
  end

  describe "#utimensat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 547 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(547,*arguments)

      subject.utimensat_syscall(*arguments)
    end
  end

  describe "#fdatasync_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 550 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(550,*arguments)

      subject.fdatasync_syscall(*arguments)
    end
  end

  describe "#fstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 551 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(551,*arguments)

      subject.fstat_syscall(*arguments)
    end
  end

  describe "#fstatat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 552 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(552,*arguments)

      subject.fstatat_syscall(*arguments)
    end
  end

  describe "#fhstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 553 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(553,*arguments)

      subject.fhstat_syscall(*arguments)
    end
  end

  describe "#getdirentries_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 554 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(554,*arguments)

      subject.getdirentries_syscall(*arguments)
    end
  end

  describe "#statfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 555 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(555,*arguments)

      subject.statfs_syscall(*arguments)
    end
  end

  describe "#fstatfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 556 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(556,*arguments)

      subject.fstatfs_syscall(*arguments)
    end
  end

  describe "#getfsstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 557 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(557,*arguments)

      subject.getfsstat_syscall(*arguments)
    end
  end

  describe "#fhstatfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 558 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(558,*arguments)

      subject.fhstatfs_syscall(*arguments)
    end
  end

  describe "#mknodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 559 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(559,*arguments)

      subject.mknodat_syscall(*arguments)
    end
  end

  describe "#kevent_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 560 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(560,*arguments)

      subject.kevent_syscall(*arguments)
    end
  end

  describe "#cpuset_getdomain_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 561 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(561,*arguments)

      subject.cpuset_getdomain_syscall(*arguments)
    end
  end

  describe "#cpuset_setdomain_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 562 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(562,*arguments)

      subject.cpuset_setdomain_syscall(*arguments)
    end
  end

  describe "#getrandom_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 563 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(563,*arguments)

      subject.getrandom_syscall(*arguments)
    end
  end

  describe "#getfhat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 564 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(564,*arguments)

      subject.getfhat_syscall(*arguments)
    end
  end

  describe "#fhlink_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 565 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(565,*arguments)

      subject.fhlink_syscall(*arguments)
    end
  end

  describe "#fhlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 566 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(566,*arguments)

      subject.fhlinkat_syscall(*arguments)
    end
  end

  describe "#fhreadlink_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 567 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(567,*arguments)

      subject.fhreadlink_syscall(*arguments)
    end
  end

  describe "#funlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 568 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(568,*arguments)

      subject.funlinkat_syscall(*arguments)
    end
  end

  describe "#copy_file_range_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 569 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(569,*arguments)

      subject.copy_file_range_syscall(*arguments)
    end
  end

  describe "#__sysctlbyname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 570 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(570,*arguments)

      subject.__sysctlbyname_syscall(*arguments)
    end
  end

  describe "#shm_open2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 571 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(571,*arguments)

      subject.shm_open2_syscall(*arguments)
    end
  end

  describe "#shm_rename_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 572 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(572,*arguments)

      subject.shm_rename_syscall(*arguments)
    end
  end

  describe "#sigfastblock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 573 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(573,*arguments)

      subject.sigfastblock_syscall(*arguments)
    end
  end

  describe "#__realpathat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 574 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(574,*arguments)

      subject.__realpathat_syscall(*arguments)
    end
  end

  describe "#close_range_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 575 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(575,*arguments)

      subject.close_range_syscall(*arguments)
    end
  end

  describe "#rpctls_syscall_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 576 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(576,*arguments)

      subject.rpctls_syscall_syscall(*arguments)
    end
  end

  describe "#__specialfd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 577 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(577,*arguments)

      subject.__specialfd_syscall(*arguments)
    end
  end

  describe "#aio_writev_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 578 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(578,*arguments)

      subject.aio_writev_syscall(*arguments)
    end
  end

  describe "#aio_readv_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 579 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(579,*arguments)

      subject.aio_readv_syscall(*arguments)
    end
  end

  describe "#fspacectl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 580 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(580,*arguments)

      subject.fspacectl_syscall(*arguments)
    end
  end

  describe "#sched_getcpu_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 581" do
      expect(subject).to receive(:syscall_macro).with(581)

      subject.sched_getcpu_syscall
    end
  end

  describe "#swapoff_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 582 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(582,*arguments)

      subject.swapoff_syscall(*arguments)
    end
  end

  describe "#kqueuex_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 583 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(583,*arguments)

      subject.kqueuex_syscall(*arguments)
    end
  end

  describe "#membarrier_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 584 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(584,*arguments)

      subject.membarrier_syscall(*arguments)
    end
  end

  describe "#timerfd_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 585 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(585,*arguments)

      subject.timerfd_create_syscall(*arguments)
    end
  end

  describe "#timerfd_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 586 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(586,*arguments)

      subject.timerfd_gettime_syscall(*arguments)
    end
  end

  describe "#timerfd_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 587 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(587,*arguments)

      subject.timerfd_settime_syscall(*arguments)
    end
  end

  describe "#kcmp_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 588 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(588,*arguments)

      subject.kcmp_syscall(*arguments)
    end
  end

  describe "#getrlimitusage_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 589 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(589,*arguments)

      subject.getrlimitusage_syscall(*arguments)
    end
  end

  describe "#fchroot_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 590 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(590,*arguments)

      subject.fchroot_syscall(*arguments)
    end
  end

  describe "#setcred_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 591 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(591,*arguments)

      subject.setcred_syscall(*arguments)
    end
  end
end
