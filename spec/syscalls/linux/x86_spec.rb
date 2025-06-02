require 'spec_helper'
require 'ronin/asm/syscalls/linux/x86'

describe Ronin::ASM::Syscalls::Linux::X86 do
  subject do
    obj = Object.new
    obj.extend Ronin::ASM::Syscalls::Linux::X86
    obj
  end

  describe "#restart_syscall_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 0" do
      expect(subject).to receive(:syscall_macro).with(0)

      subject.restart_syscall_syscall
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

  describe "#waitpid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 7 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(7,*arguments)

      subject.waitpid_syscall(*arguments)
    end
  end

  describe "#creat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 8 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(8,*arguments)

      subject.creat_syscall(*arguments)
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

  describe "#execve_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 11 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(11,*arguments)

      subject.execve_syscall(*arguments)
    end
  end

  describe "#chdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 12 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(12,*arguments)

      subject.chdir_syscall(*arguments)
    end
  end

  describe "#time_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 13 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(13,*arguments)

      subject.time_syscall(*arguments)
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

  describe "#lchown_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 16" do
      expect(subject).to receive(:syscall_macro).with(16)

      subject.lchown_syscall
    end
  end

  describe "#break_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 17" do
      expect(subject).to receive(:syscall_macro).with(17)

      subject.break_syscall
    end
  end

  describe "#oldstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 18 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(18,*arguments)

      subject.oldstat_syscall(*arguments)
    end
  end

  describe "#lseek_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 19 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(19,*arguments)

      subject.lseek_syscall(*arguments)
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
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 21 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(21,*arguments)

      subject.mount_syscall(*arguments)
    end
  end

  describe "#umount_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 22 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(22,*arguments)

      subject.umount_syscall(*arguments)
    end
  end

  describe "#setuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 23" do
      expect(subject).to receive(:syscall_macro).with(23)

      subject.setuid_syscall
    end
  end

  describe "#getuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 24" do
      expect(subject).to receive(:syscall_macro).with(24)

      subject.getuid_syscall
    end
  end

  describe "#stime_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 25 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(25,*arguments)

      subject.stime_syscall(*arguments)
    end
  end

  describe "#ptrace_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 26 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(26,*arguments)

      subject.ptrace_syscall(*arguments)
    end
  end

  describe "#alarm_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 27 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(27,*arguments)

      subject.alarm_syscall(*arguments)
    end
  end

  describe "#oldfstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 28 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(28,*arguments)

      subject.oldfstat_syscall(*arguments)
    end
  end

  describe "#pause_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 29" do
      expect(subject).to receive(:syscall_macro).with(29)

      subject.pause_syscall
    end
  end

  describe "#utime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 30 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(30,*arguments)

      subject.utime_syscall(*arguments)
    end
  end

  describe "#stty_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 31" do
      expect(subject).to receive(:syscall_macro).with(31)

      subject.stty_syscall
    end
  end

  describe "#gtty_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 32" do
      expect(subject).to receive(:syscall_macro).with(32)

      subject.gtty_syscall
    end
  end

  describe "#access_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 33 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(33,*arguments)

      subject.access_syscall(*arguments)
    end
  end

  describe "#nice_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 34 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(34,*arguments)

      subject.nice_syscall(*arguments)
    end
  end

  describe "#ftime_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 35" do
      expect(subject).to receive(:syscall_macro).with(35)

      subject.ftime_syscall
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

  describe "#rename_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 38 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(38,*arguments)

      subject.rename_syscall(*arguments)
    end
  end

  describe "#mkdir_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 39 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(39,*arguments)

      subject.mkdir_syscall(*arguments)
    end
  end

  describe "#rmdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 40 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(40,*arguments)

      subject.rmdir_syscall(*arguments)
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
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 42 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(42,*arguments)

      subject.pipe_syscall(*arguments)
    end
  end

  describe "#times_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 43 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(43,*arguments)

      subject.times_syscall(*arguments)
    end
  end

  describe "#prof_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 44" do
      expect(subject).to receive(:syscall_macro).with(44)

      subject.prof_syscall
    end
  end

  describe "#brk_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 45 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(45,*arguments)

      subject.brk_syscall(*arguments)
    end
  end

  describe "#setgid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 46" do
      expect(subject).to receive(:syscall_macro).with(46)

      subject.setgid_syscall
    end
  end

  describe "#getgid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 47" do
      expect(subject).to receive(:syscall_macro).with(47)

      subject.getgid_syscall
    end
  end

  describe "#signal_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 48 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(48,*arguments)

      subject.signal_syscall(*arguments)
    end
  end

  describe "#geteuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 49" do
      expect(subject).to receive(:syscall_macro).with(49)

      subject.geteuid_syscall
    end
  end

  describe "#getegid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 50" do
      expect(subject).to receive(:syscall_macro).with(50)

      subject.getegid_syscall
    end
  end

  describe "#acct_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 51 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(51,*arguments)

      subject.acct_syscall(*arguments)
    end
  end

  describe "#umount2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 52 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(52,*arguments)

      subject.umount2_syscall(*arguments)
    end
  end

  describe "#lock_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 53" do
      expect(subject).to receive(:syscall_macro).with(53)

      subject.lock_syscall
    end
  end

  describe "#ioctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 54 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(54,*arguments)

      subject.ioctl_syscall(*arguments)
    end
  end

  describe "#fcntl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 55 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(55,*arguments)

      subject.fcntl_syscall(*arguments)
    end
  end

  describe "#mpx_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 56" do
      expect(subject).to receive(:syscall_macro).with(56)

      subject.mpx_syscall
    end
  end

  describe "#setpgid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 57 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(57,*arguments)

      subject.setpgid_syscall(*arguments)
    end
  end

  describe "#ulimit_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 58" do
      expect(subject).to receive(:syscall_macro).with(58)

      subject.ulimit_syscall
    end
  end

  describe "#oldolduname_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 59 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(59,*arguments)

      subject.oldolduname_syscall(*arguments)
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

  describe "#ustat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 62 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(62,*arguments)

      subject.ustat_syscall(*arguments)
    end
  end

  describe "#dup2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 63 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(63,*arguments)

      subject.dup2_syscall(*arguments)
    end
  end

  describe "#getppid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 64" do
      expect(subject).to receive(:syscall_macro).with(64)

      subject.getppid_syscall
    end
  end

  describe "#getpgrp_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 65" do
      expect(subject).to receive(:syscall_macro).with(65)

      subject.getpgrp_syscall
    end
  end

  describe "#setsid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 66" do
      expect(subject).to receive(:syscall_macro).with(66)

      subject.setsid_syscall
    end
  end

  describe "#sigaction_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 67" do
      expect(subject).to receive(:syscall_macro).with(67)

      subject.sigaction_syscall
    end
  end

  describe "#sgetmask_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 68" do
      expect(subject).to receive(:syscall_macro).with(68)

      subject.sgetmask_syscall
    end
  end

  describe "#ssetmask_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 69 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(69,*arguments)

      subject.ssetmask_syscall(*arguments)
    end
  end

  describe "#setreuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 70" do
      expect(subject).to receive(:syscall_macro).with(70)

      subject.setreuid_syscall
    end
  end

  describe "#setregid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 71" do
      expect(subject).to receive(:syscall_macro).with(71)

      subject.setregid_syscall
    end
  end

  describe "#sigsuspend_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 72" do
      expect(subject).to receive(:syscall_macro).with(72)

      subject.sigsuspend_syscall
    end
  end

  describe "#sigpending_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 73 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(73,*arguments)

      subject.sigpending_syscall(*arguments)
    end
  end

  describe "#sethostname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 74 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(74,*arguments)

      subject.sethostname_syscall(*arguments)
    end
  end

  describe "#setrlimit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 75 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(75,*arguments)

      subject.setrlimit_syscall(*arguments)
    end
  end

  describe "#getrlimit_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 76" do
      expect(subject).to receive(:syscall_macro).with(76)

      subject.getrlimit_syscall
    end
  end

  describe "#getrusage_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 77 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(77,*arguments)

      subject.getrusage_syscall(*arguments)
    end
  end

  describe "#gettimeofday_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 78 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(78,*arguments)

      subject.gettimeofday_syscall(*arguments)
    end
  end

  describe "#settimeofday_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 79 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(79,*arguments)

      subject.settimeofday_syscall(*arguments)
    end
  end

  describe "#getgroups_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 80" do
      expect(subject).to receive(:syscall_macro).with(80)

      subject.getgroups_syscall
    end
  end

  describe "#setgroups_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 81" do
      expect(subject).to receive(:syscall_macro).with(81)

      subject.setgroups_syscall
    end
  end

  describe "#select_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 82 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(82,*arguments)

      subject.select_syscall(*arguments)
    end
  end

  describe "#symlink_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 83 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(83,*arguments)

      subject.symlink_syscall(*arguments)
    end
  end

  describe "#oldlstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 84 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(84,*arguments)

      subject.oldlstat_syscall(*arguments)
    end
  end

  describe "#readlink_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 85 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(85,*arguments)

      subject.readlink_syscall(*arguments)
    end
  end

  describe "#uselib_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 86 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(86,*arguments)

      subject.uselib_syscall(*arguments)
    end
  end

  describe "#swapon_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 87 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(87,*arguments)

      subject.swapon_syscall(*arguments)
    end
  end

  describe "#reboot_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 88 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(88,*arguments)

      subject.reboot_syscall(*arguments)
    end
  end

  describe "#readdir_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 89 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(89,*arguments)

      subject.readdir_syscall(*arguments)
    end
  end

  describe "#mmap_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 90 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(90,*arguments)

      subject.mmap_syscall(*arguments)
    end
  end

  describe "#munmap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 91 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(91,*arguments)

      subject.munmap_syscall(*arguments)
    end
  end

  describe "#truncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 92 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(92,*arguments)

      subject.truncate_syscall(*arguments)
    end
  end

  describe "#ftruncate_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 93 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(93,*arguments)

      subject.ftruncate_syscall(*arguments)
    end
  end

  describe "#fchmod_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 94 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(94,*arguments)

      subject.fchmod_syscall(*arguments)
    end
  end

  describe "#fchown_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 95" do
      expect(subject).to receive(:syscall_macro).with(95)

      subject.fchown_syscall
    end
  end

  describe "#getpriority_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 96 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(96,*arguments)

      subject.getpriority_syscall(*arguments)
    end
  end

  describe "#setpriority_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 97 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(97,*arguments)

      subject.setpriority_syscall(*arguments)
    end
  end

  describe "#profil_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 98" do
      expect(subject).to receive(:syscall_macro).with(98)

      subject.profil_syscall
    end
  end

  describe "#statfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 99 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(99,*arguments)

      subject.statfs_syscall(*arguments)
    end
  end

  describe "#fstatfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 100 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(100,*arguments)

      subject.fstatfs_syscall(*arguments)
    end
  end

  describe "#ioperm_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 101 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(101,*arguments)

      subject.ioperm_syscall(*arguments)
    end
  end

  describe "#socketcall_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 102 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(102,*arguments)

      subject.socketcall_syscall(*arguments)
    end
  end

  describe "#syslog_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 103 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(103,*arguments)

      subject.syslog_syscall(*arguments)
    end
  end

  describe "#setitimer_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 104 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(104,*arguments)

      subject.setitimer_syscall(*arguments)
    end
  end

  describe "#getitimer_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 105 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(105,*arguments)

      subject.getitimer_syscall(*arguments)
    end
  end

  describe "#stat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 106 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(106,*arguments)

      subject.stat_syscall(*arguments)
    end
  end

  describe "#lstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 107 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(107,*arguments)

      subject.lstat_syscall(*arguments)
    end
  end

  describe "#fstat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 108 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(108,*arguments)

      subject.fstat_syscall(*arguments)
    end
  end

  describe "#olduname_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 109 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(109,*arguments)

      subject.olduname_syscall(*arguments)
    end
  end

  describe "#iopl_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 110" do
      expect(subject).to receive(:syscall_macro).with(110)

      subject.iopl_syscall
    end
  end

  describe "#vhangup_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 111" do
      expect(subject).to receive(:syscall_macro).with(111)

      subject.vhangup_syscall
    end
  end

  describe "#idle_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 112" do
      expect(subject).to receive(:syscall_macro).with(112)

      subject.idle_syscall
    end
  end

  describe "#vm86old_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 113" do
      expect(subject).to receive(:syscall_macro).with(113)

      subject.vm86old_syscall
    end
  end

  describe "#wait4_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 114 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(114,*arguments)

      subject.wait4_syscall(*arguments)
    end
  end

  describe "#swapoff_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 115 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(115,*arguments)

      subject.swapoff_syscall(*arguments)
    end
  end

  describe "#sysinfo_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 116 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(116,*arguments)

      subject.sysinfo_syscall(*arguments)
    end
  end

  describe "#ipc_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 117 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(117,*arguments)

      subject.ipc_syscall(*arguments)
    end
  end

  describe "#fsync_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 118 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(118,*arguments)

      subject.fsync_syscall(*arguments)
    end
  end

  describe "#sigreturn_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 119" do
      expect(subject).to receive(:syscall_macro).with(119)

      subject.sigreturn_syscall
    end
  end

  describe "#clone_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 120 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(120,*arguments)

      subject.clone_syscall(*arguments)
    end
  end

  describe "#setdomainname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 121 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(121,*arguments)

      subject.setdomainname_syscall(*arguments)
    end
  end

  describe "#uname_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 122 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(122,*arguments)

      subject.uname_syscall(*arguments)
    end
  end

  describe "#modify_ldt_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 123" do
      expect(subject).to receive(:syscall_macro).with(123)

      subject.modify_ldt_syscall
    end
  end

  describe "#adjtimex_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 124 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(124,*arguments)

      subject.adjtimex_syscall(*arguments)
    end
  end

  describe "#mprotect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 125 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(125,*arguments)

      subject.mprotect_syscall(*arguments)
    end
  end

  describe "#sigprocmask_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 126 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(126,*arguments)

      subject.sigprocmask_syscall(*arguments)
    end
  end

  describe "#create_module_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 127" do
      expect(subject).to receive(:syscall_macro).with(127)

      subject.create_module_syscall
    end
  end

  describe "#init_module_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 128 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(128,*arguments)

      subject.init_module_syscall(*arguments)
    end
  end

  describe "#delete_module_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 129 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(129,*arguments)

      subject.delete_module_syscall(*arguments)
    end
  end

  describe "#get_kernel_syms_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 130" do
      expect(subject).to receive(:syscall_macro).with(130)

      subject.get_kernel_syms_syscall
    end
  end

  describe "#quotactl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 131 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(131,*arguments)

      subject.quotactl_syscall(*arguments)
    end
  end

  describe "#getpgid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 132 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(132,*arguments)

      subject.getpgid_syscall(*arguments)
    end
  end

  describe "#fchdir_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 133 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(133,*arguments)

      subject.fchdir_syscall(*arguments)
    end
  end

  describe "#bdflush_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 134" do
      expect(subject).to receive(:syscall_macro).with(134)

      subject.bdflush_syscall
    end
  end

  describe "#sysfs_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 135 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(135,*arguments)

      subject.sysfs_syscall(*arguments)
    end
  end

  describe "#personality_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 136 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(136,*arguments)

      subject.personality_syscall(*arguments)
    end
  end

  describe "#afs_syscall_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 137" do
      expect(subject).to receive(:syscall_macro).with(137)

      subject.afs_syscall_syscall
    end
  end

  describe "#setfsuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 138" do
      expect(subject).to receive(:syscall_macro).with(138)

      subject.setfsuid_syscall
    end
  end

  describe "#setfsgid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 139" do
      expect(subject).to receive(:syscall_macro).with(139)

      subject.setfsgid_syscall
    end
  end

  describe "#_llseek_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 140 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(140,*arguments)

      subject._llseek_syscall(*arguments)
    end
  end

  describe "#getdents_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 141 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(141,*arguments)

      subject.getdents_syscall(*arguments)
    end
  end

  describe "#_newselect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 142 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(142,*arguments)

      subject._newselect_syscall(*arguments)
    end
  end

  describe "#flock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 143 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(143,*arguments)

      subject.flock_syscall(*arguments)
    end
  end

  describe "#msync_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 144 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(144,*arguments)

      subject.msync_syscall(*arguments)
    end
  end

  describe "#readv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 145 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(145,*arguments)

      subject.readv_syscall(*arguments)
    end
  end

  describe "#writev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 146 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(146,*arguments)

      subject.writev_syscall(*arguments)
    end
  end

  describe "#getsid_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 147 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(147,*arguments)

      subject.getsid_syscall(*arguments)
    end
  end

  describe "#fdatasync_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 148 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(148,*arguments)

      subject.fdatasync_syscall(*arguments)
    end
  end

  describe "#_sysctl_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 149" do
      expect(subject).to receive(:syscall_macro).with(149)

      subject._sysctl_syscall
    end
  end

  describe "#mlock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 150 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(150,*arguments)

      subject.mlock_syscall(*arguments)
    end
  end

  describe "#munlock_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 151 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(151,*arguments)

      subject.munlock_syscall(*arguments)
    end
  end

  describe "#mlockall_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 152 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(152,*arguments)

      subject.mlockall_syscall(*arguments)
    end
  end

  describe "#munlockall_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 153" do
      expect(subject).to receive(:syscall_macro).with(153)

      subject.munlockall_syscall
    end
  end

  describe "#sched_setparam_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 154 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(154,*arguments)

      subject.sched_setparam_syscall(*arguments)
    end
  end

  describe "#sched_getparam_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 155 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(155,*arguments)

      subject.sched_getparam_syscall(*arguments)
    end
  end

  describe "#sched_setscheduler_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 156 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(156,*arguments)

      subject.sched_setscheduler_syscall(*arguments)
    end
  end

  describe "#sched_getscheduler_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 157 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(157,*arguments)

      subject.sched_getscheduler_syscall(*arguments)
    end
  end

  describe "#sched_yield_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 158" do
      expect(subject).to receive(:syscall_macro).with(158)

      subject.sched_yield_syscall
    end
  end

  describe "#sched_get_priority_max_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 159 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(159,*arguments)

      subject.sched_get_priority_max_syscall(*arguments)
    end
  end

  describe "#sched_get_priority_min_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 160 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(160,*arguments)

      subject.sched_get_priority_min_syscall(*arguments)
    end
  end

  describe "#sched_rr_get_interval_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 161 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(161,*arguments)

      subject.sched_rr_get_interval_syscall(*arguments)
    end
  end

  describe "#nanosleep_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 162 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(162,*arguments)

      subject.nanosleep_syscall(*arguments)
    end
  end

  describe "#mremap_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 163 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(163,*arguments)

      subject.mremap_syscall(*arguments)
    end
  end

  describe "#setresuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 164" do
      expect(subject).to receive(:syscall_macro).with(164)

      subject.setresuid_syscall
    end
  end

  describe "#getresuid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 165" do
      expect(subject).to receive(:syscall_macro).with(165)

      subject.getresuid_syscall
    end
  end

  describe "#vm86_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 166" do
      expect(subject).to receive(:syscall_macro).with(166)

      subject.vm86_syscall
    end
  end

  describe "#query_module_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 167" do
      expect(subject).to receive(:syscall_macro).with(167)

      subject.query_module_syscall
    end
  end

  describe "#poll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 168 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(168,*arguments)

      subject.poll_syscall(*arguments)
    end
  end

  describe "#nfsservctl_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 169" do
      expect(subject).to receive(:syscall_macro).with(169)

      subject.nfsservctl_syscall
    end
  end

  describe "#setresgid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 170" do
      expect(subject).to receive(:syscall_macro).with(170)

      subject.setresgid_syscall
    end
  end

  describe "#getresgid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 171" do
      expect(subject).to receive(:syscall_macro).with(171)

      subject.getresgid_syscall
    end
  end

  describe "#prctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 172 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(172,*arguments)

      subject.prctl_syscall(*arguments)
    end
  end

  describe "#rt_sigreturn_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 173" do
      expect(subject).to receive(:syscall_macro).with(173)

      subject.rt_sigreturn_syscall
    end
  end

  describe "#rt_sigaction_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 174 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(174,*arguments)

      subject.rt_sigaction_syscall(*arguments)
    end
  end

  describe "#rt_sigprocmask_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 175 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(175,*arguments)

      subject.rt_sigprocmask_syscall(*arguments)
    end
  end

  describe "#rt_sigpending_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 176 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(176,*arguments)

      subject.rt_sigpending_syscall(*arguments)
    end
  end

  describe "#rt_sigtimedwait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 177 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(177,*arguments)

      subject.rt_sigtimedwait_syscall(*arguments)
    end
  end

  describe "#rt_sigqueueinfo_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 178 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(178,*arguments)

      subject.rt_sigqueueinfo_syscall(*arguments)
    end
  end

  describe "#rt_sigsuspend_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 179 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(179,*arguments)

      subject.rt_sigsuspend_syscall(*arguments)
    end
  end

  describe "#pread64_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 180" do
      expect(subject).to receive(:syscall_macro).with(180)

      subject.pread64_syscall
    end
  end

  describe "#pwrite64_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 181" do
      expect(subject).to receive(:syscall_macro).with(181)

      subject.pwrite64_syscall
    end
  end

  describe "#chown_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 182" do
      expect(subject).to receive(:syscall_macro).with(182)

      subject.chown_syscall
    end
  end

  describe "#getcwd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 183 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(183,*arguments)

      subject.getcwd_syscall(*arguments)
    end
  end

  describe "#capget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 184 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(184,*arguments)

      subject.capget_syscall(*arguments)
    end
  end

  describe "#capset_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 185 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(185,*arguments)

      subject.capset_syscall(*arguments)
    end
  end

  describe "#sigaltstack_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 186 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(186,*arguments)

      subject.sigaltstack_syscall(*arguments)
    end
  end

  describe "#sendfile_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 187 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(187,*arguments)

      subject.sendfile_syscall(*arguments)
    end
  end

  describe "#getpmsg_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 188" do
      expect(subject).to receive(:syscall_macro).with(188)

      subject.getpmsg_syscall
    end
  end

  describe "#putpmsg_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 189" do
      expect(subject).to receive(:syscall_macro).with(189)

      subject.putpmsg_syscall
    end
  end

  describe "#vfork_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 190" do
      expect(subject).to receive(:syscall_macro).with(190)

      subject.vfork_syscall
    end
  end

  describe "#ugetrlimit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 191 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(191,*arguments)

      subject.ugetrlimit_syscall(*arguments)
    end
  end

  describe "#mmap2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 192 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(192,*arguments)

      subject.mmap2_syscall(*arguments)
    end
  end

  describe "#truncate64_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 193" do
      expect(subject).to receive(:syscall_macro).with(193)

      subject.truncate64_syscall
    end
  end

  describe "#ftruncate64_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 194" do
      expect(subject).to receive(:syscall_macro).with(194)

      subject.ftruncate64_syscall
    end
  end

  describe "#stat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 195 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(195,*arguments)

      subject.stat64_syscall(*arguments)
    end
  end

  describe "#lstat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 196 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(196,*arguments)

      subject.lstat64_syscall(*arguments)
    end
  end

  describe "#fstat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 197 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(197,*arguments)

      subject.fstat64_syscall(*arguments)
    end
  end

  describe "#lchown32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 198 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(198,*arguments)

      subject.lchown32_syscall(*arguments)
    end
  end

  describe "#getuid32_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 199" do
      expect(subject).to receive(:syscall_macro).with(199)

      subject.getuid32_syscall
    end
  end

  describe "#getgid32_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 200" do
      expect(subject).to receive(:syscall_macro).with(200)

      subject.getgid32_syscall
    end
  end

  describe "#geteuid32_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 201" do
      expect(subject).to receive(:syscall_macro).with(201)

      subject.geteuid32_syscall
    end
  end

  describe "#getegid32_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 202" do
      expect(subject).to receive(:syscall_macro).with(202)

      subject.getegid32_syscall
    end
  end

  describe "#setreuid32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 203 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(203,*arguments)

      subject.setreuid32_syscall(*arguments)
    end
  end

  describe "#setregid32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 204 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(204,*arguments)

      subject.setregid32_syscall(*arguments)
    end
  end

  describe "#getgroups32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 205 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(205,*arguments)

      subject.getgroups32_syscall(*arguments)
    end
  end

  describe "#setgroups32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 206 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(206,*arguments)

      subject.setgroups32_syscall(*arguments)
    end
  end

  describe "#fchown32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 207 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(207,*arguments)

      subject.fchown32_syscall(*arguments)
    end
  end

  describe "#setresuid32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 208 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(208,*arguments)

      subject.setresuid32_syscall(*arguments)
    end
  end

  describe "#getresuid32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 209 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(209,*arguments)

      subject.getresuid32_syscall(*arguments)
    end
  end

  describe "#setresgid32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 210 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(210,*arguments)

      subject.setresgid32_syscall(*arguments)
    end
  end

  describe "#getresgid32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 211 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(211,*arguments)

      subject.getresgid32_syscall(*arguments)
    end
  end

  describe "#chown32_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 212 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(212,*arguments)

      subject.chown32_syscall(*arguments)
    end
  end

  describe "#setuid32_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 213 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(213,*arguments)

      subject.setuid32_syscall(*arguments)
    end
  end

  describe "#setgid32_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 214 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(214,*arguments)

      subject.setgid32_syscall(*arguments)
    end
  end

  describe "#setfsuid32_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 215 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(215,*arguments)

      subject.setfsuid32_syscall(*arguments)
    end
  end

  describe "#setfsgid32_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 216 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(216,*arguments)

      subject.setfsgid32_syscall(*arguments)
    end
  end

  describe "#pivot_root_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 217 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(217,*arguments)

      subject.pivot_root_syscall(*arguments)
    end
  end

  describe "#mincore_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 218 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(218,*arguments)

      subject.mincore_syscall(*arguments)
    end
  end

  describe "#madvise_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 219 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(219,*arguments)

      subject.madvise_syscall(*arguments)
    end
  end

  describe "#getdents64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 220 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(220,*arguments)

      subject.getdents64_syscall(*arguments)
    end
  end

  describe "#fcntl64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 221 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(221,*arguments)

      subject.fcntl64_syscall(*arguments)
    end
  end

  describe "#gettid_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 224" do
      expect(subject).to receive(:syscall_macro).with(224)

      subject.gettid_syscall
    end
  end

  describe "#readahead_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 225" do
      expect(subject).to receive(:syscall_macro).with(225)

      subject.readahead_syscall
    end
  end

  describe "#setxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 226 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(226,*arguments)

      subject.setxattr_syscall(*arguments)
    end
  end

  describe "#lsetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 227 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(227,*arguments)

      subject.lsetxattr_syscall(*arguments)
    end
  end

  describe "#fsetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 228 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(228,*arguments)

      subject.fsetxattr_syscall(*arguments)
    end
  end

  describe "#getxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 229 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(229,*arguments)

      subject.getxattr_syscall(*arguments)
    end
  end

  describe "#lgetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 230 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(230,*arguments)

      subject.lgetxattr_syscall(*arguments)
    end
  end

  describe "#fgetxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 231 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(231,*arguments)

      subject.fgetxattr_syscall(*arguments)
    end
  end

  describe "#listxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 232 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(232,*arguments)

      subject.listxattr_syscall(*arguments)
    end
  end

  describe "#llistxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 233 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(233,*arguments)

      subject.llistxattr_syscall(*arguments)
    end
  end

  describe "#flistxattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 234 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(234,*arguments)

      subject.flistxattr_syscall(*arguments)
    end
  end

  describe "#removexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 235 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(235,*arguments)

      subject.removexattr_syscall(*arguments)
    end
  end

  describe "#lremovexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 236 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(236,*arguments)

      subject.lremovexattr_syscall(*arguments)
    end
  end

  describe "#fremovexattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 237 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(237,*arguments)

      subject.fremovexattr_syscall(*arguments)
    end
  end

  describe "#tkill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 238 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(238,*arguments)

      subject.tkill_syscall(*arguments)
    end
  end

  describe "#sendfile64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 239 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(239,*arguments)

      subject.sendfile64_syscall(*arguments)
    end
  end

  describe "#futex_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 240 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(240,*arguments)

      subject.futex_syscall(*arguments)
    end
  end

  describe "#sched_setaffinity_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 241 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(241,*arguments)

      subject.sched_setaffinity_syscall(*arguments)
    end
  end

  describe "#sched_getaffinity_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 242 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(242,*arguments)

      subject.sched_getaffinity_syscall(*arguments)
    end
  end

  describe "#set_thread_area_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 243" do
      expect(subject).to receive(:syscall_macro).with(243)

      subject.set_thread_area_syscall
    end
  end

  describe "#get_thread_area_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 244" do
      expect(subject).to receive(:syscall_macro).with(244)

      subject.get_thread_area_syscall
    end
  end

  describe "#io_setup_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 245 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(245,*arguments)

      subject.io_setup_syscall(*arguments)
    end
  end

  describe "#io_destroy_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 246 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(246,*arguments)

      subject.io_destroy_syscall(*arguments)
    end
  end

  describe "#io_getevents_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 247 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(247,*arguments)

      subject.io_getevents_syscall(*arguments)
    end
  end

  describe "#io_submit_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 248 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(248,*arguments)

      subject.io_submit_syscall(*arguments)
    end
  end

  describe "#io_cancel_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 249 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(249,*arguments)

      subject.io_cancel_syscall(*arguments)
    end
  end

  describe "#fadvise64_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 250" do
      expect(subject).to receive(:syscall_macro).with(250)

      subject.fadvise64_syscall
    end
  end

  describe "#exit_group_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 252 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(252,*arguments)

      subject.exit_group_syscall(*arguments)
    end
  end

  describe "#lookup_dcookie_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 253" do
      expect(subject).to receive(:syscall_macro).with(253)

      subject.lookup_dcookie_syscall
    end
  end

  describe "#epoll_create_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 254 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(254,*arguments)

      subject.epoll_create_syscall(*arguments)
    end
  end

  describe "#epoll_ctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 255 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(255,*arguments)

      subject.epoll_ctl_syscall(*arguments)
    end
  end

  describe "#epoll_wait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 256 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(256,*arguments)

      subject.epoll_wait_syscall(*arguments)
    end
  end

  describe "#remap_file_pages_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 257 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(257,*arguments)

      subject.remap_file_pages_syscall(*arguments)
    end
  end

  describe "#set_tid_address_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 258 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(258,*arguments)

      subject.set_tid_address_syscall(*arguments)
    end
  end

  describe "#timer_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 259 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(259,*arguments)

      subject.timer_create_syscall(*arguments)
    end
  end

  describe "#timer_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 260 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(260,*arguments)

      subject.timer_settime_syscall(*arguments)
    end
  end

  describe "#timer_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 261 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(261,*arguments)

      subject.timer_gettime_syscall(*arguments)
    end
  end

  describe "#timer_getoverrun_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 262 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(262,*arguments)

      subject.timer_getoverrun_syscall(*arguments)
    end
  end

  describe "#timer_delete_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 263 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(263,*arguments)

      subject.timer_delete_syscall(*arguments)
    end
  end

  describe "#clock_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 264 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(264,*arguments)

      subject.clock_settime_syscall(*arguments)
    end
  end

  describe "#clock_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 265 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(265,*arguments)

      subject.clock_gettime_syscall(*arguments)
    end
  end

  describe "#clock_getres_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 266 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(266,*arguments)

      subject.clock_getres_syscall(*arguments)
    end
  end

  describe "#clock_nanosleep_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 267 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(267,*arguments)

      subject.clock_nanosleep_syscall(*arguments)
    end
  end

  describe "#statfs64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 268 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(268,*arguments)

      subject.statfs64_syscall(*arguments)
    end
  end

  describe "#fstatfs64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 269 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(269,*arguments)

      subject.fstatfs64_syscall(*arguments)
    end
  end

  describe "#tgkill_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 270 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(270,*arguments)

      subject.tgkill_syscall(*arguments)
    end
  end

  describe "#utimes_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 271 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(271,*arguments)

      subject.utimes_syscall(*arguments)
    end
  end

  describe "#fadvise64_64_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 272" do
      expect(subject).to receive(:syscall_macro).with(272)

      subject.fadvise64_64_syscall
    end
  end

  describe "#vserver_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 273" do
      expect(subject).to receive(:syscall_macro).with(273)

      subject.vserver_syscall
    end
  end

  describe "#mbind_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 274 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(274,*arguments)

      subject.mbind_syscall(*arguments)
    end
  end

  describe "#get_mempolicy_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 275 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(275,*arguments)

      subject.get_mempolicy_syscall(*arguments)
    end
  end

  describe "#set_mempolicy_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 276 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(276,*arguments)

      subject.set_mempolicy_syscall(*arguments)
    end
  end

  describe "#mq_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 277 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(277,*arguments)

      subject.mq_open_syscall(*arguments)
    end
  end

  describe "#mq_unlink_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 278 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(278,*arguments)

      subject.mq_unlink_syscall(*arguments)
    end
  end

  describe "#mq_timedsend_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 279 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(279,*arguments)

      subject.mq_timedsend_syscall(*arguments)
    end
  end

  describe "#mq_timedreceive_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 280 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(280,*arguments)

      subject.mq_timedreceive_syscall(*arguments)
    end
  end

  describe "#mq_notify_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 281 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(281,*arguments)

      subject.mq_notify_syscall(*arguments)
    end
  end

  describe "#mq_getsetattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 282 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(282,*arguments)

      subject.mq_getsetattr_syscall(*arguments)
    end
  end

  describe "#kexec_load_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 283 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(283,*arguments)

      subject.kexec_load_syscall(*arguments)
    end
  end

  describe "#waitid_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 284 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(284,*arguments)

      subject.waitid_syscall(*arguments)
    end
  end

  describe "#add_key_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 286 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(286,*arguments)

      subject.add_key_syscall(*arguments)
    end
  end

  describe "#request_key_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 287 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(287,*arguments)

      subject.request_key_syscall(*arguments)
    end
  end

  describe "#keyctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 288 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(288,*arguments)

      subject.keyctl_syscall(*arguments)
    end
  end

  describe "#ioprio_set_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 289 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(289,*arguments)

      subject.ioprio_set_syscall(*arguments)
    end
  end

  describe "#ioprio_get_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 290 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(290,*arguments)

      subject.ioprio_get_syscall(*arguments)
    end
  end

  describe "#inotify_init_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 291" do
      expect(subject).to receive(:syscall_macro).with(291)

      subject.inotify_init_syscall
    end
  end

  describe "#inotify_add_watch_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 292 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(292,*arguments)

      subject.inotify_add_watch_syscall(*arguments)
    end
  end

  describe "#inotify_rm_watch_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 293 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(293,*arguments)

      subject.inotify_rm_watch_syscall(*arguments)
    end
  end

  describe "#migrate_pages_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 294 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(294,*arguments)

      subject.migrate_pages_syscall(*arguments)
    end
  end

  describe "#openat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 295 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(295,*arguments)

      subject.openat_syscall(*arguments)
    end
  end

  describe "#mkdirat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 296 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(296,*arguments)

      subject.mkdirat_syscall(*arguments)
    end
  end

  describe "#mknodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 297 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(297,*arguments)

      subject.mknodat_syscall(*arguments)
    end
  end

  describe "#fchownat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 298 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(298,*arguments)

      subject.fchownat_syscall(*arguments)
    end
  end

  describe "#futimesat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 299 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(299,*arguments)

      subject.futimesat_syscall(*arguments)
    end
  end

  describe "#fstatat64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 300 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(300,*arguments)

      subject.fstatat64_syscall(*arguments)
    end
  end

  describe "#unlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 301 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(301,*arguments)

      subject.unlinkat_syscall(*arguments)
    end
  end

  describe "#renameat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 302 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(302,*arguments)

      subject.renameat_syscall(*arguments)
    end
  end

  describe "#linkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 303 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(303,*arguments)

      subject.linkat_syscall(*arguments)
    end
  end

  describe "#symlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 304 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(304,*arguments)

      subject.symlinkat_syscall(*arguments)
    end
  end

  describe "#readlinkat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 305 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(305,*arguments)

      subject.readlinkat_syscall(*arguments)
    end
  end

  describe "#fchmodat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 306 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(306,*arguments)

      subject.fchmodat_syscall(*arguments)
    end
  end

  describe "#faccessat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 307 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(307,*arguments)

      subject.faccessat_syscall(*arguments)
    end
  end

  describe "#pselect6_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 308 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(308,*arguments)

      subject.pselect6_syscall(*arguments)
    end
  end

  describe "#ppoll_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 309 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(309,*arguments)

      subject.ppoll_syscall(*arguments)
    end
  end

  describe "#unshare_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 310 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(310,*arguments)

      subject.unshare_syscall(*arguments)
    end
  end

  describe "#set_robust_list_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 311 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(311,*arguments)

      subject.set_robust_list_syscall(*arguments)
    end
  end

  describe "#get_robust_list_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 312 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(312,*arguments)

      subject.get_robust_list_syscall(*arguments)
    end
  end

  describe "#splice_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 313 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(313,*arguments)

      subject.splice_syscall(*arguments)
    end
  end

  describe "#sync_file_range_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 314" do
      expect(subject).to receive(:syscall_macro).with(314)

      subject.sync_file_range_syscall
    end
  end

  describe "#tee_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 315 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(315,*arguments)

      subject.tee_syscall(*arguments)
    end
  end

  describe "#vmsplice_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 316 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(316,*arguments)

      subject.vmsplice_syscall(*arguments)
    end
  end

  describe "#move_pages_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 317 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(317,*arguments)

      subject.move_pages_syscall(*arguments)
    end
  end

  describe "#getcpu_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 318 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(318,*arguments)

      subject.getcpu_syscall(*arguments)
    end
  end

  describe "#epoll_pwait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 319 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(319,*arguments)

      subject.epoll_pwait_syscall(*arguments)
    end
  end

  describe "#utimensat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 320 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(320,*arguments)

      subject.utimensat_syscall(*arguments)
    end
  end

  describe "#signalfd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 321 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(321,*arguments)

      subject.signalfd_syscall(*arguments)
    end
  end

  describe "#timerfd_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 322 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(322,*arguments)

      subject.timerfd_create_syscall(*arguments)
    end
  end

  describe "#eventfd_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 323 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(323,*arguments)

      subject.eventfd_syscall(*arguments)
    end
  end

  describe "#fallocate_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 324" do
      expect(subject).to receive(:syscall_macro).with(324)

      subject.fallocate_syscall
    end
  end

  describe "#timerfd_settime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 325 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(325,*arguments)

      subject.timerfd_settime_syscall(*arguments)
    end
  end

  describe "#timerfd_gettime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 326 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(326,*arguments)

      subject.timerfd_gettime_syscall(*arguments)
    end
  end

  describe "#signalfd4_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 327 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(327,*arguments)

      subject.signalfd4_syscall(*arguments)
    end
  end

  describe "#eventfd2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 328 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(328,*arguments)

      subject.eventfd2_syscall(*arguments)
    end
  end

  describe "#epoll_create1_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 329 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(329,*arguments)

      subject.epoll_create1_syscall(*arguments)
    end
  end

  describe "#dup3_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 330 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(330,*arguments)

      subject.dup3_syscall(*arguments)
    end
  end

  describe "#pipe2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 331 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(331,*arguments)

      subject.pipe2_syscall(*arguments)
    end
  end

  describe "#inotify_init1_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 332 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(332,*arguments)

      subject.inotify_init1_syscall(*arguments)
    end
  end

  describe "#preadv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 333 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(333,*arguments)

      subject.preadv_syscall(*arguments)
    end
  end

  describe "#pwritev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 334 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(334,*arguments)

      subject.pwritev_syscall(*arguments)
    end
  end

  describe "#rt_tgsigqueueinfo_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 335 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(335,*arguments)

      subject.rt_tgsigqueueinfo_syscall(*arguments)
    end
  end

  describe "#perf_event_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 336 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(336,*arguments)

      subject.perf_event_open_syscall(*arguments)
    end
  end

  describe "#recvmmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 337 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(337,*arguments)

      subject.recvmmsg_syscall(*arguments)
    end
  end

  describe "#fanotify_init_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 338 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(338,*arguments)

      subject.fanotify_init_syscall(*arguments)
    end
  end

  describe "#fanotify_mark_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 339 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(339,*arguments)

      subject.fanotify_mark_syscall(*arguments)
    end
  end

  describe "#prlimit64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 340 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(340,*arguments)

      subject.prlimit64_syscall(*arguments)
    end
  end

  describe "#name_to_handle_at_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 341 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(341,*arguments)

      subject.name_to_handle_at_syscall(*arguments)
    end
  end

  describe "#open_by_handle_at_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 342 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(342,*arguments)

      subject.open_by_handle_at_syscall(*arguments)
    end
  end

  describe "#clock_adjtime_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 343 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(343,*arguments)

      subject.clock_adjtime_syscall(*arguments)
    end
  end

  describe "#syncfs_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 344 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(344,*arguments)

      subject.syncfs_syscall(*arguments)
    end
  end

  describe "#sendmmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 345 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(345,*arguments)

      subject.sendmmsg_syscall(*arguments)
    end
  end

  describe "#setns_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 346 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(346,*arguments)

      subject.setns_syscall(*arguments)
    end
  end

  describe "#process_vm_readv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 347 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(347,*arguments)

      subject.process_vm_readv_syscall(*arguments)
    end
  end

  describe "#process_vm_writev_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 348 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(348,*arguments)

      subject.process_vm_writev_syscall(*arguments)
    end
  end

  describe "#kcmp_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 349 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(349,*arguments)

      subject.kcmp_syscall(*arguments)
    end
  end

  describe "#finit_module_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 350 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(350,*arguments)

      subject.finit_module_syscall(*arguments)
    end
  end

  describe "#sched_setattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 351 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(351,*arguments)

      subject.sched_setattr_syscall(*arguments)
    end
  end

  describe "#sched_getattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 352 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(352,*arguments)

      subject.sched_getattr_syscall(*arguments)
    end
  end

  describe "#renameat2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 353 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(353,*arguments)

      subject.renameat2_syscall(*arguments)
    end
  end

  describe "#seccomp_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 354 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(354,*arguments)

      subject.seccomp_syscall(*arguments)
    end
  end

  describe "#getrandom_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 355 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(355,*arguments)

      subject.getrandom_syscall(*arguments)
    end
  end

  describe "#memfd_create_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 356 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(356,*arguments)

      subject.memfd_create_syscall(*arguments)
    end
  end

  describe "#bpf_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 357 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(357,*arguments)

      subject.bpf_syscall(*arguments)
    end
  end

  describe "#execveat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 358 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(358,*arguments)

      subject.execveat_syscall(*arguments)
    end
  end

  describe "#socket_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 359 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(359,*arguments)

      subject.socket_syscall(*arguments)
    end
  end

  describe "#socketpair_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 360 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(360,*arguments)

      subject.socketpair_syscall(*arguments)
    end
  end

  describe "#bind_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 361 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(361,*arguments)

      subject.bind_syscall(*arguments)
    end
  end

  describe "#connect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 362 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(362,*arguments)

      subject.connect_syscall(*arguments)
    end
  end

  describe "#listen_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 363 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(363,*arguments)

      subject.listen_syscall(*arguments)
    end
  end

  describe "#accept4_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 364 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(364,*arguments)

      subject.accept4_syscall(*arguments)
    end
  end

  describe "#getsockopt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 365 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(365,*arguments)

      subject.getsockopt_syscall(*arguments)
    end
  end

  describe "#setsockopt_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 366 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(366,*arguments)

      subject.setsockopt_syscall(*arguments)
    end
  end

  describe "#getsockname_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 367 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(367,*arguments)

      subject.getsockname_syscall(*arguments)
    end
  end

  describe "#getpeername_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 368 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(368,*arguments)

      subject.getpeername_syscall(*arguments)
    end
  end

  describe "#sendto_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 369 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(369,*arguments)

      subject.sendto_syscall(*arguments)
    end
  end

  describe "#sendmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 370 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(370,*arguments)

      subject.sendmsg_syscall(*arguments)
    end
  end

  describe "#recvfrom_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 371 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(371,*arguments)

      subject.recvfrom_syscall(*arguments)
    end
  end

  describe "#recvmsg_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 372 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(372,*arguments)

      subject.recvmsg_syscall(*arguments)
    end
  end

  describe "#shutdown_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 373 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(373,*arguments)

      subject.shutdown_syscall(*arguments)
    end
  end

  describe "#userfaultfd_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 374 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(374,*arguments)

      subject.userfaultfd_syscall(*arguments)
    end
  end

  describe "#membarrier_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 375 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(375,*arguments)

      subject.membarrier_syscall(*arguments)
    end
  end

  describe "#mlock2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 376 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(376,*arguments)

      subject.mlock2_syscall(*arguments)
    end
  end

  describe "#copy_file_range_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 377 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(377,*arguments)

      subject.copy_file_range_syscall(*arguments)
    end
  end

  describe "#preadv2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 378 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(378,*arguments)

      subject.preadv2_syscall(*arguments)
    end
  end

  describe "#pwritev2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 379 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(379,*arguments)

      subject.pwritev2_syscall(*arguments)
    end
  end

  describe "#pkey_mprotect_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 380 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(380,*arguments)

      subject.pkey_mprotect_syscall(*arguments)
    end
  end

  describe "#pkey_alloc_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 381 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(381,*arguments)

      subject.pkey_alloc_syscall(*arguments)
    end
  end

  describe "#pkey_free_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 382 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(382,*arguments)

      subject.pkey_free_syscall(*arguments)
    end
  end

  describe "#statx_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 383 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(383,*arguments)

      subject.statx_syscall(*arguments)
    end
  end

  describe "#arch_prctl_syscall" do
    let(:arguments) { [] }

    it "must call #syscall_macro with the syscall number 384" do
      expect(subject).to receive(:syscall_macro).with(384)

      subject.arch_prctl_syscall
    end
  end

  describe "#io_pgetevents_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 385 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(385,*arguments)

      subject.io_pgetevents_syscall(*arguments)
    end
  end

  describe "#rseq_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 386 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(386,*arguments)

      subject.rseq_syscall(*arguments)
    end
  end

  describe "#semget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 393 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(393,*arguments)

      subject.semget_syscall(*arguments)
    end
  end

  describe "#semctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 394 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(394,*arguments)

      subject.semctl_syscall(*arguments)
    end
  end

  describe "#shmget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 395 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(395,*arguments)

      subject.shmget_syscall(*arguments)
    end
  end

  describe "#shmctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 396 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(396,*arguments)

      subject.shmctl_syscall(*arguments)
    end
  end

  describe "#shmat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 397 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(397,*arguments)

      subject.shmat_syscall(*arguments)
    end
  end

  describe "#shmdt_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 398 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(398,*arguments)

      subject.shmdt_syscall(*arguments)
    end
  end

  describe "#msgget_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 399 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(399,*arguments)

      subject.msgget_syscall(*arguments)
    end
  end

  describe "#msgsnd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 400 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(400,*arguments)

      subject.msgsnd_syscall(*arguments)
    end
  end

  describe "#msgrcv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 401 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(401,*arguments)

      subject.msgrcv_syscall(*arguments)
    end
  end

  describe "#msgctl_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 402 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(402,*arguments)

      subject.msgctl_syscall(*arguments)
    end
  end

  describe "#clock_gettime64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 403 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(403,*arguments)

      subject.clock_gettime64_syscall(*arguments)
    end
  end

  describe "#clock_settime64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 404 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(404,*arguments)

      subject.clock_settime64_syscall(*arguments)
    end
  end

  describe "#clock_adjtime64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 405 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(405,*arguments)

      subject.clock_adjtime64_syscall(*arguments)
    end
  end

  describe "#clock_getres_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 406 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(406,*arguments)

      subject.clock_getres_time64_syscall(*arguments)
    end
  end

  describe "#clock_nanosleep_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 407 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(407,*arguments)

      subject.clock_nanosleep_time64_syscall(*arguments)
    end
  end

  describe "#timer_gettime64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 408 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(408,*arguments)

      subject.timer_gettime64_syscall(*arguments)
    end
  end

  describe "#timer_settime64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 409 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(409,*arguments)

      subject.timer_settime64_syscall(*arguments)
    end
  end

  describe "#timerfd_gettime64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 410 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(410,*arguments)

      subject.timerfd_gettime64_syscall(*arguments)
    end
  end

  describe "#timerfd_settime64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 411 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(411,*arguments)

      subject.timerfd_settime64_syscall(*arguments)
    end
  end

  describe "#utimensat_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 412 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(412,*arguments)

      subject.utimensat_time64_syscall(*arguments)
    end
  end

  describe "#pselect6_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 413 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(413,*arguments)

      subject.pselect6_time64_syscall(*arguments)
    end
  end

  describe "#ppoll_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 414 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(414,*arguments)

      subject.ppoll_time64_syscall(*arguments)
    end
  end

  describe "#io_pgetevents_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 416 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(416,*arguments)

      subject.io_pgetevents_time64_syscall(*arguments)
    end
  end

  describe "#recvmmsg_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 417 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(417,*arguments)

      subject.recvmmsg_time64_syscall(*arguments)
    end
  end

  describe "#mq_timedsend_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 418 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(418,*arguments)

      subject.mq_timedsend_time64_syscall(*arguments)
    end
  end

  describe "#mq_timedreceive_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 419 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(419,*arguments)

      subject.mq_timedreceive_time64_syscall(*arguments)
    end
  end

  describe "#semtimedop_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 420 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(420,*arguments)

      subject.semtimedop_time64_syscall(*arguments)
    end
  end

  describe "#rt_sigtimedwait_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 421 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(421,*arguments)

      subject.rt_sigtimedwait_time64_syscall(*arguments)
    end
  end

  describe "#futex_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 422 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(422,*arguments)

      subject.futex_time64_syscall(*arguments)
    end
  end

  describe "#sched_rr_get_interval_time64_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 423 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(423,*arguments)

      subject.sched_rr_get_interval_time64_syscall(*arguments)
    end
  end

  describe "#pidfd_send_signal_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 424 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(424,*arguments)

      subject.pidfd_send_signal_syscall(*arguments)
    end
  end

  describe "#io_uring_setup_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 425 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(425,*arguments)

      subject.io_uring_setup_syscall(*arguments)
    end
  end

  describe "#io_uring_enter_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 426 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(426,*arguments)

      subject.io_uring_enter_syscall(*arguments)
    end
  end

  describe "#io_uring_register_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 427 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(427,*arguments)

      subject.io_uring_register_syscall(*arguments)
    end
  end

  describe "#open_tree_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 428 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(428,*arguments)

      subject.open_tree_syscall(*arguments)
    end
  end

  describe "#move_mount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 429 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(429,*arguments)

      subject.move_mount_syscall(*arguments)
    end
  end

  describe "#fsopen_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 430 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(430,*arguments)

      subject.fsopen_syscall(*arguments)
    end
  end

  describe "#fsconfig_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 431 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(431,*arguments)

      subject.fsconfig_syscall(*arguments)
    end
  end

  describe "#fsmount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 432 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(432,*arguments)

      subject.fsmount_syscall(*arguments)
    end
  end

  describe "#fspick_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 433 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(433,*arguments)

      subject.fspick_syscall(*arguments)
    end
  end

  describe "#pidfd_open_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 434 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(434,*arguments)

      subject.pidfd_open_syscall(*arguments)
    end
  end

  describe "#clone3_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 435 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(435,*arguments)

      subject.clone3_syscall(*arguments)
    end
  end

  describe "#close_range_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 436 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(436,*arguments)

      subject.close_range_syscall(*arguments)
    end
  end

  describe "#openat2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 437 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(437,*arguments)

      subject.openat2_syscall(*arguments)
    end
  end

  describe "#pidfd_getfd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 438 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(438,*arguments)

      subject.pidfd_getfd_syscall(*arguments)
    end
  end

  describe "#faccessat2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 439 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(439,*arguments)

      subject.faccessat2_syscall(*arguments)
    end
  end

  describe "#process_madvise_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 440 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(440,*arguments)

      subject.process_madvise_syscall(*arguments)
    end
  end

  describe "#epoll_pwait2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 441 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(441,*arguments)

      subject.epoll_pwait2_syscall(*arguments)
    end
  end

  describe "#mount_setattr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 442 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(442,*arguments)

      subject.mount_setattr_syscall(*arguments)
    end
  end

  describe "#quotactl_fd_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 443 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(443,*arguments)

      subject.quotactl_fd_syscall(*arguments)
    end
  end

  describe "#landlock_create_ruleset_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 444 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(444,*arguments)

      subject.landlock_create_ruleset_syscall(*arguments)
    end
  end

  describe "#landlock_add_rule_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 445 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(445,*arguments)

      subject.landlock_add_rule_syscall(*arguments)
    end
  end

  describe "#landlock_restrict_self_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 446 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(446,*arguments)

      subject.landlock_restrict_self_syscall(*arguments)
    end
  end

  describe "#memfd_secret_syscall" do
    let(:arguments) { [double('arg1')] }

    it "must call #syscall_macro with the syscall number 447 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(447,*arguments)

      subject.memfd_secret_syscall(*arguments)
    end
  end

  describe "#process_mrelease_syscall" do
    let(:arguments) { [double('arg1'), double('arg2')] }

    it "must call #syscall_macro with the syscall number 448 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(448,*arguments)

      subject.process_mrelease_syscall(*arguments)
    end
  end

  describe "#futex_waitv_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 449 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(449,*arguments)

      subject.futex_waitv_syscall(*arguments)
    end
  end

  describe "#set_mempolicy_home_node_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 450 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(450,*arguments)

      subject.set_mempolicy_home_node_syscall(*arguments)
    end
  end

  describe "#cachestat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 451 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(451,*arguments)

      subject.cachestat_syscall(*arguments)
    end
  end

  describe "#fchmodat2_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 452 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(452,*arguments)

      subject.fchmodat2_syscall(*arguments)
    end
  end

  describe "#map_shadow_stack_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 453 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(453,*arguments)

      subject.map_shadow_stack_syscall(*arguments)
    end
  end

  describe "#futex_wake_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 454 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(454,*arguments)

      subject.futex_wake_syscall(*arguments)
    end
  end

  describe "#futex_wait_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 455 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(455,*arguments)

      subject.futex_wait_syscall(*arguments)
    end
  end

  describe "#futex_requeue_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 456 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(456,*arguments)

      subject.futex_requeue_syscall(*arguments)
    end
  end

  describe "#statmount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 457 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(457,*arguments)

      subject.statmount_syscall(*arguments)
    end
  end

  describe "#listmount_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 458 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(458,*arguments)

      subject.listmount_syscall(*arguments)
    end
  end

  describe "#lsm_get_self_attr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 459 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(459,*arguments)

      subject.lsm_get_self_attr_syscall(*arguments)
    end
  end

  describe "#lsm_set_self_attr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 460 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(460,*arguments)

      subject.lsm_set_self_attr_syscall(*arguments)
    end
  end

  describe "#lsm_list_modules_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 461 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(461,*arguments)

      subject.lsm_list_modules_syscall(*arguments)
    end
  end

  describe "#mseal_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3')] }

    it "must call #syscall_macro with the syscall number 462 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(462,*arguments)

      subject.mseal_syscall(*arguments)
    end
  end

  describe "#setxattrat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 463 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(463,*arguments)

      subject.setxattrat_syscall(*arguments)
    end
  end

  describe "#getxattrat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5'), double('arg6')] }

    it "must call #syscall_macro with the syscall number 464 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(464,*arguments)

      subject.getxattrat_syscall(*arguments)
    end
  end

  describe "#listxattrat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 465 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(465,*arguments)

      subject.listxattrat_syscall(*arguments)
    end
  end

  describe "#removexattrat_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4')] }

    it "must call #syscall_macro with the syscall number 466 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(466,*arguments)

      subject.removexattrat_syscall(*arguments)
    end
  end

  describe "#open_tree_attr_syscall" do
    let(:arguments) { [double('arg1'), double('arg2'), double('arg3'), double('arg4'), double('arg5')] }

    it "must call #syscall_macro with the syscall number 467 and additional arguments" do
      expect(subject).to receive(:syscall_macro).with(467,*arguments)

      subject.open_tree_attr_syscall(*arguments)
    end
  end
end
