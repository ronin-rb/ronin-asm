#
# NOTE: this file was automatically generated. Do not edit!
#

require 'spec_helper'
require 'ronin/asm/syscalls/openbsd'

describe Ronin::ASM::Syscalls::OpenBSD do
  subject do
    obj = Object.new
    obj.extend Ronin::ASM::Syscalls::OpenBSD 
    obj
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

  describe "#getentropy_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 7 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(7,*arguments)

      subject.getentropy_syscall(*arguments)
    end
  end

  describe "#__tfork_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 8 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(8,*arguments)

      subject.__tfork_syscall(*arguments)
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

  describe "#wait4_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 11 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(11,*arguments)

      subject.wait4_syscall(*arguments)
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

  describe "#mknod_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 14 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(14,*arguments)

      subject.mknod_syscall(*arguments)
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

  describe "#getdtablecount_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 18" do
      expect(subject).to receive(:syscall_macro).with(18)

      subject.getdtablecount_syscall
    end
  end

  describe "#getrusage_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 19 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(19,*arguments)

      subject.getrusage_syscall(*arguments)
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

  describe "#stat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 38 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(38,*arguments)

      subject.stat_syscall(*arguments)
    end
  end

  describe "#getppid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 39" do
      expect(subject).to receive(:syscall_macro).with(39)

      subject.getppid_syscall
    end
  end

  describe "#lstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 40 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(40,*arguments)

      subject.lstat_syscall(*arguments)
    end
  end

  describe "#dup_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 41 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(41,*arguments)

      subject.dup_syscall(*arguments)
    end
  end

  describe "#fstatat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 42 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(42,*arguments)

      subject.fstatat_syscall(*arguments)
    end
  end

  describe "#getegid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 43" do
      expect(subject).to receive(:syscall_macro).with(43)

      subject.getegid_syscall
    end
  end

  describe "#ktrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 45 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(45,*arguments)

      subject.ktrace_syscall(*arguments)
    end
  end

  describe "#sigaction_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 46 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(46,*arguments)

      subject.sigaction_syscall(*arguments)
    end
  end

  describe "#getgid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 47" do
      expect(subject).to receive(:syscall_macro).with(47)

      subject.getgid_syscall
    end
  end

  describe "#sigprocmask_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 48 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(48,*arguments)

      subject.sigprocmask_syscall(*arguments)
    end
  end

  describe "#mmap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 49 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(49,*arguments)

      subject.mmap_syscall(*arguments)
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

  describe "#sigpending_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 52" do
      expect(subject).to receive(:syscall_macro).with(52)

      subject.sigpending_syscall
    end
  end

  describe "#fstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 53 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(53,*arguments)

      subject.fstat_syscall(*arguments)
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

  describe "#getfsstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 62 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(62,*arguments)

      subject.getfsstat_syscall(*arguments)
    end
  end

  describe "#statfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 63 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(63,*arguments)

      subject.statfs_syscall(*arguments)
    end
  end

  describe "#fstatfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 64 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(64,*arguments)

      subject.fstatfs_syscall(*arguments)
    end
  end

  describe "#fhstatfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 65 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(65,*arguments)

      subject.fhstatfs_syscall(*arguments)
    end
  end

  describe "#vfork_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 66" do
      expect(subject).to receive(:syscall_macro).with(66)

      subject.vfork_syscall
    end
  end

  describe "#gettimeofday_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 67 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(67,*arguments)

      subject.gettimeofday_syscall(*arguments)
    end
  end

  describe "#settimeofday_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 68 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(68,*arguments)

      subject.settimeofday_syscall(*arguments)
    end
  end

  describe "#setitimer_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 69 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(69,*arguments)

      subject.setitimer_syscall(*arguments)
    end
  end

  describe "#getitimer_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 70 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(70,*arguments)

      subject.getitimer_syscall(*arguments)
    end
  end

  describe "#select_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 71 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(71,*arguments)

      subject.select_syscall(*arguments)
    end
  end

  describe "#kevent_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 72 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(72,*arguments)

      subject.kevent_syscall(*arguments)
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

  describe "#utimes_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 76 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(76,*arguments)

      subject.utimes_syscall(*arguments)
    end
  end

  describe "#futimes_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 77 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(77,*arguments)

      subject.futimes_syscall(*arguments)
    end
  end

  describe "#mquery_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 78 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(78,*arguments)

      subject.mquery_syscall(*arguments)
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

  describe "#futex_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 83 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(83,*arguments)

      subject.futex_syscall(*arguments)
    end
  end

  describe "#utimensat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 84 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(84,*arguments)

      subject.utimensat_syscall(*arguments)
    end
  end

  describe "#futimens_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 85 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(85,*arguments)

      subject.futimens_syscall(*arguments)
    end
  end

  describe "#kbind_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 86 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(86,*arguments)

      subject.kbind_syscall(*arguments)
    end
  end

  describe "#clock_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 87 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(87,*arguments)

      subject.clock_gettime_syscall(*arguments)
    end
  end

  describe "#clock_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 88 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(88,*arguments)

      subject.clock_settime_syscall(*arguments)
    end
  end

  describe "#clock_getres_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 89 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(89,*arguments)

      subject.clock_getres_syscall(*arguments)
    end
  end

  describe "#dup2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 90 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(90,*arguments)

      subject.dup2_syscall(*arguments)
    end
  end

  describe "#nanosleep_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 91 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(91,*arguments)

      subject.nanosleep_syscall(*arguments)
    end
  end

  describe "#fcntl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 92 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(92,*arguments)

      subject.fcntl_syscall(*arguments)
    end
  end

  describe "#accept4_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 93 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(93,*arguments)

      subject.accept4_syscall(*arguments)
    end
  end

  describe "#__thrsleep_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 94 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(94,*arguments)

      subject.__thrsleep_syscall(*arguments)
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

  describe "#getdents_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 99 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(99,*arguments)

      subject.getdents_syscall(*arguments)
    end
  end

  describe "#getpriority_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 100 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(100,*arguments)

      subject.getpriority_syscall(*arguments)
    end
  end

  describe "#pipe2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 101 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(101,*arguments)

      subject.pipe2_syscall(*arguments)
    end
  end

  describe "#dup3_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 102 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(102,*arguments)

      subject.dup3_syscall(*arguments)
    end
  end

  describe "#sigreturn_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 103 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(103,*arguments)

      subject.sigreturn_syscall(*arguments)
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

  describe "#chflagsat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 107 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(107,*arguments)

      subject.chflagsat_syscall(*arguments)
    end
  end

  describe "#pledge_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 108 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(108,*arguments)

      subject.pledge_syscall(*arguments)
    end
  end

  describe "#ppoll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 109 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(109,*arguments)

      subject.ppoll_syscall(*arguments)
    end
  end

  describe "#pselect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 110 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(110,*arguments)

      subject.pselect_syscall(*arguments)
    end
  end

  describe "#sigsuspend_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 111 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(111,*arguments)

      subject.sigsuspend_syscall(*arguments)
    end
  end

  describe "#sendsyslog_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 112 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(112,*arguments)

      subject.sendsyslog_syscall(*arguments)
    end
  end

  describe "#unveil_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 114 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(114,*arguments)

      subject.unveil_syscall(*arguments)
    end
  end

  describe "#__realpath_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 115 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(115,*arguments)

      subject.__realpath_syscall(*arguments)
    end
  end

  describe "#recvmmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 116 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(116,*arguments)

      subject.recvmmsg_syscall(*arguments)
    end
  end

  describe "#sendmmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 117 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(117,*arguments)

      subject.sendmmsg_syscall(*arguments)
    end
  end

  describe "#getsockopt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 118 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(118,*arguments)

      subject.getsockopt_syscall(*arguments)
    end
  end

  describe "#thrkill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 119 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(119,*arguments)

      subject.thrkill_syscall(*arguments)
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

  describe "#kill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 122 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(122,*arguments)

      subject.kill_syscall(*arguments)
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

  describe "#adjtime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 140 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(140,*arguments)

      subject.adjtime_syscall(*arguments)
    end
  end

  describe "#getlogin_r_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 141 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(141,*arguments)

      subject.getlogin_r_syscall(*arguments)
    end
  end

  describe "#getthrname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 142 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(142,*arguments)

      subject.getthrname_syscall(*arguments)
    end
  end

  describe "#setthrname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 143 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(143,*arguments)

      subject.setthrname_syscall(*arguments)
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

  describe "#ypconnect_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 150 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(150,*arguments)

      subject.ypconnect_syscall(*arguments)
    end
  end

  describe "#nfssvc_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 155 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(155,*arguments)

      subject.nfssvc_syscall(*arguments)
    end
  end

  describe "#pinsyscalls_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 158 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(158,*arguments)

      subject.pinsyscalls_syscall(*arguments)
    end
  end

  describe "#mimmutable_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 159 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(159,*arguments)

      subject.mimmutable_syscall(*arguments)
    end
  end

  describe "#waitid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 160 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(160,*arguments)

      subject.waitid_syscall(*arguments)
    end
  end

  describe "#getfh_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 161 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(161,*arguments)

      subject.getfh_syscall(*arguments)
    end
  end

  describe "#__tmpfd_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 164 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(164,*arguments)

      subject.__tmpfd_syscall(*arguments)
    end
  end

  describe "#sysarch_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 165 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(165,*arguments)

      subject.sysarch_syscall(*arguments)
    end
  end

  describe "#lseek_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 166 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(166,*arguments)

      subject.lseek_syscall(*arguments)
    end
  end

  describe "#truncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 167 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(167,*arguments)

      subject.truncate_syscall(*arguments)
    end
  end

  describe "#ftruncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 168 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(168,*arguments)

      subject.ftruncate_syscall(*arguments)
    end
  end

  describe "#pread_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 169 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(169,*arguments)

      subject.pread_syscall(*arguments)
    end
  end

  describe "#pwrite_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 170 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(170,*arguments)

      subject.pwrite_syscall(*arguments)
    end
  end

  describe "#preadv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 171 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(171,*arguments)

      subject.preadv_syscall(*arguments)
    end
  end

  describe "#pwritev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 172 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(172,*arguments)

      subject.pwritev_syscall(*arguments)
    end
  end

  describe "#profil_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 175 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(175,*arguments)

      subject.profil_syscall(*arguments)
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

  describe "#pathconfat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 190 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(190,*arguments)

      subject.pathconfat_syscall(*arguments)
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

  describe "#swapctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 193 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(193,*arguments)

      subject.swapctl_syscall(*arguments)
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

  describe "#sysctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 202 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(202,*arguments)

      subject.sysctl_syscall(*arguments)
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

  describe "#getpgid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 207 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(207,*arguments)

      subject.getpgid_syscall(*arguments)
    end
  end

  describe "#utrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 209 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(209,*arguments)

      subject.utrace_syscall(*arguments)
    end
  end

  describe "#semget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 221 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(221,*arguments)

      subject.semget_syscall(*arguments)
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

  describe "#minherit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 250 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(250,*arguments)

      subject.minherit_syscall(*arguments)
    end
  end

  describe "#poll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 252 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(252,*arguments)

      subject.poll_syscall(*arguments)
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

  describe "#getsid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 255 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(255,*arguments)

      subject.getsid_syscall(*arguments)
    end
  end

  describe "#msync_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 256 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(256,*arguments)

      subject.msync_syscall(*arguments)
    end
  end

  describe "#pipe_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 263 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(263,*arguments)

      subject.pipe_syscall(*arguments)
    end
  end

  describe "#fhopen_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 264 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(264,*arguments)

      subject.fhopen_syscall(*arguments)
    end
  end

  describe "#kqueue_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 269" do
      expect(subject).to receive(:syscall_macro).with(269)

      subject.kqueue_syscall
    end
  end

  describe "#kqueue1_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 270 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(270,*arguments)

      subject.kqueue1_syscall(*arguments)
    end
  end

  describe "#mlockall_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 271 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(271,*arguments)

      subject.mlockall_syscall(*arguments)
    end
  end

  describe "#munlockall_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 272" do
      expect(subject).to receive(:syscall_macro).with(272)

      subject.munlockall_syscall
    end
  end

  describe "#getresuid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 281 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(281,*arguments)

      subject.getresuid_syscall(*arguments)
    end
  end

  describe "#setresuid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 282 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(282,*arguments)

      subject.setresuid_syscall(*arguments)
    end
  end

  describe "#getresgid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 283 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(283,*arguments)

      subject.getresgid_syscall(*arguments)
    end
  end

  describe "#setresgid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 284 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(284,*arguments)

      subject.setresgid_syscall(*arguments)
    end
  end

  describe "#closefrom_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 287 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(287,*arguments)

      subject.closefrom_syscall(*arguments)
    end
  end

  describe "#sigaltstack_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 288 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(288,*arguments)

      subject.sigaltstack_syscall(*arguments)
    end
  end

  describe "#shmget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 289 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(289,*arguments)

      subject.shmget_syscall(*arguments)
    end
  end

  describe "#semop_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 290 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(290,*arguments)

      subject.semop_syscall(*arguments)
    end
  end

  describe "#fhstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 294 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(294,*arguments)

      subject.fhstat_syscall(*arguments)
    end
  end

  describe "#__semctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 295 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(295,*arguments)

      subject.__semctl_syscall(*arguments)
    end
  end

  describe "#shmctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 296 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(296,*arguments)

      subject.shmctl_syscall(*arguments)
    end
  end

  describe "#msgctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 297 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(297,*arguments)

      subject.msgctl_syscall(*arguments)
    end
  end

  describe "#sched_yield_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 298" do
      expect(subject).to receive(:syscall_macro).with(298)

      subject.sched_yield_syscall
    end
  end

  describe "#getthrid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 299" do
      expect(subject).to receive(:syscall_macro).with(299)

      subject.getthrid_syscall
    end
  end

  describe "#__thrwakeup_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 301 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(301,*arguments)

      subject.__thrwakeup_syscall(*arguments)
    end
  end

  describe "#__threxit_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 302 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(302,*arguments)

      subject.__threxit_syscall(*arguments)
    end
  end

  describe "#__thrsigdivert_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 303 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(303,*arguments)

      subject.__thrsigdivert_syscall(*arguments)
    end
  end

  describe "#__getcwd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 304 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(304,*arguments)

      subject.__getcwd_syscall(*arguments)
    end
  end

  describe "#adjfreq_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 305 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(305,*arguments)

      subject.adjfreq_syscall(*arguments)
    end
  end

  describe "#setrtable_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 310 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(310,*arguments)

      subject.setrtable_syscall(*arguments)
    end
  end

  describe "#getrtable_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 311" do
      expect(subject).to receive(:syscall_macro).with(311)

      subject.getrtable_syscall
    end
  end

  describe "#faccessat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 313 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(313,*arguments)

      subject.faccessat_syscall(*arguments)
    end
  end

  describe "#fchmodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 314 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(314,*arguments)

      subject.fchmodat_syscall(*arguments)
    end
  end

  describe "#fchownat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 315 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(315,*arguments)

      subject.fchownat_syscall(*arguments)
    end
  end

  describe "#linkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 317 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(317,*arguments)

      subject.linkat_syscall(*arguments)
    end
  end

  describe "#mkdirat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 318 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(318,*arguments)

      subject.mkdirat_syscall(*arguments)
    end
  end

  describe "#mkfifoat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 319 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(319,*arguments)

      subject.mkfifoat_syscall(*arguments)
    end
  end

  describe "#mknodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 320 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(320,*arguments)

      subject.mknodat_syscall(*arguments)
    end
  end

  describe "#openat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 321 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(321,*arguments)

      subject.openat_syscall(*arguments)
    end
  end

  describe "#readlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 322 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(322,*arguments)

      subject.readlinkat_syscall(*arguments)
    end
  end

  describe "#renameat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 323 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(323,*arguments)

      subject.renameat_syscall(*arguments)
    end
  end

  describe "#symlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 324 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(324,*arguments)

      subject.symlinkat_syscall(*arguments)
    end
  end

  describe "#unlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 325 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(325,*arguments)

      subject.unlinkat_syscall(*arguments)
    end
  end

  describe "#__set_tcb_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 329 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(329,*arguments)

      subject.__set_tcb_syscall(*arguments)
    end
  end

  describe "#__get_tcb_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 330" do
      expect(subject).to receive(:syscall_macro).with(330)

      subject.__get_tcb_syscall
    end
  end
end
