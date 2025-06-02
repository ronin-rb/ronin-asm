require 'spec_helper'
require 'ronin/asm/syscalls/macos'

describe Ronin::ASM::Syscalls::MacOS do
  subject do
    obj = Object.new
    obj.extend Ronin::ASM::Syscalls::MacOS
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

  describe "#open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 5 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(5,*arguments)

      subject.open_syscall(*arguments)
    end
  end

  describe "#sys_close_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 6 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(6,*arguments)

      subject.sys_close_syscall(*arguments)
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

  describe "#sys_chdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 12 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(12,*arguments)

      subject.sys_chdir_syscall(*arguments)
    end
  end

  describe "#sys_fchdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 13 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(13,*arguments)

      subject.sys_fchdir_syscall(*arguments)
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

  describe "#getfsstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 18 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(18,*arguments)

      subject.getfsstat_syscall(*arguments)
    end
  end

  describe "#getpid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 20" do
      expect(subject).to receive(:syscall_macro).with(20)

      subject.getpid_syscall
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
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

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

  describe "#sys_dup_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 41 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(41,*arguments)

      subject.sys_dup_syscall(*arguments)
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
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 48 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(48,*arguments)

      subject.sigprocmask_syscall(*arguments)
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

  describe "#sigpending_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 52 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(52,*arguments)

      subject.sigpending_syscall(*arguments)
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
    let(:arguments) { [double('arg1'), double('arg2')] }

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
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 85" do
      expect(subject).to receive(:syscall_macro).with(85)

      subject.swapon_syscall
    end
  end

  describe "#getitimer_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 86 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(86,*arguments)

      subject.getitimer_syscall(*arguments)
    end
  end

  describe "#sys_getdtablesize_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 89" do
      expect(subject).to receive(:syscall_macro).with(89)

      subject.sys_getdtablesize_syscall
    end
  end

  describe "#sys_dup2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 90 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(90,*arguments)

      subject.sys_dup2_syscall(*arguments)
    end
  end

  describe "#sys_fcntl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 92 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(92,*arguments)

      subject.sys_fcntl_syscall(*arguments)
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
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

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

  describe "#sys_flock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 131 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(131,*arguments)

      subject.sys_flock_syscall(*arguments)
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

  describe "#futimes_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 139 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(139,*arguments)

      subject.futimes_syscall(*arguments)
    end
  end

  describe "#adjtime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 140 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(140,*arguments)

      subject.adjtime_syscall(*arguments)
    end
  end

  describe "#gethostuuid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 142 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(142,*arguments)

      subject.gethostuuid_syscall(*arguments)
    end
  end

  describe "#setsid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 147" do
      expect(subject).to receive(:syscall_macro).with(147)

      subject.setsid_syscall
    end
  end

  describe "#getpgid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 151 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(151,*arguments)

      subject.getpgid_syscall(*arguments)
    end
  end

  describe "#setprivexec_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 152 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(152,*arguments)

      subject.setprivexec_syscall(*arguments)
    end
  end

  describe "#pread_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 153 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(153,*arguments)

      subject.pread_syscall(*arguments)
    end
  end

  describe "#pwrite_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 154 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(154,*arguments)

      subject.pwrite_syscall(*arguments)
    end
  end

  describe "#statfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 157 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(157,*arguments)

      subject.statfs_syscall(*arguments)
    end
  end

  describe "#fstatfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 158 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(158,*arguments)

      subject.fstatfs_syscall(*arguments)
    end
  end

  describe "#unmount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 159 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(159,*arguments)

      subject.unmount_syscall(*arguments)
    end
  end

  describe "#quotactl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 165 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(165,*arguments)

      subject.quotactl_syscall(*arguments)
    end
  end

  describe "#mount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 167 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(167,*arguments)

      subject.mount_syscall(*arguments)
    end
  end

  describe "#csops_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 169 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(169,*arguments)

      subject.csops_syscall(*arguments)
    end
  end

  describe "#csops_audittoken_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 170 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(170,*arguments)

      subject.csops_audittoken_syscall(*arguments)
    end
  end

  describe "#waitid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 173 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(173,*arguments)

      subject.waitid_syscall(*arguments)
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

  describe "#sigreturn_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 184 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(184,*arguments)

      subject.sigreturn_syscall(*arguments)
    end
  end

  describe "#fdatasync_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 187 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(187,*arguments)

      subject.fdatasync_syscall(*arguments)
    end
  end

  describe "#stat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 188 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(188,*arguments)

      subject.stat_syscall(*arguments)
    end
  end

  describe "#sys_fstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 189 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(189,*arguments)

      subject.sys_fstat_syscall(*arguments)
    end
  end

  describe "#lstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 190 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(190,*arguments)

      subject.lstat_syscall(*arguments)
    end
  end

  describe "#pathconf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 191 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(191,*arguments)

      subject.pathconf_syscall(*arguments)
    end
  end

  describe "#sys_fpathconf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 192 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(192,*arguments)

      subject.sys_fpathconf_syscall(*arguments)
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

  describe "#getdirentries_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 196 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(196,*arguments)

      subject.getdirentries_syscall(*arguments)
    end
  end

  describe "#mmap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 197 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(197,*arguments)

      subject.mmap_syscall(*arguments)
    end
  end

  describe "#lseek_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 199 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(199,*arguments)

      subject.lseek_syscall(*arguments)
    end
  end

  describe "#truncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 200 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(200,*arguments)

      subject.truncate_syscall(*arguments)
    end
  end

  describe "#ftruncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 201 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(201,*arguments)

      subject.ftruncate_syscall(*arguments)
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

  describe "#undelete_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 205 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(205,*arguments)

      subject.undelete_syscall(*arguments)
    end
  end

  describe "#fsgetpath_ext_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 217 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(217,*arguments)

      subject.fsgetpath_ext_syscall(*arguments)
    end
  end

  describe "#getattrlist_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 220 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(220,*arguments)

      subject.getattrlist_syscall(*arguments)
    end
  end

  describe "#setattrlist_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 221 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(221,*arguments)

      subject.setattrlist_syscall(*arguments)
    end
  end

  describe "#getdirentriesattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7'), double('arg8')] }

    it "must call #syscall_macro with the syscall number 222 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(222,*arguments)

      subject.getdirentriesattr_syscall(*arguments)
    end
  end

  describe "#exchangedata_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 223 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(223,*arguments)

      subject.exchangedata_syscall(*arguments)
    end
  end

  describe "#searchfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 225 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(225,*arguments)

      subject.searchfs_syscall(*arguments)
    end
  end

  describe "#delete_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 226 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(226,*arguments)

      subject.delete_syscall(*arguments)
    end
  end

  describe "#copyfile_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 227 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(227,*arguments)

      subject.copyfile_syscall(*arguments)
    end
  end

  describe "#fgetattrlist_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 228 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(228,*arguments)

      subject.fgetattrlist_syscall(*arguments)
    end
  end

  describe "#fsetattrlist_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 229 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(229,*arguments)

      subject.fsetattrlist_syscall(*arguments)
    end
  end

  describe "#poll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 230 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(230,*arguments)

      subject.poll_syscall(*arguments)
    end
  end

  describe "#getxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 234 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(234,*arguments)

      subject.getxattr_syscall(*arguments)
    end
  end

  describe "#fgetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 235 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(235,*arguments)

      subject.fgetxattr_syscall(*arguments)
    end
  end

  describe "#setxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 236 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(236,*arguments)

      subject.setxattr_syscall(*arguments)
    end
  end

  describe "#fsetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 237 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(237,*arguments)

      subject.fsetxattr_syscall(*arguments)
    end
  end

  describe "#removexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 238 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(238,*arguments)

      subject.removexattr_syscall(*arguments)
    end
  end

  describe "#fremovexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 239 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(239,*arguments)

      subject.fremovexattr_syscall(*arguments)
    end
  end

  describe "#listxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 240 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(240,*arguments)

      subject.listxattr_syscall(*arguments)
    end
  end

  describe "#flistxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 241 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(241,*arguments)

      subject.flistxattr_syscall(*arguments)
    end
  end

  describe "#fsctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 242 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(242,*arguments)

      subject.fsctl_syscall(*arguments)
    end
  end

  describe "#initgroups_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 243 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(243,*arguments)

      subject.initgroups_syscall(*arguments)
    end
  end

  describe "#posix_spawn_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 244 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(244,*arguments)

      subject.posix_spawn_syscall(*arguments)
    end
  end

  describe "#ffsctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 245 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(245,*arguments)

      subject.ffsctl_syscall(*arguments)
    end
  end

  describe "#minherit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 250 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(250,*arguments)

      subject.minherit_syscall(*arguments)
    end
  end

  describe "#semsys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 251 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(251,*arguments)

      subject.semsys_syscall(*arguments)
    end
  end

  describe "#msgsys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 252 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(252,*arguments)

      subject.msgsys_syscall(*arguments)
    end
  end

  describe "#shmsys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 253 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(253,*arguments)

      subject.shmsys_syscall(*arguments)
    end
  end

  describe "#semctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 254 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(254,*arguments)

      subject.semctl_syscall(*arguments)
    end
  end

  describe "#semget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 255 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(255,*arguments)

      subject.semget_syscall(*arguments)
    end
  end

  describe "#semop_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 256 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(256,*arguments)

      subject.semop_syscall(*arguments)
    end
  end

  describe "#msgctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 258 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(258,*arguments)

      subject.msgctl_syscall(*arguments)
    end
  end

  describe "#msgget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 259 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(259,*arguments)

      subject.msgget_syscall(*arguments)
    end
  end

  describe "#msgsnd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 260 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(260,*arguments)

      subject.msgsnd_syscall(*arguments)
    end
  end

  describe "#msgrcv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 261 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(261,*arguments)

      subject.msgrcv_syscall(*arguments)
    end
  end

  describe "#shmat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 262 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(262,*arguments)

      subject.shmat_syscall(*arguments)
    end
  end

  describe "#shmctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 263 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(263,*arguments)

      subject.shmctl_syscall(*arguments)
    end
  end

  describe "#shmdt_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 264 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(264,*arguments)

      subject.shmdt_syscall(*arguments)
    end
  end

  describe "#shmget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 265 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(265,*arguments)

      subject.shmget_syscall(*arguments)
    end
  end

  describe "#shm_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 266 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(266,*arguments)

      subject.shm_open_syscall(*arguments)
    end
  end

  describe "#shm_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 267 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(267,*arguments)

      subject.shm_unlink_syscall(*arguments)
    end
  end

  describe "#sem_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 268 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(268,*arguments)

      subject.sem_open_syscall(*arguments)
    end
  end

  describe "#sem_close_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 269 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(269,*arguments)

      subject.sem_close_syscall(*arguments)
    end
  end

  describe "#sem_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 270 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(270,*arguments)

      subject.sem_unlink_syscall(*arguments)
    end
  end

  describe "#sem_wait_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 271 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(271,*arguments)

      subject.sem_wait_syscall(*arguments)
    end
  end

  describe "#sem_trywait_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 272 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(272,*arguments)

      subject.sem_trywait_syscall(*arguments)
    end
  end

  describe "#sem_post_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 273 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(273,*arguments)

      subject.sem_post_syscall(*arguments)
    end
  end

  describe "#sys_sysctlbyname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 274 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(274,*arguments)

      subject.sys_sysctlbyname_syscall(*arguments)
    end
  end

  describe "#open_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 277 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(277,*arguments)

      subject.open_extended_syscall(*arguments)
    end
  end

  describe "#umask_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 278 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(278,*arguments)

      subject.umask_extended_syscall(*arguments)
    end
  end

  describe "#stat_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 279 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(279,*arguments)

      subject.stat_extended_syscall(*arguments)
    end
  end

  describe "#lstat_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 280 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(280,*arguments)

      subject.lstat_extended_syscall(*arguments)
    end
  end

  describe "#sys_fstat_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 281 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(281,*arguments)

      subject.sys_fstat_extended_syscall(*arguments)
    end
  end

  describe "#chmod_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 282 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(282,*arguments)

      subject.chmod_extended_syscall(*arguments)
    end
  end

  describe "#fchmod_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 283 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(283,*arguments)

      subject.fchmod_extended_syscall(*arguments)
    end
  end

  describe "#access_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 284 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(284,*arguments)

      subject.access_extended_syscall(*arguments)
    end
  end

  describe "#sys_settid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 285 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(285,*arguments)

      subject.sys_settid_syscall(*arguments)
    end
  end

  describe "#gettid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 286 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(286,*arguments)

      subject.gettid_syscall(*arguments)
    end
  end

  describe "#setsgroups_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 287 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(287,*arguments)

      subject.setsgroups_syscall(*arguments)
    end
  end

  describe "#getsgroups_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 288 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(288,*arguments)

      subject.getsgroups_syscall(*arguments)
    end
  end

  describe "#setwgroups_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 289 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(289,*arguments)

      subject.setwgroups_syscall(*arguments)
    end
  end

  describe "#getwgroups_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 290 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(290,*arguments)

      subject.getwgroups_syscall(*arguments)
    end
  end

  describe "#mkfifo_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 291 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(291,*arguments)

      subject.mkfifo_extended_syscall(*arguments)
    end
  end

  describe "#mkdir_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 292 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(292,*arguments)

      subject.mkdir_extended_syscall(*arguments)
    end
  end

  describe "#identitysvc_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 293 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(293,*arguments)

      subject.identitysvc_syscall(*arguments)
    end
  end

  describe "#getsid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 310 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(310,*arguments)

      subject.getsid_syscall(*arguments)
    end
  end

  describe "#sys_settid_with_pid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 311 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(311,*arguments)

      subject.sys_settid_with_pid_syscall(*arguments)
    end
  end

  describe "#lio_listio_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 320 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(320,*arguments)

      subject.lio_listio_syscall(*arguments)
    end
  end

  describe "#iopolicysys_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 322 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(322,*arguments)

      subject.iopolicysys_syscall(*arguments)
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
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 325 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(325,*arguments)

      subject.munlockall_syscall(*arguments)
    end
  end

  describe "#issetugid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 327" do
      expect(subject).to receive(:syscall_macro).with(327)

      subject.issetugid_syscall
    end
  end

  describe "#__pthread_kill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 328 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(328,*arguments)

      subject.__pthread_kill_syscall(*arguments)
    end
  end

  describe "#__pthread_sigmask_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 329 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(329,*arguments)

      subject.__pthread_sigmask_syscall(*arguments)
    end
  end

  describe "#__sigwait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 330 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(330,*arguments)

      subject.__sigwait_syscall(*arguments)
    end
  end

  describe "#__semwait_signal_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 334 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(334,*arguments)

      subject.__semwait_signal_syscall(*arguments)
    end
  end

  describe "#proc_info_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 336 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(336,*arguments)

      subject.proc_info_syscall(*arguments)
    end
  end

  describe "#sendfile_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 337 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(337,*arguments)

      subject.sendfile_syscall(*arguments)
    end
  end

  describe "#stat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 338 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(338,*arguments)

      subject.stat64_syscall(*arguments)
    end
  end

  describe "#sys_fstat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 339 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(339,*arguments)

      subject.sys_fstat64_syscall(*arguments)
    end
  end

  describe "#lstat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 340 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(340,*arguments)

      subject.lstat64_syscall(*arguments)
    end
  end

  describe "#stat64_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 341 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(341,*arguments)

      subject.stat64_extended_syscall(*arguments)
    end
  end

  describe "#lstat64_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 342 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(342,*arguments)

      subject.lstat64_extended_syscall(*arguments)
    end
  end

  describe "#sys_fstat64_extended_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 343 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(343,*arguments)

      subject.sys_fstat64_extended_syscall(*arguments)
    end
  end

  describe "#getdirentries64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 344 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(344,*arguments)

      subject.getdirentries64_syscall(*arguments)
    end
  end

  describe "#statfs64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 345 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(345,*arguments)

      subject.statfs64_syscall(*arguments)
    end
  end

  describe "#fstatfs64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 346 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(346,*arguments)

      subject.fstatfs64_syscall(*arguments)
    end
  end

  describe "#getfsstat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 347 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(347,*arguments)

      subject.getfsstat64_syscall(*arguments)
    end
  end

  describe "#audit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 350 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(350,*arguments)

      subject.audit_syscall(*arguments)
    end
  end

  describe "#auditon_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 351 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(351,*arguments)

      subject.auditon_syscall(*arguments)
    end
  end

  describe "#getauid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 353 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(353,*arguments)

      subject.getauid_syscall(*arguments)
    end
  end

  describe "#setauid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 354 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(354,*arguments)

      subject.setauid_syscall(*arguments)
    end
  end

  describe "#getaudit_addr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 357 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(357,*arguments)

      subject.getaudit_addr_syscall(*arguments)
    end
  end

  describe "#setaudit_addr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 358 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(358,*arguments)

      subject.setaudit_addr_syscall(*arguments)
    end
  end

  describe "#auditctl_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 359 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(359,*arguments)

      subject.auditctl_syscall(*arguments)
    end
  end

  describe "#kqueue_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 362" do
      expect(subject).to receive(:syscall_macro).with(362)

      subject.kqueue_syscall
    end
  end

  describe "#lchown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 364 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(364,*arguments)

      subject.lchown_syscall(*arguments)
    end
  end

  describe "#workq_open_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 367" do
      expect(subject).to receive(:syscall_macro).with(367)

      subject.workq_open_syscall
    end
  end

  describe "#workq_kernreturn_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 368 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(368,*arguments)

      subject.workq_kernreturn_syscall(*arguments)
    end
  end

  describe "#ledger_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 373 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(373,*arguments)

      subject.ledger_syscall(*arguments)
    end
  end

  describe "#__mac_execve_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 380 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(380,*arguments)

      subject.__mac_execve_syscall(*arguments)
    end
  end

  describe "#__mac_syscall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 381 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(381,*arguments)

      subject.__mac_syscall_syscall(*arguments)
    end
  end

  describe "#__mac_get_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 382 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(382,*arguments)

      subject.__mac_get_file_syscall(*arguments)
    end
  end

  describe "#__mac_set_file_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 383 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(383,*arguments)

      subject.__mac_set_file_syscall(*arguments)
    end
  end

  describe "#__mac_get_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 384 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(384,*arguments)

      subject.__mac_get_link_syscall(*arguments)
    end
  end

  describe "#__mac_set_link_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 385 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(385,*arguments)

      subject.__mac_set_link_syscall(*arguments)
    end
  end

  describe "#__mac_get_proc_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 386 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(386,*arguments)

      subject.__mac_get_proc_syscall(*arguments)
    end
  end

  describe "#__mac_set_proc_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 387 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(387,*arguments)

      subject.__mac_set_proc_syscall(*arguments)
    end
  end

  describe "#__mac_get_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 388 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(388,*arguments)

      subject.__mac_get_fd_syscall(*arguments)
    end
  end

  describe "#__mac_set_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 389 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(389,*arguments)

      subject.__mac_set_fd_syscall(*arguments)
    end
  end

  describe "#__mac_get_pid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 390 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(390,*arguments)

      subject.__mac_get_pid_syscall(*arguments)
    end
  end

  describe "#pselect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 394 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(394,*arguments)

      subject.pselect_syscall(*arguments)
    end
  end

  describe "#pselect_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 395 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(395,*arguments)

      subject.pselect_nocancel_syscall(*arguments)
    end
  end

  describe "#open_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 398 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(398,*arguments)

      subject.open_nocancel_syscall(*arguments)
    end
  end

  describe "#sys_close_nocancel_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 399 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(399,*arguments)

      subject.sys_close_nocancel_syscall(*arguments)
    end
  end

  describe "#wait4_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 400 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(400,*arguments)

      subject.wait4_nocancel_syscall(*arguments)
    end
  end

  describe "#recvmsg_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 401 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(401,*arguments)

      subject.recvmsg_nocancel_syscall(*arguments)
    end
  end

  describe "#sendmsg_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 402 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(402,*arguments)

      subject.sendmsg_nocancel_syscall(*arguments)
    end
  end

  describe "#recvfrom_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 403 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(403,*arguments)

      subject.recvfrom_nocancel_syscall(*arguments)
    end
  end

  describe "#accept_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 404 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(404,*arguments)

      subject.accept_nocancel_syscall(*arguments)
    end
  end

  describe "#msync_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 405 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(405,*arguments)

      subject.msync_nocancel_syscall(*arguments)
    end
  end

  describe "#sys_fcntl_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 406 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(406,*arguments)

      subject.sys_fcntl_nocancel_syscall(*arguments)
    end
  end

  describe "#select_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 407 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(407,*arguments)

      subject.select_nocancel_syscall(*arguments)
    end
  end

  describe "#fsync_nocancel_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 408 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(408,*arguments)

      subject.fsync_nocancel_syscall(*arguments)
    end
  end

  describe "#connect_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 409 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(409,*arguments)

      subject.connect_nocancel_syscall(*arguments)
    end
  end

  describe "#readv_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 411 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(411,*arguments)

      subject.readv_nocancel_syscall(*arguments)
    end
  end

  describe "#writev_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 412 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(412,*arguments)

      subject.writev_nocancel_syscall(*arguments)
    end
  end

  describe "#sendto_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 413 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(413,*arguments)

      subject.sendto_nocancel_syscall(*arguments)
    end
  end

  describe "#pread_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 414 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(414,*arguments)

      subject.pread_nocancel_syscall(*arguments)
    end
  end

  describe "#pwrite_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 415 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(415,*arguments)

      subject.pwrite_nocancel_syscall(*arguments)
    end
  end

  describe "#waitid_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 416 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(416,*arguments)

      subject.waitid_nocancel_syscall(*arguments)
    end
  end

  describe "#poll_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 417 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(417,*arguments)

      subject.poll_nocancel_syscall(*arguments)
    end
  end

  describe "#msgsnd_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 418 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(418,*arguments)

      subject.msgsnd_nocancel_syscall(*arguments)
    end
  end

  describe "#msgrcv_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 419 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(419,*arguments)

      subject.msgrcv_nocancel_syscall(*arguments)
    end
  end

  describe "#sem_wait_nocancel_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 420 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(420,*arguments)

      subject.sem_wait_nocancel_syscall(*arguments)
    end
  end

  describe "#__sigwait_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 422 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(422,*arguments)

      subject.__sigwait_nocancel_syscall(*arguments)
    end
  end

  describe "#__semwait_signal_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 423 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(423,*arguments)

      subject.__semwait_signal_nocancel_syscall(*arguments)
    end
  end

  describe "#__mac_mount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 424 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(424,*arguments)

      subject.__mac_mount_syscall(*arguments)
    end
  end

  describe "#__mac_get_mount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 425 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(425,*arguments)

      subject.__mac_get_mount_syscall(*arguments)
    end
  end

  describe "#__mac_getfsstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 426 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(426,*arguments)

      subject.__mac_getfsstat_syscall(*arguments)
    end
  end

  describe "#fsgetpath_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 427 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(427,*arguments)

      subject.fsgetpath_syscall(*arguments)
    end
  end

  describe "#guarded_open_np_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 441 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(441,*arguments)

      subject.guarded_open_np_syscall(*arguments)
    end
  end

  describe "#guarded_close_np_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 442 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(442,*arguments)

      subject.guarded_close_np_syscall(*arguments)
    end
  end

  describe "#guarded_kqueue_np_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 443 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(443,*arguments)

      subject.guarded_kqueue_np_syscall(*arguments)
    end
  end

  describe "#usrctl_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 445 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(445,*arguments)

      subject.usrctl_syscall(*arguments)
    end
  end

  describe "#connectx_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7'), double('arg8')] }

    it "must call #syscall_macro with the syscall number 447 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(447,*arguments)

      subject.connectx_syscall(*arguments)
    end
  end

  describe "#socket_delegate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 450 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(450,*arguments)

      subject.socket_delegate_syscall(*arguments)
    end
  end

  describe "#necp_match_policy_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 460 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(460,*arguments)

      subject.necp_match_policy_syscall(*arguments)
    end
  end

  describe "#getattrlistbulk_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 461 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(461,*arguments)

      subject.getattrlistbulk_syscall(*arguments)
    end
  end

  describe "#clonefileat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 462 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(462,*arguments)

      subject.clonefileat_syscall(*arguments)
    end
  end

  describe "#openat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 463 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(463,*arguments)

      subject.openat_syscall(*arguments)
    end
  end

  describe "#openat_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 464 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(464,*arguments)

      subject.openat_nocancel_syscall(*arguments)
    end
  end

  describe "#renameat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 465 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(465,*arguments)

      subject.renameat_syscall(*arguments)
    end
  end

  describe "#faccessat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 466 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(466,*arguments)

      subject.faccessat_syscall(*arguments)
    end
  end

  describe "#fchmodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 467 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(467,*arguments)

      subject.fchmodat_syscall(*arguments)
    end
  end

  describe "#fchownat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 468 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(468,*arguments)

      subject.fchownat_syscall(*arguments)
    end
  end

  describe "#fstatat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 469 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(469,*arguments)

      subject.fstatat_syscall(*arguments)
    end
  end

  describe "#fstatat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 470 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(470,*arguments)

      subject.fstatat64_syscall(*arguments)
    end
  end

  describe "#linkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 471 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(471,*arguments)

      subject.linkat_syscall(*arguments)
    end
  end

  describe "#unlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 472 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(472,*arguments)

      subject.unlinkat_syscall(*arguments)
    end
  end

  describe "#readlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 473 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(473,*arguments)

      subject.readlinkat_syscall(*arguments)
    end
  end

  describe "#symlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 474 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(474,*arguments)

      subject.symlinkat_syscall(*arguments)
    end
  end

  describe "#mkdirat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 475 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(475,*arguments)

      subject.mkdirat_syscall(*arguments)
    end
  end

  describe "#getattrlistat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 476 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(476,*arguments)

      subject.getattrlistat_syscall(*arguments)
    end
  end

  describe "#openbyid_np_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 479 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(479,*arguments)

      subject.openbyid_np_syscall(*arguments)
    end
  end

  describe "#guarded_pwrite_np_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 486 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(486,*arguments)

      subject.guarded_pwrite_np_syscall(*arguments)
    end
  end

  describe "#guarded_writev_np_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 487 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(487,*arguments)

      subject.guarded_writev_np_syscall(*arguments)
    end
  end

  describe "#renameatx_np_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 488 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(488,*arguments)

      subject.renameatx_np_syscall(*arguments)
    end
  end

  describe "#mremap_encrypted_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 489 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(489,*arguments)

      subject.mremap_encrypted_syscall(*arguments)
    end
  end

  describe "#netagent_trigger_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 490 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(490,*arguments)

      subject.netagent_trigger_syscall(*arguments)
    end
  end

  describe "#stack_snapshot_with_config_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 491 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(491,*arguments)

      subject.stack_snapshot_with_config_syscall(*arguments)
    end
  end

  describe "#microstackshot_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 492 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(492,*arguments)

      subject.microstackshot_syscall(*arguments)
    end
  end

  describe "#persona_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 494 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(494,*arguments)

      subject.persona_syscall(*arguments)
    end
  end

  describe "#necp_client_action_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 502 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(502,*arguments)

      subject.necp_client_action_syscall(*arguments)
    end
  end

  describe "#__nexus_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 503 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(503,*arguments)

      subject.__nexus_open_syscall(*arguments)
    end
  end

  describe "#__nexus_register_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 504 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(504,*arguments)

      subject.__nexus_register_syscall(*arguments)
    end
  end

  describe "#__nexus_deregister_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 505 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(505,*arguments)

      subject.__nexus_deregister_syscall(*arguments)
    end
  end

  describe "#__nexus_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 506 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(506,*arguments)

      subject.__nexus_create_syscall(*arguments)
    end
  end

  describe "#__nexus_destroy_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 507 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(507,*arguments)

      subject.__nexus_destroy_syscall(*arguments)
    end
  end

  describe "#__nexus_get_opt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 508 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(508,*arguments)

      subject.__nexus_get_opt_syscall(*arguments)
    end
  end

  describe "#__nexus_set_opt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 509 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(509,*arguments)

      subject.__nexus_set_opt_syscall(*arguments)
    end
  end

  describe "#__channel_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 510 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(510,*arguments)

      subject.__channel_open_syscall(*arguments)
    end
  end

  describe "#__channel_get_info_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 511 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(511,*arguments)

      subject.__channel_get_info_syscall(*arguments)
    end
  end

  describe "#__channel_sync_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 512 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(512,*arguments)

      subject.__channel_sync_syscall(*arguments)
    end
  end

  describe "#__channel_get_opt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 513 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(513,*arguments)

      subject.__channel_get_opt_syscall(*arguments)
    end
  end

  describe "#__channel_set_opt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 514 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(514,*arguments)

      subject.__channel_set_opt_syscall(*arguments)
    end
  end

  describe "#fclonefileat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 517 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(517,*arguments)

      subject.fclonefileat_syscall(*arguments)
    end
  end

  describe "#terminate_with_payload_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7')] }

    it "must call #syscall_macro with the syscall number 520 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(520,*arguments)

      subject.terminate_with_payload_syscall(*arguments)
    end
  end

  describe "#abort_with_payload_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 521 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(521,*arguments)

      subject.abort_with_payload_syscall(*arguments)
    end
  end

  describe "#necp_session_action_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 523 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(523,*arguments)

      subject.necp_session_action_syscall(*arguments)
    end
  end

  describe "#setattrlistat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 524 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(524,*arguments)

      subject.setattrlistat_syscall(*arguments)
    end
  end

  describe "#net_qos_guideline_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 525 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(525,*arguments)

      subject.net_qos_guideline_syscall(*arguments)
    end
  end

  describe "#fmount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 526 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(526,*arguments)

      subject.fmount_syscall(*arguments)
    end
  end

  describe "#kqueue_workloop_ctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 530 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(530,*arguments)

      subject.kqueue_workloop_ctl_syscall(*arguments)
    end
  end

  describe "#task_inspect_for_pid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 538 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(538,*arguments)

      subject.task_inspect_for_pid_syscall(*arguments)
    end
  end

  describe "#task_read_for_pid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 539 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(539,*arguments)

      subject.task_read_for_pid_syscall(*arguments)
    end
  end

  describe "#sys_preadv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 540 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(540,*arguments)

      subject.sys_preadv_syscall(*arguments)
    end
  end

  describe "#sys_pwritev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 541 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(541,*arguments)

      subject.sys_pwritev_syscall(*arguments)
    end
  end

  describe "#sys_preadv_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 542 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(542,*arguments)

      subject.sys_preadv_nocancel_syscall(*arguments)
    end
  end

  describe "#sys_pwritev_nocancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 543 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(543,*arguments)

      subject.sys_pwritev_nocancel_syscall(*arguments)
    end
  end

  describe "#proc_info_extended_id_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6'), double('arg7'), double('arg8')] }

    it "must call #syscall_macro with the syscall number 545 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(545,*arguments)

      subject.proc_info_extended_id_syscall(*arguments)
    end
  end

  describe "#tracker_action_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 546 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(546,*arguments)

      subject.tracker_action_syscall(*arguments)
    end
  end

  describe "#debug_syscall_reject_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 547 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(547,*arguments)

      subject.debug_syscall_reject_syscall(*arguments)
    end
  end

  describe "#sys_debug_syscall_reject_config_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 548 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(548,*arguments)

      subject.sys_debug_syscall_reject_config_syscall(*arguments)
    end
  end

  describe "#freadlink_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 551 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(551,*arguments)

      subject.freadlink_syscall(*arguments)
    end
  end

  describe "#mkfifoat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 553 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(553,*arguments)

      subject.mkfifoat_syscall(*arguments)
    end
  end

  describe "#mknodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 554 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(554,*arguments)

      subject.mknodat_syscall(*arguments)
    end
  end
end
