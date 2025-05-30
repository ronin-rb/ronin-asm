# frozen_string_literal: true
#
# ronin-asm - A Ruby DSL for crafting Assembly programs and shellcode.
#
# Copyright (c) 2007-2025 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# ronin-asm is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# ronin-asm is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with ronin-asm.  If not, see <https://www.gnu.org/licenses/>.
#

#
# NOTE: this file was automatically generated. Do not edit!
#

module Ronin
  module ASM
    module Syscalls
      module Linux
        #
        # Linux x86 syscall macros.
        #
        # @since 1.0.0
        #
        module X86
          # Macro to call the `restart_syscall` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/restart_syscall.2.html
          def restart_syscall_syscall = syscall(0)
          # Macro to call the `exit` syscall.
          # @param [Register, Integer] error_code
          # @see https://www.man7.org/linux/man-pages/man2/exit.2.html
          def exit_syscall(error_code) = syscall(1,error_code)
          # Macro to call the `fork` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/fork.2.html
          def fork_syscall = syscall(2)
          # Macro to call the `read` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/read.2.html
          def read_syscall(fd,buf,count) = syscall(3,fd,buf,count)
          # Macro to call the `write` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/write.2.html
          def write_syscall(fd,buf,count) = syscall(4,fd,buf,count)
          # Macro to call the `open` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] flags
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/open.2.html
          def open_syscall(filename,flags,mode) = syscall(5,filename,flags,mode)
          # Macro to call the `close` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/close.2.html
          def close_syscall(fd) = syscall(6,fd)
          # Macro to call the `waitpid` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] stat_addr
          # @param [Register, Integer] options
          # @see https://www.man7.org/linux/man-pages/man2/waitpid.2.html
          def waitpid_syscall(pid,stat_addr,options) = syscall(7,pid,stat_addr,options)
          # Macro to call the `creat` syscall.
          # @param [Register, Integer] pathname
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/creat.2.html
          def creat_syscall(pathname,mode) = syscall(8,pathname,mode)
          # Macro to call the `link` syscall.
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/link.2.html
          def link_syscall(oldname,newname) = syscall(9,oldname,newname)
          # Macro to call the `unlink` syscall.
          # @param [Register, Integer] pathname
          # @see https://www.man7.org/linux/man-pages/man2/unlink.2.html
          def unlink_syscall(pathname) = syscall(10,pathname)
          # Macro to call the `execve` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] argv
          # @param [Register, Integer] envp
          # @see https://www.man7.org/linux/man-pages/man2/execve.2.html
          def execve_syscall(filename,argv,envp) = syscall(11,filename,argv,envp)
          # Macro to call the `chdir` syscall.
          # @param [Register, Integer] filename
          # @see https://www.man7.org/linux/man-pages/man2/chdir.2.html
          def chdir_syscall(filename) = syscall(12,filename)
          # Macro to call the `time` syscall.
          # @param [Register, Integer] tloc
          # @see https://www.man7.org/linux/man-pages/man2/time.2.html
          def time_syscall(tloc) = syscall(13,tloc)
          # Macro to call the `mknod` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] dev
          # @see https://www.man7.org/linux/man-pages/man2/mknod.2.html
          def mknod_syscall(filename,mode,dev) = syscall(14,filename,mode,dev)
          # Macro to call the `chmod` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/chmod.2.html
          def chmod_syscall(filename,mode) = syscall(15,filename,mode)
          # Macro to call the `lchown` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/lchown.2.html
          def lchown_syscall = syscall(16)
          # Macro to call the `break` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/break.2.html
          def break_syscall = syscall(17)
          # Macro to call the `oldstat` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/oldstat.2.html
          def oldstat_syscall(filename,statbuf) = syscall(18,filename,statbuf)
          # Macro to call the `lseek` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] whence
          # @see https://www.man7.org/linux/man-pages/man2/lseek.2.html
          def lseek_syscall(fd,offset,whence) = syscall(19,fd,offset,whence)
          # Macro to call the `getpid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getpid.2.html
          def getpid_syscall = syscall(20)
          # Macro to call the `mount` syscall.
          # @param [Register, Integer] dev_name
          # @param [Register, Integer] dir_name
          # @param [Register, Integer] type
          # @param [Register, Integer] flags
          # @param [Register, Integer] data
          # @see https://www.man7.org/linux/man-pages/man2/mount.2.html
          def mount_syscall(dev_name,dir_name,type,flags,data) = syscall(21,dev_name,dir_name,type,flags,data)
          # Macro to call the `umount` syscall.
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/umount.2.html
          def umount_syscall(name) = syscall(22,name)
          # Macro to call the `setuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setuid.2.html
          def setuid_syscall = syscall(23)
          # Macro to call the `getuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getuid.2.html
          def getuid_syscall = syscall(24)
          # Macro to call the `stime` syscall.
          # @param [Register, Integer] tptr
          # @see https://www.man7.org/linux/man-pages/man2/stime.2.html
          def stime_syscall(tptr) = syscall(25,tptr)
          # Macro to call the `ptrace` syscall.
          # @param [Register, Integer] request
          # @param [Register, Integer] pid
          # @param [Register, Integer] addr
          # @param [Register, Integer] data
          # @see https://www.man7.org/linux/man-pages/man2/ptrace.2.html
          def ptrace_syscall(request,pid,addr,data) = syscall(26,request,pid,addr,data)
          # Macro to call the `alarm` syscall.
          # @param [Register, Integer] seconds
          # @see https://www.man7.org/linux/man-pages/man2/alarm.2.html
          def alarm_syscall(seconds) = syscall(27,seconds)
          # Macro to call the `oldfstat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/oldfstat.2.html
          def oldfstat_syscall(fd,statbuf) = syscall(28,fd,statbuf)
          # Macro to call the `pause` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/pause.2.html
          def pause_syscall = syscall(29)
          # Macro to call the `utime` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] t
          # @see https://www.man7.org/linux/man-pages/man2/utime.2.html
          def utime_syscall(filename,t) = syscall(30,filename,t)
          # Macro to call the `stty` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/stty.2.html
          def stty_syscall = syscall(31)
          # Macro to call the `gtty` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/gtty.2.html
          def gtty_syscall = syscall(32)
          # Macro to call the `access` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/access.2.html
          def access_syscall(filename,mode) = syscall(33,filename,mode)
          # Macro to call the `nice` syscall.
          # @param [Register, Integer] increment
          # @see https://www.man7.org/linux/man-pages/man2/nice.2.html
          def nice_syscall(increment) = syscall(34,increment)
          # Macro to call the `ftime` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/ftime.2.html
          def ftime_syscall = syscall(35)
          # Macro to call the `sync` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sync.2.html
          def sync_syscall = syscall(36)
          # Macro to call the `kill` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/kill.2.html
          def kill_syscall(pid,sig) = syscall(37,pid,sig)
          # Macro to call the `rename` syscall.
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/rename.2.html
          def rename_syscall(oldname,newname) = syscall(38,oldname,newname)
          # Macro to call the `mkdir` syscall.
          # @param [Register, Integer] pathname
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/mkdir.2.html
          def mkdir_syscall(pathname,mode) = syscall(39,pathname,mode)
          # Macro to call the `rmdir` syscall.
          # @param [Register, Integer] pathname
          # @see https://www.man7.org/linux/man-pages/man2/rmdir.2.html
          def rmdir_syscall(pathname) = syscall(40,pathname)
          # Macro to call the `dup` syscall.
          # @param [Register, Integer] fildes
          # @see https://www.man7.org/linux/man-pages/man2/dup.2.html
          def dup_syscall(fildes) = syscall(41,fildes)
          # Macro to call the `pipe` syscall.
          # @param [Register, Integer] fildes
          # @see https://www.man7.org/linux/man-pages/man2/pipe.2.html
          def pipe_syscall(fildes) = syscall(42,fildes)
          # Macro to call the `times` syscall.
          # @param [Register, Integer] tbuf
          # @see https://www.man7.org/linux/man-pages/man2/times.2.html
          def times_syscall(tbuf) = syscall(43,tbuf)
          # Macro to call the `prof` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/prof.2.html
          def prof_syscall = syscall(44)
          # Macro to call the `brk` syscall.
          # @param [Register, Integer] brk
          # @see https://www.man7.org/linux/man-pages/man2/brk.2.html
          def brk_syscall(brk) = syscall(45,brk)
          # Macro to call the `setgid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setgid.2.html
          def setgid_syscall = syscall(46)
          # Macro to call the `getgid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getgid.2.html
          def getgid_syscall = syscall(47)
          # Macro to call the `signal` syscall.
          # @param [Register, Integer] sig
          # @param [Register, Integer] handler
          # @see https://www.man7.org/linux/man-pages/man2/signal.2.html
          def signal_syscall(sig,handler) = syscall(48,sig,handler)
          # Macro to call the `geteuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/geteuid.2.html
          def geteuid_syscall = syscall(49)
          # Macro to call the `getegid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getegid.2.html
          def getegid_syscall = syscall(50)
          # Macro to call the `acct` syscall.
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/acct.2.html
          def acct_syscall(name) = syscall(51,name)
          # Macro to call the `umount2` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/umount2.2.html
          def umount2_syscall(name,flags) = syscall(52,name,flags)
          # Macro to call the `lock` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/lock.2.html
          def lock_syscall = syscall(53)
          # Macro to call the `ioctl` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/ioctl.2.html
          def ioctl_syscall(fd,cmd,arg) = syscall(54,fd,cmd,arg)
          # Macro to call the `fcntl` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/fcntl.2.html
          def fcntl_syscall(fd,cmd,arg) = syscall(55,fd,cmd,arg)
          # Macro to call the `mpx` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/mpx.2.html
          def mpx_syscall = syscall(56)
          # Macro to call the `setpgid` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] pgid
          # @see https://www.man7.org/linux/man-pages/man2/setpgid.2.html
          def setpgid_syscall(pid,pgid) = syscall(57,pid,pgid)
          # Macro to call the `ulimit` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/ulimit.2.html
          def ulimit_syscall = syscall(58)
          # Macro to call the `oldolduname` syscall.
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/oldolduname.2.html
          def oldolduname_syscall(arg) = syscall(59,arg)
          # Macro to call the `umask` syscall.
          # @param [Register, Integer] mask
          # @see https://www.man7.org/linux/man-pages/man2/umask.2.html
          def umask_syscall(mask) = syscall(60,mask)
          # Macro to call the `chroot` syscall.
          # @param [Register, Integer] filename
          # @see https://www.man7.org/linux/man-pages/man2/chroot.2.html
          def chroot_syscall(filename) = syscall(61,filename)
          # Macro to call the `ustat` syscall.
          # @param [Register, Integer] dev
          # @param [Register, Integer] ubuf
          # @see https://www.man7.org/linux/man-pages/man2/ustat.2.html
          def ustat_syscall(dev,ubuf) = syscall(62,dev,ubuf)
          # Macro to call the `dup2` syscall.
          # @param [Register, Integer] oldfd
          # @param [Register, Integer] newfd
          # @see https://www.man7.org/linux/man-pages/man2/dup2.2.html
          def dup2_syscall(oldfd,newfd) = syscall(63,oldfd,newfd)
          # Macro to call the `getppid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getppid.2.html
          def getppid_syscall = syscall(64)
          # Macro to call the `getpgrp` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getpgrp.2.html
          def getpgrp_syscall = syscall(65)
          # Macro to call the `setsid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setsid.2.html
          def setsid_syscall = syscall(66)
          # Macro to call the `sigaction` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sigaction.2.html
          def sigaction_syscall = syscall(67)
          # Macro to call the `sgetmask` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sgetmask.2.html
          def sgetmask_syscall = syscall(68)
          # Macro to call the `ssetmask` syscall.
          # @param [Register, Integer] newmask
          # @see https://www.man7.org/linux/man-pages/man2/ssetmask.2.html
          def ssetmask_syscall(newmask) = syscall(69,newmask)
          # Macro to call the `setreuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setreuid.2.html
          def setreuid_syscall = syscall(70)
          # Macro to call the `setregid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setregid.2.html
          def setregid_syscall = syscall(71)
          # Macro to call the `sigsuspend` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sigsuspend.2.html
          def sigsuspend_syscall = syscall(72)
          # Macro to call the `sigpending` syscall.
          # @param [Register, Integer] uset
          # @see https://www.man7.org/linux/man-pages/man2/sigpending.2.html
          def sigpending_syscall(uset) = syscall(73,uset)
          # Macro to call the `sethostname` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/sethostname.2.html
          def sethostname_syscall(name,len) = syscall(74,name,len)
          # Macro to call the `setrlimit` syscall.
          # @param [Register, Integer] resource
          # @param [Register, Integer] rlim
          # @see https://www.man7.org/linux/man-pages/man2/setrlimit.2.html
          def setrlimit_syscall(resource,rlim) = syscall(75,resource,rlim)
          # Macro to call the `getrlimit` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getrlimit.2.html
          def getrlimit_syscall = syscall(76)
          # Macro to call the `getrusage` syscall.
          # @param [Register, Integer] who
          # @param [Register, Integer] ru
          # @see https://www.man7.org/linux/man-pages/man2/getrusage.2.html
          def getrusage_syscall(who,ru) = syscall(77,who,ru)
          # Macro to call the `gettimeofday` syscall.
          # @param [Register, Integer] tv
          # @param [Register, Integer] tz
          # @see https://www.man7.org/linux/man-pages/man2/gettimeofday.2.html
          def gettimeofday_syscall(tv,tz) = syscall(78,tv,tz)
          # Macro to call the `settimeofday` syscall.
          # @param [Register, Integer] tv
          # @param [Register, Integer] tz
          # @see https://www.man7.org/linux/man-pages/man2/settimeofday.2.html
          def settimeofday_syscall(tv,tz) = syscall(79,tv,tz)
          # Macro to call the `getgroups` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getgroups.2.html
          def getgroups_syscall = syscall(80)
          # Macro to call the `setgroups` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setgroups.2.html
          def setgroups_syscall = syscall(81)
          # Macro to call the `select` syscall.
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/select.2.html
          def select_syscall(arg) = syscall(82,arg)
          # Macro to call the `symlink` syscall.
          # @param [Register, Integer] old
          # @param [Register, Integer] new
          # @see https://www.man7.org/linux/man-pages/man2/symlink.2.html
          def symlink_syscall(old,new) = syscall(83,old,new)
          # Macro to call the `oldlstat` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/oldlstat.2.html
          def oldlstat_syscall(filename,statbuf) = syscall(84,filename,statbuf)
          # Macro to call the `readlink` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @param [Register, Integer] bufsiz
          # @see https://www.man7.org/linux/man-pages/man2/readlink.2.html
          def readlink_syscall(path,buf,bufsiz) = syscall(85,path,buf,bufsiz)
          # Macro to call the `uselib` syscall.
          # @param [Register, Integer] library
          # @see https://www.man7.org/linux/man-pages/man2/uselib.2.html
          def uselib_syscall(library) = syscall(86,library)
          # Macro to call the `swapon` syscall.
          # @param [Register, Integer] specialfile
          # @param [Register, Integer] swap_flags
          # @see https://www.man7.org/linux/man-pages/man2/swapon.2.html
          def swapon_syscall(specialfile,swap_flags) = syscall(87,specialfile,swap_flags)
          # Macro to call the `reboot` syscall.
          # @param [Register, Integer] magic1
          # @param [Register, Integer] magic2
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/reboot.2.html
          def reboot_syscall(magic1,magic2,cmd,arg) = syscall(88,magic1,magic2,cmd,arg)
          # Macro to call the `readdir` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/readdir.2.html
          def readdir_syscall(arg1,arg2,arg3) = syscall(89,arg1,arg2,arg3)
          # Macro to call the `mmap` syscall.
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/mmap.2.html
          def mmap_syscall(arg) = syscall(90,arg)
          # Macro to call the `munmap` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/munmap.2.html
          def munmap_syscall(addr,len) = syscall(91,addr,len)
          # Macro to call the `truncate` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] length
          # @see https://www.man7.org/linux/man-pages/man2/truncate.2.html
          def truncate_syscall(path,length) = syscall(92,path,length)
          # Macro to call the `ftruncate` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] length
          # @see https://www.man7.org/linux/man-pages/man2/ftruncate.2.html
          def ftruncate_syscall(fd,length) = syscall(93,fd,length)
          # Macro to call the `fchmod` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/fchmod.2.html
          def fchmod_syscall(fd,mode) = syscall(94,fd,mode)
          # Macro to call the `fchown` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/fchown.2.html
          def fchown_syscall = syscall(95)
          # Macro to call the `getpriority` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @see https://www.man7.org/linux/man-pages/man2/getpriority.2.html
          def getpriority_syscall(which,who) = syscall(96,which,who)
          # Macro to call the `setpriority` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @param [Register, Integer] niceval
          # @see https://www.man7.org/linux/man-pages/man2/setpriority.2.html
          def setpriority_syscall(which,who,niceval) = syscall(97,which,who,niceval)
          # Macro to call the `profil` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/profil.2.html
          def profil_syscall = syscall(98)
          # Macro to call the `statfs` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/statfs.2.html
          def statfs_syscall(path,buf) = syscall(99,path,buf)
          # Macro to call the `fstatfs` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/fstatfs.2.html
          def fstatfs_syscall(fd,buf) = syscall(100,fd,buf)
          # Macro to call the `ioperm` syscall.
          # @param [Register, Integer] from
          # @param [Register, Integer] num
          # @param [Register, Integer] on
          # @see https://www.man7.org/linux/man-pages/man2/ioperm.2.html
          def ioperm_syscall(from,num,on) = syscall(101,from,num,on)
          # Macro to call the `socketcall` syscall.
          # @param [Register, Integer] call
          # @param [Register, Integer] args
          # @see https://www.man7.org/linux/man-pages/man2/socketcall.2.html
          def socketcall_syscall(call,args) = syscall(102,call,args)
          # Macro to call the `syslog` syscall.
          # @param [Register, Integer] type
          # @param [Register, Integer] buf
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/syslog.2.html
          def syslog_syscall(type,buf,len) = syscall(103,type,buf,len)
          # Macro to call the `setitimer` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] value
          # @param [Register, Integer] ovalue
          # @see https://www.man7.org/linux/man-pages/man2/setitimer.2.html
          def setitimer_syscall(which,value,ovalue) = syscall(104,which,value,ovalue)
          # Macro to call the `getitimer` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] value
          # @see https://www.man7.org/linux/man-pages/man2/getitimer.2.html
          def getitimer_syscall(which,value) = syscall(105,which,value)
          # Macro to call the `stat` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/stat.2.html
          def stat_syscall(filename,statbuf) = syscall(106,filename,statbuf)
          # Macro to call the `lstat` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/lstat.2.html
          def lstat_syscall(filename,statbuf) = syscall(107,filename,statbuf)
          # Macro to call the `fstat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/fstat.2.html
          def fstat_syscall(fd,statbuf) = syscall(108,fd,statbuf)
          # Macro to call the `olduname` syscall.
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/olduname.2.html
          def olduname_syscall(arg) = syscall(109,arg)
          # Macro to call the `iopl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/iopl.2.html
          def iopl_syscall = syscall(110)
          # Macro to call the `vhangup` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vhangup.2.html
          def vhangup_syscall = syscall(111)
          # Macro to call the `idle` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/idle.2.html
          def idle_syscall = syscall(112)
          # Macro to call the `vm86old` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vm86old.2.html
          def vm86old_syscall = syscall(113)
          # Macro to call the `wait4` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] stat_addr
          # @param [Register, Integer] options
          # @param [Register, Integer] ru
          # @see https://www.man7.org/linux/man-pages/man2/wait4.2.html
          def wait4_syscall(pid,stat_addr,options,ru) = syscall(114,pid,stat_addr,options,ru)
          # Macro to call the `swapoff` syscall.
          # @param [Register, Integer] specialfile
          # @see https://www.man7.org/linux/man-pages/man2/swapoff.2.html
          def swapoff_syscall(specialfile) = syscall(115,specialfile)
          # Macro to call the `sysinfo` syscall.
          # @param [Register, Integer] info
          # @see https://www.man7.org/linux/man-pages/man2/sysinfo.2.html
          def sysinfo_syscall(info) = syscall(116,info)
          # Macro to call the `ipc` syscall.
          # @param [Register, Integer] call
          # @param [Register, Integer] first
          # @param [Register, Integer] second
          # @param [Register, Integer] third
          # @param [Register, Integer] ptr
          # @param [Register, Integer] fifth
          # @see https://www.man7.org/linux/man-pages/man2/ipc.2.html
          def ipc_syscall(call,first,second,third,ptr,fifth) = syscall(117,call,first,second,third,ptr,fifth)
          # Macro to call the `fsync` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/fsync.2.html
          def fsync_syscall(fd) = syscall(118,fd)
          # Macro to call the `sigreturn` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sigreturn.2.html
          def sigreturn_syscall = syscall(119)
          # Macro to call the `clone` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/clone.2.html
          def clone_syscall(arg1,arg2,arg3,arg4,arg5) = syscall(120,arg1,arg2,arg3,arg4,arg5)
          # Macro to call the `setdomainname` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/setdomainname.2.html
          def setdomainname_syscall(name,len) = syscall(121,name,len)
          # Macro to call the `uname` syscall.
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/uname.2.html
          def uname_syscall(name) = syscall(122,name)
          # Macro to call the `modify_ldt` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/modify_ldt.2.html
          def modify_ldt_syscall = syscall(123)
          # Macro to call the `adjtimex` syscall.
          # @param [Register, Integer] txc_p
          # @see https://www.man7.org/linux/man-pages/man2/adjtimex.2.html
          def adjtimex_syscall(txc_p) = syscall(124,txc_p)
          # Macro to call the `mprotect` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] prot
          # @see https://www.man7.org/linux/man-pages/man2/mprotect.2.html
          def mprotect_syscall(start,len,prot) = syscall(125,start,len,prot)
          # Macro to call the `sigprocmask` syscall.
          # @param [Register, Integer] how
          # @param [Register, Integer] set
          # @param [Register, Integer] oset
          # @see https://www.man7.org/linux/man-pages/man2/sigprocmask.2.html
          def sigprocmask_syscall(how,set,oset) = syscall(126,how,set,oset)
          # Macro to call the `create_module` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/create_module.2.html
          def create_module_syscall = syscall(127)
          # Macro to call the `init_module` syscall.
          # @param [Register, Integer] umod
          # @param [Register, Integer] len
          # @param [Register, Integer] uargs
          # @see https://www.man7.org/linux/man-pages/man2/init_module.2.html
          def init_module_syscall(umod,len,uargs) = syscall(128,umod,len,uargs)
          # Macro to call the `delete_module` syscall.
          # @param [Register, Integer] name_user
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/delete_module.2.html
          def delete_module_syscall(name_user,flags) = syscall(129,name_user,flags)
          # Macro to call the `get_kernel_syms` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/get_kernel_syms.2.html
          def get_kernel_syms_syscall = syscall(130)
          # Macro to call the `quotactl` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] special
          # @param [Register, Integer] id
          # @param [Register, Integer] addr
          # @see https://www.man7.org/linux/man-pages/man2/quotactl.2.html
          def quotactl_syscall(cmd,special,id,addr) = syscall(131,cmd,special,id,addr)
          # Macro to call the `getpgid` syscall.
          # @param [Register, Integer] pid
          # @see https://www.man7.org/linux/man-pages/man2/getpgid.2.html
          def getpgid_syscall(pid) = syscall(132,pid)
          # Macro to call the `fchdir` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/fchdir.2.html
          def fchdir_syscall(fd) = syscall(133,fd)
          # Macro to call the `bdflush` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/bdflush.2.html
          def bdflush_syscall = syscall(134)
          # Macro to call the `sysfs` syscall.
          # @param [Register, Integer] option
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @see https://www.man7.org/linux/man-pages/man2/sysfs.2.html
          def sysfs_syscall(option,arg1,arg2) = syscall(135,option,arg1,arg2)
          # Macro to call the `personality` syscall.
          # @param [Register, Integer] personality
          # @see https://www.man7.org/linux/man-pages/man2/personality.2.html
          def personality_syscall(personality) = syscall(136,personality)
          # Macro to call the `afs_syscall` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/afs_syscall.2.html
          def afs_syscall_syscall = syscall(137)
          # Macro to call the `setfsuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setfsuid.2.html
          def setfsuid_syscall = syscall(138)
          # Macro to call the `setfsgid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setfsgid.2.html
          def setfsgid_syscall = syscall(139)
          # Macro to call the `_llseek` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] offset_high
          # @param [Register, Integer] offset_low
          # @param [Register, Integer] result
          # @param [Register, Integer] whence
          # @see https://www.man7.org/linux/man-pages/man2/_llseek.2.html
          def _llseek_syscall(fd,offset_high,offset_low,result,whence) = syscall(140,fd,offset_high,offset_low,result,whence)
          # Macro to call the `getdents` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] dirent
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/getdents.2.html
          def getdents_syscall(fd,dirent,count) = syscall(141,fd,dirent,count)
          # Macro to call the `_newselect` syscall.
          # @param [Register, Integer] n
          # @param [Register, Integer] inp
          # @param [Register, Integer] outp
          # @param [Register, Integer] exp
          # @param [Register, Integer] tvp
          # @see https://www.man7.org/linux/man-pages/man2/_newselect.2.html
          def _newselect_syscall(n,inp,outp,exp,tvp) = syscall(142,n,inp,outp,exp,tvp)
          # Macro to call the `flock` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @see https://www.man7.org/linux/man-pages/man2/flock.2.html
          def flock_syscall(fd,cmd) = syscall(143,fd,cmd)
          # Macro to call the `msync` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/msync.2.html
          def msync_syscall(start,len,flags) = syscall(144,start,len,flags)
          # Macro to call the `readv` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @see https://www.man7.org/linux/man-pages/man2/readv.2.html
          def readv_syscall(fd,vec,vlen) = syscall(145,fd,vec,vlen)
          # Macro to call the `writev` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @see https://www.man7.org/linux/man-pages/man2/writev.2.html
          def writev_syscall(fd,vec,vlen) = syscall(146,fd,vec,vlen)
          # Macro to call the `getsid` syscall.
          # @param [Register, Integer] pid
          # @see https://www.man7.org/linux/man-pages/man2/getsid.2.html
          def getsid_syscall(pid) = syscall(147,pid)
          # Macro to call the `fdatasync` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/fdatasync.2.html
          def fdatasync_syscall(fd) = syscall(148,fd)
          # Macro to call the `_sysctl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/_sysctl.2.html
          def _sysctl_syscall = syscall(149)
          # Macro to call the `mlock` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/mlock.2.html
          def mlock_syscall(start,len) = syscall(150,start,len)
          # Macro to call the `munlock` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/munlock.2.html
          def munlock_syscall(start,len) = syscall(151,start,len)
          # Macro to call the `mlockall` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mlockall.2.html
          def mlockall_syscall(flags) = syscall(152,flags)
          # Macro to call the `munlockall` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/munlockall.2.html
          def munlockall_syscall = syscall(153)
          # Macro to call the `sched_setparam` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] param
          # @see https://www.man7.org/linux/man-pages/man2/sched_setparam.2.html
          def sched_setparam_syscall(pid,param) = syscall(154,pid,param)
          # Macro to call the `sched_getparam` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] param
          # @see https://www.man7.org/linux/man-pages/man2/sched_getparam.2.html
          def sched_getparam_syscall(pid,param) = syscall(155,pid,param)
          # Macro to call the `sched_setscheduler` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] policy
          # @param [Register, Integer] param
          # @see https://www.man7.org/linux/man-pages/man2/sched_setscheduler.2.html
          def sched_setscheduler_syscall(pid,policy,param) = syscall(156,pid,policy,param)
          # Macro to call the `sched_getscheduler` syscall.
          # @param [Register, Integer] pid
          # @see https://www.man7.org/linux/man-pages/man2/sched_getscheduler.2.html
          def sched_getscheduler_syscall(pid) = syscall(157,pid)
          # Macro to call the `sched_yield` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sched_yield.2.html
          def sched_yield_syscall = syscall(158)
          # Macro to call the `sched_get_priority_max` syscall.
          # @param [Register, Integer] policy
          # @see https://www.man7.org/linux/man-pages/man2/sched_get_priority_max.2.html
          def sched_get_priority_max_syscall(policy) = syscall(159,policy)
          # Macro to call the `sched_get_priority_min` syscall.
          # @param [Register, Integer] policy
          # @see https://www.man7.org/linux/man-pages/man2/sched_get_priority_min.2.html
          def sched_get_priority_min_syscall(policy) = syscall(160,policy)
          # Macro to call the `sched_rr_get_interval` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] interval
          # @see https://www.man7.org/linux/man-pages/man2/sched_rr_get_interval.2.html
          def sched_rr_get_interval_syscall(pid,interval) = syscall(161,pid,interval)
          # Macro to call the `nanosleep` syscall.
          # @param [Register, Integer] rqtp
          # @param [Register, Integer] rmtp
          # @see https://www.man7.org/linux/man-pages/man2/nanosleep.2.html
          def nanosleep_syscall(rqtp,rmtp) = syscall(162,rqtp,rmtp)
          # Macro to call the `mremap` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] old_len
          # @param [Register, Integer] new_len
          # @param [Register, Integer] flags
          # @param [Register, Integer] new_addr
          # @see https://www.man7.org/linux/man-pages/man2/mremap.2.html
          def mremap_syscall(addr,old_len,new_len,flags,new_addr) = syscall(163,addr,old_len,new_len,flags,new_addr)
          # Macro to call the `setresuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setresuid.2.html
          def setresuid_syscall = syscall(164)
          # Macro to call the `getresuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getresuid.2.html
          def getresuid_syscall = syscall(165)
          # Macro to call the `vm86` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vm86.2.html
          def vm86_syscall = syscall(166)
          # Macro to call the `query_module` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/query_module.2.html
          def query_module_syscall = syscall(167)
          # Macro to call the `poll` syscall.
          # @param [Register, Integer] ufds
          # @param [Register, Integer] nfds
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/poll.2.html
          def poll_syscall(ufds,nfds,timeout) = syscall(168,ufds,nfds,timeout)
          # Macro to call the `nfsservctl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/nfsservctl.2.html
          def nfsservctl_syscall = syscall(169)
          # Macro to call the `setresgid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setresgid.2.html
          def setresgid_syscall = syscall(170)
          # Macro to call the `getresgid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getresgid.2.html
          def getresgid_syscall = syscall(171)
          # Macro to call the `prctl` syscall.
          # @param [Register, Integer] option
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/prctl.2.html
          def prctl_syscall(option,arg2,arg3,arg4,arg5) = syscall(172,option,arg2,arg3,arg4,arg5)
          # Macro to call the `rt_sigreturn` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigreturn.2.html
          def rt_sigreturn_syscall = syscall(173)
          # Macro to call the `rt_sigaction` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigaction.2.html
          def rt_sigaction_syscall(arg1,arg2,arg3,arg4) = syscall(174,arg1,arg2,arg3,arg4)
          # Macro to call the `rt_sigprocmask` syscall.
          # @param [Register, Integer] how
          # @param [Register, Integer] set
          # @param [Register, Integer] oset
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigprocmask.2.html
          def rt_sigprocmask_syscall(how,set,oset,sigsetsize) = syscall(175,how,set,oset,sigsetsize)
          # Macro to call the `rt_sigpending` syscall.
          # @param [Register, Integer] set
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigpending.2.html
          def rt_sigpending_syscall(set,sigsetsize) = syscall(176,set,sigsetsize)
          # Macro to call the `rt_sigtimedwait` syscall.
          # @param [Register, Integer] uthese
          # @param [Register, Integer] uinfo
          # @param [Register, Integer] uts
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigtimedwait.2.html
          def rt_sigtimedwait_syscall(uthese,uinfo,uts,sigsetsize) = syscall(177,uthese,uinfo,uts,sigsetsize)
          # Macro to call the `rt_sigqueueinfo` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @param [Register, Integer] uinfo
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigqueueinfo.2.html
          def rt_sigqueueinfo_syscall(pid,sig,uinfo) = syscall(178,pid,sig,uinfo)
          # Macro to call the `rt_sigsuspend` syscall.
          # @param [Register, Integer] unewset
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigsuspend.2.html
          def rt_sigsuspend_syscall(unewset,sigsetsize) = syscall(179,unewset,sigsetsize)
          # Macro to call the `pread64` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/pread64.2.html
          def pread64_syscall = syscall(180)
          # Macro to call the `pwrite64` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/pwrite64.2.html
          def pwrite64_syscall = syscall(181)
          # Macro to call the `chown` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/chown.2.html
          def chown_syscall = syscall(182)
          # Macro to call the `getcwd` syscall.
          # @param [Register, Integer] buf
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/getcwd.2.html
          def getcwd_syscall(buf,size) = syscall(183,buf,size)
          # Macro to call the `capget` syscall.
          # @param [Register, Integer] header
          # @param [Register, Integer] dataptr
          # @see https://www.man7.org/linux/man-pages/man2/capget.2.html
          def capget_syscall(header,dataptr) = syscall(184,header,dataptr)
          # Macro to call the `capset` syscall.
          # @param [Register, Integer] header
          # @param [Register, Integer] data
          # @see https://www.man7.org/linux/man-pages/man2/capset.2.html
          def capset_syscall(header,data) = syscall(185,header,data)
          # Macro to call the `sigaltstack` syscall.
          # @param [Register, Integer] uss
          # @param [Register, Integer] uoss
          # @see https://www.man7.org/linux/man-pages/man2/sigaltstack.2.html
          def sigaltstack_syscall(uss,uoss) = syscall(186,uss,uoss)
          # Macro to call the `sendfile` syscall.
          # @param [Register, Integer] out_fd
          # @param [Register, Integer] in_fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/sendfile.2.html
          def sendfile_syscall(out_fd,in_fd,offset,count) = syscall(187,out_fd,in_fd,offset,count)
          # Macro to call the `getpmsg` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getpmsg.2.html
          def getpmsg_syscall = syscall(188)
          # Macro to call the `putpmsg` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/putpmsg.2.html
          def putpmsg_syscall = syscall(189)
          # Macro to call the `vfork` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vfork.2.html
          def vfork_syscall = syscall(190)
          # Macro to call the `ugetrlimit` syscall.
          # @param [Register, Integer] resource
          # @param [Register, Integer] rlim
          # @see https://www.man7.org/linux/man-pages/man2/ugetrlimit.2.html
          def ugetrlimit_syscall(resource,rlim) = syscall(191,resource,rlim)
          # Macro to call the `mmap2` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @param [Register, Integer] prot
          # @param [Register, Integer] flags
          # @param [Register, Integer] fd
          # @param [Register, Integer] pgoff
          # @see https://www.man7.org/linux/man-pages/man2/mmap2.2.html
          def mmap2_syscall(addr,len,prot,flags,fd,pgoff) = syscall(192,addr,len,prot,flags,fd,pgoff)
          # Macro to call the `truncate64` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/truncate64.2.html
          def truncate64_syscall = syscall(193)
          # Macro to call the `ftruncate64` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/ftruncate64.2.html
          def ftruncate64_syscall = syscall(194)
          # Macro to call the `stat64` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/stat64.2.html
          def stat64_syscall(filename,statbuf) = syscall(195,filename,statbuf)
          # Macro to call the `lstat64` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/lstat64.2.html
          def lstat64_syscall(filename,statbuf) = syscall(196,filename,statbuf)
          # Macro to call the `fstat64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/fstat64.2.html
          def fstat64_syscall(fd,statbuf) = syscall(197,fd,statbuf)
          # Macro to call the `lchown32` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @see https://www.man7.org/linux/man-pages/man2/lchown32.2.html
          def lchown32_syscall(filename,user,group) = syscall(198,filename,user,group)
          # Macro to call the `getuid32` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getuid32.2.html
          def getuid32_syscall = syscall(199)
          # Macro to call the `getgid32` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getgid32.2.html
          def getgid32_syscall = syscall(200)
          # Macro to call the `geteuid32` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/geteuid32.2.html
          def geteuid32_syscall = syscall(201)
          # Macro to call the `getegid32` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getegid32.2.html
          def getegid32_syscall = syscall(202)
          # Macro to call the `setreuid32` syscall.
          # @param [Register, Integer] ruid
          # @param [Register, Integer] euid
          # @see https://www.man7.org/linux/man-pages/man2/setreuid32.2.html
          def setreuid32_syscall(ruid,euid) = syscall(203,ruid,euid)
          # Macro to call the `setregid32` syscall.
          # @param [Register, Integer] rgid
          # @param [Register, Integer] egid
          # @see https://www.man7.org/linux/man-pages/man2/setregid32.2.html
          def setregid32_syscall(rgid,egid) = syscall(204,rgid,egid)
          # Macro to call the `getgroups32` syscall.
          # @param [Register, Integer] gidsetsize
          # @param [Register, Integer] grouplist
          # @see https://www.man7.org/linux/man-pages/man2/getgroups32.2.html
          def getgroups32_syscall(gidsetsize,grouplist) = syscall(205,gidsetsize,grouplist)
          # Macro to call the `setgroups32` syscall.
          # @param [Register, Integer] gidsetsize
          # @param [Register, Integer] grouplist
          # @see https://www.man7.org/linux/man-pages/man2/setgroups32.2.html
          def setgroups32_syscall(gidsetsize,grouplist) = syscall(206,gidsetsize,grouplist)
          # Macro to call the `fchown32` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @see https://www.man7.org/linux/man-pages/man2/fchown32.2.html
          def fchown32_syscall(fd,user,group) = syscall(207,fd,user,group)
          # Macro to call the `setresuid32` syscall.
          # @param [Register, Integer] ruid
          # @param [Register, Integer] euid
          # @param [Register, Integer] suid
          # @see https://www.man7.org/linux/man-pages/man2/setresuid32.2.html
          def setresuid32_syscall(ruid,euid,suid) = syscall(208,ruid,euid,suid)
          # Macro to call the `getresuid32` syscall.
          # @param [Register, Integer] ruid
          # @param [Register, Integer] euid
          # @param [Register, Integer] suid
          # @see https://www.man7.org/linux/man-pages/man2/getresuid32.2.html
          def getresuid32_syscall(ruid,euid,suid) = syscall(209,ruid,euid,suid)
          # Macro to call the `setresgid32` syscall.
          # @param [Register, Integer] rgid
          # @param [Register, Integer] egid
          # @param [Register, Integer] sgid
          # @see https://www.man7.org/linux/man-pages/man2/setresgid32.2.html
          def setresgid32_syscall(rgid,egid,sgid) = syscall(210,rgid,egid,sgid)
          # Macro to call the `getresgid32` syscall.
          # @param [Register, Integer] rgid
          # @param [Register, Integer] egid
          # @param [Register, Integer] sgid
          # @see https://www.man7.org/linux/man-pages/man2/getresgid32.2.html
          def getresgid32_syscall(rgid,egid,sgid) = syscall(211,rgid,egid,sgid)
          # Macro to call the `chown32` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @see https://www.man7.org/linux/man-pages/man2/chown32.2.html
          def chown32_syscall(filename,user,group) = syscall(212,filename,user,group)
          # Macro to call the `setuid32` syscall.
          # @param [Register, Integer] uid
          # @see https://www.man7.org/linux/man-pages/man2/setuid32.2.html
          def setuid32_syscall(uid) = syscall(213,uid)
          # Macro to call the `setgid32` syscall.
          # @param [Register, Integer] gid
          # @see https://www.man7.org/linux/man-pages/man2/setgid32.2.html
          def setgid32_syscall(gid) = syscall(214,gid)
          # Macro to call the `setfsuid32` syscall.
          # @param [Register, Integer] uid
          # @see https://www.man7.org/linux/man-pages/man2/setfsuid32.2.html
          def setfsuid32_syscall(uid) = syscall(215,uid)
          # Macro to call the `setfsgid32` syscall.
          # @param [Register, Integer] gid
          # @see https://www.man7.org/linux/man-pages/man2/setfsgid32.2.html
          def setfsgid32_syscall(gid) = syscall(216,gid)
          # Macro to call the `pivot_root` syscall.
          # @param [Register, Integer] new_root
          # @param [Register, Integer] put_old
          # @see https://www.man7.org/linux/man-pages/man2/pivot_root.2.html
          def pivot_root_syscall(new_root,put_old) = syscall(217,new_root,put_old)
          # Macro to call the `mincore` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] vec
          # @see https://www.man7.org/linux/man-pages/man2/mincore.2.html
          def mincore_syscall(start,len,vec) = syscall(218,start,len,vec)
          # Macro to call the `madvise` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] behavior
          # @see https://www.man7.org/linux/man-pages/man2/madvise.2.html
          def madvise_syscall(start,len,behavior) = syscall(219,start,len,behavior)
          # Macro to call the `getdents64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] dirent
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/getdents64.2.html
          def getdents64_syscall(fd,dirent,count) = syscall(220,fd,dirent,count)
          # Macro to call the `fcntl64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/fcntl64.2.html
          def fcntl64_syscall(fd,cmd,arg) = syscall(221,fd,cmd,arg)
          # Macro to call the `gettid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/gettid.2.html
          def gettid_syscall = syscall(224)
          # Macro to call the `readahead` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/readahead.2.html
          def readahead_syscall = syscall(225)
          # Macro to call the `setxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/setxattr.2.html
          def setxattr_syscall(path,name,value,size,flags) = syscall(226,path,name,value,size,flags)
          # Macro to call the `lsetxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsetxattr.2.html
          def lsetxattr_syscall(path,name,value,size,flags) = syscall(227,path,name,value,size,flags)
          # Macro to call the `fsetxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fsetxattr.2.html
          def fsetxattr_syscall(fd,name,value,size,flags) = syscall(228,fd,name,value,size,flags)
          # Macro to call the `getxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/getxattr.2.html
          def getxattr_syscall(path,name,value,size) = syscall(229,path,name,value,size)
          # Macro to call the `lgetxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/lgetxattr.2.html
          def lgetxattr_syscall(path,name,value,size) = syscall(230,path,name,value,size)
          # Macro to call the `fgetxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/fgetxattr.2.html
          def fgetxattr_syscall(fd,name,value,size) = syscall(231,fd,name,value,size)
          # Macro to call the `listxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/listxattr.2.html
          def listxattr_syscall(path,list,size) = syscall(232,path,list,size)
          # Macro to call the `llistxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/llistxattr.2.html
          def llistxattr_syscall(path,list,size) = syscall(233,path,list,size)
          # Macro to call the `flistxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/flistxattr.2.html
          def flistxattr_syscall(fd,list,size) = syscall(234,fd,list,size)
          # Macro to call the `removexattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/removexattr.2.html
          def removexattr_syscall(path,name) = syscall(235,path,name)
          # Macro to call the `lremovexattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/lremovexattr.2.html
          def lremovexattr_syscall(path,name) = syscall(236,path,name)
          # Macro to call the `fremovexattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/fremovexattr.2.html
          def fremovexattr_syscall(fd,name) = syscall(237,fd,name)
          # Macro to call the `tkill` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/tkill.2.html
          def tkill_syscall(pid,sig) = syscall(238,pid,sig)
          # Macro to call the `sendfile64` syscall.
          # @param [Register, Integer] out_fd
          # @param [Register, Integer] in_fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/sendfile64.2.html
          def sendfile64_syscall(out_fd,in_fd,offset,count) = syscall(239,out_fd,in_fd,offset,count)
          # Macro to call the `futex` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] op
          # @param [Register, Integer] val
          # @param [Register, Integer] utime
          # @param [Register, Integer] uaddr2
          # @param [Register, Integer] val3
          # @see https://www.man7.org/linux/man-pages/man2/futex.2.html
          def futex_syscall(uaddr,op,val,utime,uaddr2,val3) = syscall(240,uaddr,op,val,utime,uaddr2,val3)
          # Macro to call the `sched_setaffinity` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] len
          # @param [Register, Integer] user_mask_ptr
          # @see https://www.man7.org/linux/man-pages/man2/sched_setaffinity.2.html
          def sched_setaffinity_syscall(pid,len,user_mask_ptr) = syscall(241,pid,len,user_mask_ptr)
          # Macro to call the `sched_getaffinity` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] len
          # @param [Register, Integer] user_mask_ptr
          # @see https://www.man7.org/linux/man-pages/man2/sched_getaffinity.2.html
          def sched_getaffinity_syscall(pid,len,user_mask_ptr) = syscall(242,pid,len,user_mask_ptr)
          # Macro to call the `set_thread_area` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/set_thread_area.2.html
          def set_thread_area_syscall = syscall(243)
          # Macro to call the `get_thread_area` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/get_thread_area.2.html
          def get_thread_area_syscall = syscall(244)
          # Macro to call the `io_setup` syscall.
          # @param [Register, Integer] nr_reqs
          # @param [Register, Integer] ctx
          # @see https://www.man7.org/linux/man-pages/man2/io_setup.2.html
          def io_setup_syscall(nr_reqs,ctx) = syscall(245,nr_reqs,ctx)
          # Macro to call the `io_destroy` syscall.
          # @param [Register, Integer] ctx
          # @see https://www.man7.org/linux/man-pages/man2/io_destroy.2.html
          def io_destroy_syscall(ctx) = syscall(246,ctx)
          # Macro to call the `io_getevents` syscall.
          # @param [Register, Integer] ctx_id
          # @param [Register, Integer] min_nr
          # @param [Register, Integer] nr
          # @param [Register, Integer] events
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/io_getevents.2.html
          def io_getevents_syscall(ctx_id,min_nr,nr,events,timeout) = syscall(247,ctx_id,min_nr,nr,events,timeout)
          # Macro to call the `io_submit` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/io_submit.2.html
          def io_submit_syscall(arg1,arg2,arg3) = syscall(248,arg1,arg2,arg3)
          # Macro to call the `io_cancel` syscall.
          # @param [Register, Integer] ctx_id
          # @param [Register, Integer] iocb
          # @param [Register, Integer] result
          # @see https://www.man7.org/linux/man-pages/man2/io_cancel.2.html
          def io_cancel_syscall(ctx_id,iocb,result) = syscall(249,ctx_id,iocb,result)
          # Macro to call the `fadvise64` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/fadvise64.2.html
          def fadvise64_syscall = syscall(250)
          # Macro to call the `exit_group` syscall.
          # @param [Register, Integer] error_code
          # @see https://www.man7.org/linux/man-pages/man2/exit_group.2.html
          def exit_group_syscall(error_code) = syscall(252,error_code)
          # Macro to call the `lookup_dcookie` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/lookup_dcookie.2.html
          def lookup_dcookie_syscall = syscall(253)
          # Macro to call the `epoll_create` syscall.
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/epoll_create.2.html
          def epoll_create_syscall(size) = syscall(254,size)
          # Macro to call the `epoll_ctl` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] op
          # @param [Register, Integer] fd
          # @param [Register, Integer] event
          # @see https://www.man7.org/linux/man-pages/man2/epoll_ctl.2.html
          def epoll_ctl_syscall(epfd,op,fd,event) = syscall(255,epfd,op,fd,event)
          # Macro to call the `epoll_wait` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] events
          # @param [Register, Integer] maxevents
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/epoll_wait.2.html
          def epoll_wait_syscall(epfd,events,maxevents,timeout) = syscall(256,epfd,events,maxevents,timeout)
          # Macro to call the `remap_file_pages` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] size
          # @param [Register, Integer] prot
          # @param [Register, Integer] pgoff
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/remap_file_pages.2.html
          def remap_file_pages_syscall(start,size,prot,pgoff,flags) = syscall(257,start,size,prot,pgoff,flags)
          # Macro to call the `set_tid_address` syscall.
          # @param [Register, Integer] tidptr
          # @see https://www.man7.org/linux/man-pages/man2/set_tid_address.2.html
          def set_tid_address_syscall(tidptr) = syscall(258,tidptr)
          # Macro to call the `timer_create` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] timer_event_spec
          # @param [Register, Integer] created_timer_id
          # @see https://www.man7.org/linux/man-pages/man2/timer_create.2.html
          def timer_create_syscall(which_clock,timer_event_spec,created_timer_id) = syscall(259,which_clock,timer_event_spec,created_timer_id)
          # Macro to call the `timer_settime` syscall.
          # @param [Register, Integer] timer_id
          # @param [Register, Integer] flags
          # @param [Register, Integer] new
          # @param [Register, Integer] old
          # @see https://www.man7.org/linux/man-pages/man2/timer_settime.2.html
          def timer_settime_syscall(timer_id,flags,new,old) = syscall(260,timer_id,flags,new,old)
          # Macro to call the `timer_gettime` syscall.
          # @param [Register, Integer] timer_id
          # @param [Register, Integer] setting
          # @see https://www.man7.org/linux/man-pages/man2/timer_gettime.2.html
          def timer_gettime_syscall(timer_id,setting) = syscall(261,timer_id,setting)
          # Macro to call the `timer_getoverrun` syscall.
          # @param [Register, Integer] timer_id
          # @see https://www.man7.org/linux/man-pages/man2/timer_getoverrun.2.html
          def timer_getoverrun_syscall(timer_id) = syscall(262,timer_id)
          # Macro to call the `timer_delete` syscall.
          # @param [Register, Integer] timer_id
          # @see https://www.man7.org/linux/man-pages/man2/timer_delete.2.html
          def timer_delete_syscall(timer_id) = syscall(263,timer_id)
          # Macro to call the `clock_settime` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_settime.2.html
          def clock_settime_syscall(which_clock,tp) = syscall(264,which_clock,tp)
          # Macro to call the `clock_gettime` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_gettime.2.html
          def clock_gettime_syscall(which_clock,tp) = syscall(265,which_clock,tp)
          # Macro to call the `clock_getres` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_getres.2.html
          def clock_getres_syscall(which_clock,tp) = syscall(266,which_clock,tp)
          # Macro to call the `clock_nanosleep` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] flags
          # @param [Register, Integer] rqtp
          # @param [Register, Integer] rmtp
          # @see https://www.man7.org/linux/man-pages/man2/clock_nanosleep.2.html
          def clock_nanosleep_syscall(which_clock,flags,rqtp,rmtp) = syscall(267,which_clock,flags,rqtp,rmtp)
          # Macro to call the `statfs64` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] sz
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/statfs64.2.html
          def statfs64_syscall(path,sz,buf) = syscall(268,path,sz,buf)
          # Macro to call the `fstatfs64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] sz
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/fstatfs64.2.html
          def fstatfs64_syscall(fd,sz,buf) = syscall(269,fd,sz,buf)
          # Macro to call the `tgkill` syscall.
          # @param [Register, Integer] tgid
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/tgkill.2.html
          def tgkill_syscall(tgid,pid,sig) = syscall(270,tgid,pid,sig)
          # Macro to call the `utimes` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] t
          # @see https://www.man7.org/linux/man-pages/man2/utimes.2.html
          def utimes_syscall(filename,t) = syscall(271,filename,t)
          # Macro to call the `fadvise64_64` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/fadvise64_64.2.html
          def fadvise64_64_syscall = syscall(272)
          # Macro to call the `vserver` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vserver.2.html
          def vserver_syscall = syscall(273)
          # Macro to call the `mbind` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] mode
          # @param [Register, Integer] nmask
          # @param [Register, Integer] maxnode
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mbind.2.html
          def mbind_syscall(start,len,mode,nmask,maxnode,flags) = syscall(274,start,len,mode,nmask,maxnode,flags)
          # Macro to call the `get_mempolicy` syscall.
          # @param [Register, Integer] policy
          # @param [Register, Integer] nmask
          # @param [Register, Integer] maxnode
          # @param [Register, Integer] addr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/get_mempolicy.2.html
          def get_mempolicy_syscall(policy,nmask,maxnode,addr,flags) = syscall(275,policy,nmask,maxnode,addr,flags)
          # Macro to call the `set_mempolicy` syscall.
          # @param [Register, Integer] mode
          # @param [Register, Integer] nmask
          # @param [Register, Integer] maxnode
          # @see https://www.man7.org/linux/man-pages/man2/set_mempolicy.2.html
          def set_mempolicy_syscall(mode,nmask,maxnode) = syscall(276,mode,nmask,maxnode)
          # Macro to call the `mq_open` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] oflag
          # @param [Register, Integer] mode
          # @param [Register, Integer] attr
          # @see https://www.man7.org/linux/man-pages/man2/mq_open.2.html
          def mq_open_syscall(name,oflag,mode,attr) = syscall(277,name,oflag,mode,attr)
          # Macro to call the `mq_unlink` syscall.
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/mq_unlink.2.html
          def mq_unlink_syscall(name) = syscall(278,name)
          # Macro to call the `mq_timedsend` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] u_msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] msg_prio
          # @param [Register, Integer] u_abs_timeout
          # @see https://www.man7.org/linux/man-pages/man2/mq_timedsend.2.html
          def mq_timedsend_syscall(mqdes,u_msg_ptr,msg_len,msg_prio,u_abs_timeout) = syscall(279,mqdes,u_msg_ptr,msg_len,msg_prio,u_abs_timeout)
          # Macro to call the `mq_timedreceive` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] u_msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] u_msg_prio
          # @param [Register, Integer] u_abs_timeout
          # @see https://www.man7.org/linux/man-pages/man2/mq_timedreceive.2.html
          def mq_timedreceive_syscall(mqdes,u_msg_ptr,msg_len,u_msg_prio,u_abs_timeout) = syscall(280,mqdes,u_msg_ptr,msg_len,u_msg_prio,u_abs_timeout)
          # Macro to call the `mq_notify` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] notification
          # @see https://www.man7.org/linux/man-pages/man2/mq_notify.2.html
          def mq_notify_syscall(mqdes,notification) = syscall(281,mqdes,notification)
          # Macro to call the `mq_getsetattr` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] mqstat
          # @param [Register, Integer] omqstat
          # @see https://www.man7.org/linux/man-pages/man2/mq_getsetattr.2.html
          def mq_getsetattr_syscall(mqdes,mqstat,omqstat) = syscall(282,mqdes,mqstat,omqstat)
          # Macro to call the `kexec_load` syscall.
          # @param [Register, Integer] entry
          # @param [Register, Integer] nr_segments
          # @param [Register, Integer] segments
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/kexec_load.2.html
          def kexec_load_syscall(entry,nr_segments,segments,flags) = syscall(283,entry,nr_segments,segments,flags)
          # Macro to call the `waitid` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] pid
          # @param [Register, Integer] infop
          # @param [Register, Integer] options
          # @param [Register, Integer] ru
          # @see https://www.man7.org/linux/man-pages/man2/waitid.2.html
          def waitid_syscall(which,pid,infop,options,ru) = syscall(284,which,pid,infop,options,ru)
          # Macro to call the `add_key` syscall.
          # @param [Register, Integer] _type
          # @param [Register, Integer] _description
          # @param [Register, Integer] _payload
          # @param [Register, Integer] plen
          # @param [Register, Integer] destringid
          # @see https://www.man7.org/linux/man-pages/man2/add_key.2.html
          def add_key_syscall(_type,_description,_payload,plen,destringid) = syscall(286,_type,_description,_payload,plen,destringid)
          # Macro to call the `request_key` syscall.
          # @param [Register, Integer] _type
          # @param [Register, Integer] _description
          # @param [Register, Integer] _callout_info
          # @param [Register, Integer] destringid
          # @see https://www.man7.org/linux/man-pages/man2/request_key.2.html
          def request_key_syscall(_type,_description,_callout_info,destringid) = syscall(287,_type,_description,_callout_info,destringid)
          # Macro to call the `keyctl` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/keyctl.2.html
          def keyctl_syscall(cmd,arg2,arg3,arg4,arg5) = syscall(288,cmd,arg2,arg3,arg4,arg5)
          # Macro to call the `ioprio_set` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @param [Register, Integer] ioprio
          # @see https://www.man7.org/linux/man-pages/man2/ioprio_set.2.html
          def ioprio_set_syscall(which,who,ioprio) = syscall(289,which,who,ioprio)
          # Macro to call the `ioprio_get` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @see https://www.man7.org/linux/man-pages/man2/ioprio_get.2.html
          def ioprio_get_syscall(which,who) = syscall(290,which,who)
          # Macro to call the `inotify_init` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/inotify_init.2.html
          def inotify_init_syscall = syscall(291)
          # Macro to call the `inotify_add_watch` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] mask
          # @see https://www.man7.org/linux/man-pages/man2/inotify_add_watch.2.html
          def inotify_add_watch_syscall(fd,path,mask) = syscall(292,fd,path,mask)
          # Macro to call the `inotify_rm_watch` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] wd
          # @see https://www.man7.org/linux/man-pages/man2/inotify_rm_watch.2.html
          def inotify_rm_watch_syscall(fd,wd) = syscall(293,fd,wd)
          # Macro to call the `migrate_pages` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] maxnode
          # @param [Register, Integer] from
          # @param [Register, Integer] to
          # @see https://www.man7.org/linux/man-pages/man2/migrate_pages.2.html
          def migrate_pages_syscall(pid,maxnode,from,to) = syscall(294,pid,maxnode,from,to)
          # Macro to call the `openat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] flags
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/openat.2.html
          def openat_syscall(dfd,filename,flags,mode) = syscall(295,dfd,filename,flags,mode)
          # Macro to call the `mkdirat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] pathname
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/mkdirat.2.html
          def mkdirat_syscall(dfd,pathname,mode) = syscall(296,dfd,pathname,mode)
          # Macro to call the `mknodat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] dev
          # @see https://www.man7.org/linux/man-pages/man2/mknodat.2.html
          def mknodat_syscall(dfd,filename,mode,dev) = syscall(297,dfd,filename,mode,dev)
          # Macro to call the `fchownat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/fchownat.2.html
          def fchownat_syscall(dfd,filename,user,group,flag) = syscall(298,dfd,filename,user,group,flag)
          # Macro to call the `futimesat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] t
          # @see https://www.man7.org/linux/man-pages/man2/futimesat.2.html
          def futimesat_syscall(dfd,filename,t) = syscall(299,dfd,filename,t)
          # Macro to call the `fstatat64` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/fstatat64.2.html
          def fstatat64_syscall(dfd,filename,statbuf,flag) = syscall(300,dfd,filename,statbuf,flag)
          # Macro to call the `unlinkat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] pathname
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/unlinkat.2.html
          def unlinkat_syscall(dfd,pathname,flag) = syscall(301,dfd,pathname,flag)
          # Macro to call the `renameat` syscall.
          # @param [Register, Integer] olddfd
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/renameat.2.html
          def renameat_syscall(olddfd,oldname,newdfd,newname) = syscall(302,olddfd,oldname,newdfd,newname)
          # Macro to call the `linkat` syscall.
          # @param [Register, Integer] olddfd
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/linkat.2.html
          def linkat_syscall(olddfd,oldname,newdfd,newname,flags) = syscall(303,olddfd,oldname,newdfd,newname,flags)
          # Macro to call the `symlinkat` syscall.
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/symlinkat.2.html
          def symlinkat_syscall(oldname,newdfd,newname) = syscall(304,oldname,newdfd,newname)
          # Macro to call the `readlinkat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @param [Register, Integer] bufsiz
          # @see https://www.man7.org/linux/man-pages/man2/readlinkat.2.html
          def readlinkat_syscall(dfd,path,buf,bufsiz) = syscall(305,dfd,path,buf,bufsiz)
          # Macro to call the `fchmodat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/fchmodat.2.html
          def fchmodat_syscall(dfd,filename,mode) = syscall(306,dfd,filename,mode)
          # Macro to call the `faccessat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/faccessat.2.html
          def faccessat_syscall(dfd,filename,mode) = syscall(307,dfd,filename,mode)
          # Macro to call the `pselect6` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @param [Register, Integer] arg6
          # @see https://www.man7.org/linux/man-pages/man2/pselect6.2.html
          def pselect6_syscall(arg1,arg2,arg3,arg4,arg5,arg6) = syscall(308,arg1,arg2,arg3,arg4,arg5,arg6)
          # Macro to call the `ppoll` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/ppoll.2.html
          def ppoll_syscall(arg1,arg2,arg3,arg4,arg5) = syscall(309,arg1,arg2,arg3,arg4,arg5)
          # Macro to call the `unshare` syscall.
          # @param [Register, Integer] unshare_flags
          # @see https://www.man7.org/linux/man-pages/man2/unshare.2.html
          def unshare_syscall(unshare_flags) = syscall(310,unshare_flags)
          # Macro to call the `set_robust_list` syscall.
          # @param [Register, Integer] head
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/set_robust_list.2.html
          def set_robust_list_syscall(head,len) = syscall(311,head,len)
          # Macro to call the `get_robust_list` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] head_ptr
          # @param [Register, Integer] len_ptr
          # @see https://www.man7.org/linux/man-pages/man2/get_robust_list.2.html
          def get_robust_list_syscall(pid,head_ptr,len_ptr) = syscall(312,pid,head_ptr,len_ptr)
          # Macro to call the `splice` syscall.
          # @param [Register, Integer] fd_in
          # @param [Register, Integer] off_in
          # @param [Register, Integer] fd_out
          # @param [Register, Integer] off_out
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/splice.2.html
          def splice_syscall(fd_in,off_in,fd_out,off_out,len,flags) = syscall(313,fd_in,off_in,fd_out,off_out,len,flags)
          # Macro to call the `sync_file_range` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sync_file_range.2.html
          def sync_file_range_syscall = syscall(314)
          # Macro to call the `tee` syscall.
          # @param [Register, Integer] fdin
          # @param [Register, Integer] fdout
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/tee.2.html
          def tee_syscall(fdin,fdout,len,flags) = syscall(315,fdin,fdout,len,flags)
          # Macro to call the `vmsplice` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] iov
          # @param [Register, Integer] nr_segs
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/vmsplice.2.html
          def vmsplice_syscall(fd,iov,nr_segs,flags) = syscall(316,fd,iov,nr_segs,flags)
          # Macro to call the `move_pages` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] nr_pages
          # @param [Register, Integer] pages
          # @param [Register, Integer] nodes
          # @param [Register, Integer] status
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/move_pages.2.html
          def move_pages_syscall(pid,nr_pages,pages,nodes,status,flags) = syscall(317,pid,nr_pages,pages,nodes,status,flags)
          # Macro to call the `getcpu` syscall.
          # @param [Register, Integer] cpu
          # @param [Register, Integer] node
          # @param [Register, Integer] cache
          # @see https://www.man7.org/linux/man-pages/man2/getcpu.2.html
          def getcpu_syscall(cpu,node,cache) = syscall(318,cpu,node,cache)
          # Macro to call the `epoll_pwait` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] events
          # @param [Register, Integer] maxevents
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sigmask
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/epoll_pwait.2.html
          def epoll_pwait_syscall(epfd,events,maxevents,timeout,sigmask,sigsetsize) = syscall(319,epfd,events,maxevents,timeout,sigmask,sigsetsize)
          # Macro to call the `utimensat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] t
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/utimensat.2.html
          def utimensat_syscall(dfd,filename,t,flags) = syscall(320,dfd,filename,t,flags)
          # Macro to call the `signalfd` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] user_mask
          # @param [Register, Integer] sizemask
          # @see https://www.man7.org/linux/man-pages/man2/signalfd.2.html
          def signalfd_syscall(ufd,user_mask,sizemask) = syscall(321,ufd,user_mask,sizemask)
          # Macro to call the `timerfd_create` syscall.
          # @param [Register, Integer] clockid
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_create.2.html
          def timerfd_create_syscall(clockid,flags) = syscall(322,clockid,flags)
          # Macro to call the `eventfd` syscall.
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/eventfd.2.html
          def eventfd_syscall(count) = syscall(323,count)
          # Macro to call the `fallocate` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/fallocate.2.html
          def fallocate_syscall = syscall(324)
          # Macro to call the `timerfd_settime` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] flags
          # @param [Register, Integer] utmr
          # @param [Register, Integer] otmr
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_settime.2.html
          def timerfd_settime_syscall(ufd,flags,utmr,otmr) = syscall(325,ufd,flags,utmr,otmr)
          # Macro to call the `timerfd_gettime` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] otmr
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_gettime.2.html
          def timerfd_gettime_syscall(ufd,otmr) = syscall(326,ufd,otmr)
          # Macro to call the `signalfd4` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] user_mask
          # @param [Register, Integer] sizemask
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/signalfd4.2.html
          def signalfd4_syscall(ufd,user_mask,sizemask,flags) = syscall(327,ufd,user_mask,sizemask,flags)
          # Macro to call the `eventfd2` syscall.
          # @param [Register, Integer] count
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/eventfd2.2.html
          def eventfd2_syscall(count,flags) = syscall(328,count,flags)
          # Macro to call the `epoll_create1` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/epoll_create1.2.html
          def epoll_create1_syscall(flags) = syscall(329,flags)
          # Macro to call the `dup3` syscall.
          # @param [Register, Integer] oldfd
          # @param [Register, Integer] newfd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/dup3.2.html
          def dup3_syscall(oldfd,newfd,flags) = syscall(330,oldfd,newfd,flags)
          # Macro to call the `pipe2` syscall.
          # @param [Register, Integer] fildes
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pipe2.2.html
          def pipe2_syscall(fildes,flags) = syscall(331,fildes,flags)
          # Macro to call the `inotify_init1` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/inotify_init1.2.html
          def inotify_init1_syscall(flags) = syscall(332,flags)
          # Macro to call the `preadv` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @see https://www.man7.org/linux/man-pages/man2/preadv.2.html
          def preadv_syscall(fd,vec,vlen,pos_l,pos_h) = syscall(333,fd,vec,vlen,pos_l,pos_h)
          # Macro to call the `pwritev` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @see https://www.man7.org/linux/man-pages/man2/pwritev.2.html
          def pwritev_syscall(fd,vec,vlen,pos_l,pos_h) = syscall(334,fd,vec,vlen,pos_l,pos_h)
          # Macro to call the `rt_tgsigqueueinfo` syscall.
          # @param [Register, Integer] tgid
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @param [Register, Integer] uinfo
          # @see https://www.man7.org/linux/man-pages/man2/rt_tgsigqueueinfo.2.html
          def rt_tgsigqueueinfo_syscall(tgid,pid,sig,uinfo) = syscall(335,tgid,pid,sig,uinfo)
          # Macro to call the `perf_event_open` syscall.
          # @param [Register, Integer] attr_uptr
          # @param [Register, Integer] pid
          # @param [Register, Integer] cpu
          # @param [Register, Integer] group_fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/perf_event_open.2.html
          def perf_event_open_syscall(attr_uptr,pid,cpu,group_fd,flags) = syscall(336,attr_uptr,pid,cpu,group_fd,flags)
          # Macro to call the `recvmmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] vlen
          # @param [Register, Integer] flags
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/recvmmsg.2.html
          def recvmmsg_syscall(fd,msg,vlen,flags,timeout) = syscall(337,fd,msg,vlen,flags,timeout)
          # Macro to call the `fanotify_init` syscall.
          # @param [Register, Integer] flags
          # @param [Register, Integer] event_f_flags
          # @see https://www.man7.org/linux/man-pages/man2/fanotify_init.2.html
          def fanotify_init_syscall(flags,event_f_flags) = syscall(338,flags,event_f_flags)
          # Macro to call the `fanotify_mark` syscall.
          # @param [Register, Integer] fanotify_fd
          # @param [Register, Integer] flags
          # @param [Register, Integer] mask
          # @param [Register, Integer] fd
          # @param [Register, Integer] pathname
          # @see https://www.man7.org/linux/man-pages/man2/fanotify_mark.2.html
          def fanotify_mark_syscall(fanotify_fd,flags,mask,fd,pathname) = syscall(339,fanotify_fd,flags,mask,fd,pathname)
          # Macro to call the `prlimit64` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] resource
          # @param [Register, Integer] new_rlim
          # @param [Register, Integer] old_rlim
          # @see https://www.man7.org/linux/man-pages/man2/prlimit64.2.html
          def prlimit64_syscall(pid,resource,new_rlim,old_rlim) = syscall(340,pid,resource,new_rlim,old_rlim)
          # Macro to call the `name_to_handle_at` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] name
          # @param [Register, Integer] handle
          # @param [Register, Integer] mnt_id
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/name_to_handle_at.2.html
          def name_to_handle_at_syscall(dfd,name,handle,mnt_id,flag) = syscall(341,dfd,name,handle,mnt_id,flag)
          # Macro to call the `open_by_handle_at` syscall.
          # @param [Register, Integer] mountdirfd
          # @param [Register, Integer] handle
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/open_by_handle_at.2.html
          def open_by_handle_at_syscall(mountdirfd,handle,flags) = syscall(342,mountdirfd,handle,flags)
          # Macro to call the `clock_adjtime` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tx
          # @see https://www.man7.org/linux/man-pages/man2/clock_adjtime.2.html
          def clock_adjtime_syscall(which_clock,tx) = syscall(343,which_clock,tx)
          # Macro to call the `syncfs` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/syncfs.2.html
          def syncfs_syscall(fd) = syscall(344,fd)
          # Macro to call the `sendmmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] vlen
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sendmmsg.2.html
          def sendmmsg_syscall(fd,msg,vlen,flags) = syscall(345,fd,msg,vlen,flags)
          # Macro to call the `setns` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] nstype
          # @see https://www.man7.org/linux/man-pages/man2/setns.2.html
          def setns_syscall(fd,nstype) = syscall(346,fd,nstype)
          # Macro to call the `process_vm_readv` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lvec
          # @param [Register, Integer] liovcnt
          # @param [Register, Integer] rvec
          # @param [Register, Integer] riovcnt
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_vm_readv.2.html
          def process_vm_readv_syscall(pid,lvec,liovcnt,rvec,riovcnt,flags) = syscall(347,pid,lvec,liovcnt,rvec,riovcnt,flags)
          # Macro to call the `process_vm_writev` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lvec
          # @param [Register, Integer] liovcnt
          # @param [Register, Integer] rvec
          # @param [Register, Integer] riovcnt
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_vm_writev.2.html
          def process_vm_writev_syscall(pid,lvec,liovcnt,rvec,riovcnt,flags) = syscall(348,pid,lvec,liovcnt,rvec,riovcnt,flags)
          # Macro to call the `kcmp` syscall.
          # @param [Register, Integer] pid1
          # @param [Register, Integer] pid2
          # @param [Register, Integer] type
          # @param [Register, Integer] idx1
          # @param [Register, Integer] idx2
          # @see https://www.man7.org/linux/man-pages/man2/kcmp.2.html
          def kcmp_syscall(pid1,pid2,type,idx1,idx2) = syscall(349,pid1,pid2,type,idx1,idx2)
          # Macro to call the `finit_module` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] uargs
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/finit_module.2.html
          def finit_module_syscall(fd,uargs,flags) = syscall(350,fd,uargs,flags)
          # Macro to call the `sched_setattr` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] attr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sched_setattr.2.html
          def sched_setattr_syscall(pid,attr,flags) = syscall(351,pid,attr,flags)
          # Macro to call the `sched_getattr` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] attr
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sched_getattr.2.html
          def sched_getattr_syscall(pid,attr,size,flags) = syscall(352,pid,attr,size,flags)
          # Macro to call the `renameat2` syscall.
          # @param [Register, Integer] olddfd
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/renameat2.2.html
          def renameat2_syscall(olddfd,oldname,newdfd,newname,flags) = syscall(353,olddfd,oldname,newdfd,newname,flags)
          # Macro to call the `seccomp` syscall.
          # @param [Register, Integer] op
          # @param [Register, Integer] flags
          # @param [Register, Integer] uargs
          # @see https://www.man7.org/linux/man-pages/man2/seccomp.2.html
          def seccomp_syscall(op,flags,uargs) = syscall(354,op,flags,uargs)
          # Macro to call the `getrandom` syscall.
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/getrandom.2.html
          def getrandom_syscall(buf,count,flags) = syscall(355,buf,count,flags)
          # Macro to call the `memfd_create` syscall.
          # @param [Register, Integer] uname_ptr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/memfd_create.2.html
          def memfd_create_syscall(uname_ptr,flags) = syscall(356,uname_ptr,flags)
          # Macro to call the `bpf` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] attr
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/bpf.2.html
          def bpf_syscall(cmd,attr,size) = syscall(357,cmd,attr,size)
          # Macro to call the `execveat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] argv
          # @param [Register, Integer] envp
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/execveat.2.html
          def execveat_syscall(dfd,filename,argv,envp,flags) = syscall(358,dfd,filename,argv,envp,flags)
          # Macro to call the `socket` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/socket.2.html
          def socket_syscall(arg1,arg2,arg3) = syscall(359,arg1,arg2,arg3)
          # Macro to call the `socketpair` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @see https://www.man7.org/linux/man-pages/man2/socketpair.2.html
          def socketpair_syscall(arg1,arg2,arg3,arg4) = syscall(360,arg1,arg2,arg3,arg4)
          # Macro to call the `bind` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/bind.2.html
          def bind_syscall(arg1,arg2,arg3) = syscall(361,arg1,arg2,arg3)
          # Macro to call the `connect` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/connect.2.html
          def connect_syscall(arg1,arg2,arg3) = syscall(362,arg1,arg2,arg3)
          # Macro to call the `listen` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @see https://www.man7.org/linux/man-pages/man2/listen.2.html
          def listen_syscall(arg1,arg2) = syscall(363,arg1,arg2)
          # Macro to call the `accept4` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @see https://www.man7.org/linux/man-pages/man2/accept4.2.html
          def accept4_syscall(arg1,arg2,arg3,arg4) = syscall(364,arg1,arg2,arg3,arg4)
          # Macro to call the `getsockopt` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] level
          # @param [Register, Integer] optname
          # @param [Register, Integer] optval
          # @param [Register, Integer] optlen
          # @see https://www.man7.org/linux/man-pages/man2/getsockopt.2.html
          def getsockopt_syscall(fd,level,optname,optval,optlen) = syscall(365,fd,level,optname,optval,optlen)
          # Macro to call the `setsockopt` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] level
          # @param [Register, Integer] optname
          # @param [Register, Integer] optval
          # @param [Register, Integer] optlen
          # @see https://www.man7.org/linux/man-pages/man2/setsockopt.2.html
          def setsockopt_syscall(fd,level,optname,optval,optlen) = syscall(366,fd,level,optname,optval,optlen)
          # Macro to call the `getsockname` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/getsockname.2.html
          def getsockname_syscall(arg1,arg2,arg3) = syscall(367,arg1,arg2,arg3)
          # Macro to call the `getpeername` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/getpeername.2.html
          def getpeername_syscall(arg1,arg2,arg3) = syscall(368,arg1,arg2,arg3)
          # Macro to call the `sendto` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @param [Register, Integer] arg6
          # @see https://www.man7.org/linux/man-pages/man2/sendto.2.html
          def sendto_syscall(arg1,arg2,arg3,arg4,arg5,arg6) = syscall(369,arg1,arg2,arg3,arg4,arg5,arg6)
          # Macro to call the `sendmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sendmsg.2.html
          def sendmsg_syscall(fd,msg,flags) = syscall(370,fd,msg,flags)
          # Macro to call the `recvfrom` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @param [Register, Integer] arg6
          # @see https://www.man7.org/linux/man-pages/man2/recvfrom.2.html
          def recvfrom_syscall(arg1,arg2,arg3,arg4,arg5,arg6) = syscall(371,arg1,arg2,arg3,arg4,arg5,arg6)
          # Macro to call the `recvmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/recvmsg.2.html
          def recvmsg_syscall(fd,msg,flags) = syscall(372,fd,msg,flags)
          # Macro to call the `shutdown` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @see https://www.man7.org/linux/man-pages/man2/shutdown.2.html
          def shutdown_syscall(arg1,arg2) = syscall(373,arg1,arg2)
          # Macro to call the `userfaultfd` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/userfaultfd.2.html
          def userfaultfd_syscall(flags) = syscall(374,flags)
          # Macro to call the `membarrier` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] flags
          # @param [Register, Integer] cpu_id
          # @see https://www.man7.org/linux/man-pages/man2/membarrier.2.html
          def membarrier_syscall(cmd,flags,cpu_id) = syscall(375,cmd,flags,cpu_id)
          # Macro to call the `mlock2` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mlock2.2.html
          def mlock2_syscall(start,len,flags) = syscall(376,start,len,flags)
          # Macro to call the `copy_file_range` syscall.
          # @param [Register, Integer] fd_in
          # @param [Register, Integer] off_in
          # @param [Register, Integer] fd_out
          # @param [Register, Integer] off_out
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/copy_file_range.2.html
          def copy_file_range_syscall(fd_in,off_in,fd_out,off_out,len,flags) = syscall(377,fd_in,off_in,fd_out,off_out,len,flags)
          # Macro to call the `preadv2` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/preadv2.2.html
          def preadv2_syscall(fd,vec,vlen,pos_l,pos_h,flags) = syscall(378,fd,vec,vlen,pos_l,pos_h,flags)
          # Macro to call the `pwritev2` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pwritev2.2.html
          def pwritev2_syscall(fd,vec,vlen,pos_l,pos_h,flags) = syscall(379,fd,vec,vlen,pos_l,pos_h,flags)
          # Macro to call the `pkey_mprotect` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] prot
          # @param [Register, Integer] pkey
          # @see https://www.man7.org/linux/man-pages/man2/pkey_mprotect.2.html
          def pkey_mprotect_syscall(start,len,prot,pkey) = syscall(380,start,len,prot,pkey)
          # Macro to call the `pkey_alloc` syscall.
          # @param [Register, Integer] flags
          # @param [Register, Integer] init_val
          # @see https://www.man7.org/linux/man-pages/man2/pkey_alloc.2.html
          def pkey_alloc_syscall(flags,init_val) = syscall(381,flags,init_val)
          # Macro to call the `pkey_free` syscall.
          # @param [Register, Integer] pkey
          # @see https://www.man7.org/linux/man-pages/man2/pkey_free.2.html
          def pkey_free_syscall(pkey) = syscall(382,pkey)
          # Macro to call the `statx` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @param [Register, Integer] mask
          # @param [Register, Integer] buffer
          # @see https://www.man7.org/linux/man-pages/man2/statx.2.html
          def statx_syscall(dfd,path,flags,mask,buffer) = syscall(383,dfd,path,flags,mask,buffer)
          # Macro to call the `arch_prctl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/arch_prctl.2.html
          def arch_prctl_syscall = syscall(384)
          # Macro to call the `io_pgetevents` syscall.
          # @param [Register, Integer] ctx_id
          # @param [Register, Integer] min_nr
          # @param [Register, Integer] nr
          # @param [Register, Integer] events
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/io_pgetevents.2.html
          def io_pgetevents_syscall(ctx_id,min_nr,nr,events,timeout,sig) = syscall(385,ctx_id,min_nr,nr,events,timeout,sig)
          # Macro to call the `rseq` syscall.
          # @param [Register, Integer] rseq
          # @param [Register, Integer] rseq_len
          # @param [Register, Integer] flags
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/rseq.2.html
          def rseq_syscall(rseq,rseq_len,flags,sig) = syscall(386,rseq,rseq_len,flags,sig)
          # Macro to call the `semget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] nsems
          # @param [Register, Integer] semflg
          # @see https://www.man7.org/linux/man-pages/man2/semget.2.html
          def semget_syscall(key,nsems,semflg) = syscall(393,key,nsems,semflg)
          # Macro to call the `semctl` syscall.
          # @param [Register, Integer] semid
          # @param [Register, Integer] semnum
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/semctl.2.html
          def semctl_syscall(semid,semnum,cmd,arg) = syscall(394,semid,semnum,cmd,arg)
          # Macro to call the `shmget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] size
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/shmget.2.html
          def shmget_syscall(key,size,flag) = syscall(395,key,size,flag)
          # Macro to call the `shmctl` syscall.
          # @param [Register, Integer] shmid
          # @param [Register, Integer] cmd
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/shmctl.2.html
          def shmctl_syscall(shmid,cmd,buf) = syscall(396,shmid,cmd,buf)
          # Macro to call the `shmat` syscall.
          # @param [Register, Integer] shmid
          # @param [Register, Integer] shmaddr
          # @param [Register, Integer] shmflg
          # @see https://www.man7.org/linux/man-pages/man2/shmat.2.html
          def shmat_syscall(shmid,shmaddr,shmflg) = syscall(397,shmid,shmaddr,shmflg)
          # Macro to call the `shmdt` syscall.
          # @param [Register, Integer] shmaddr
          # @see https://www.man7.org/linux/man-pages/man2/shmdt.2.html
          def shmdt_syscall(shmaddr) = syscall(398,shmaddr)
          # Macro to call the `msgget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] msgflg
          # @see https://www.man7.org/linux/man-pages/man2/msgget.2.html
          def msgget_syscall(key,msgflg) = syscall(399,key,msgflg)
          # Macro to call the `msgsnd` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] msgp
          # @param [Register, Integer] msgsz
          # @param [Register, Integer] msgflg
          # @see https://www.man7.org/linux/man-pages/man2/msgsnd.2.html
          def msgsnd_syscall(msqid,msgp,msgsz,msgflg) = syscall(400,msqid,msgp,msgsz,msgflg)
          # Macro to call the `msgrcv` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] msgp
          # @param [Register, Integer] msgsz
          # @param [Register, Integer] msgtyp
          # @param [Register, Integer] msgflg
          # @see https://www.man7.org/linux/man-pages/man2/msgrcv.2.html
          def msgrcv_syscall(msqid,msgp,msgsz,msgtyp,msgflg) = syscall(401,msqid,msgp,msgsz,msgtyp,msgflg)
          # Macro to call the `msgctl` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] cmd
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/msgctl.2.html
          def msgctl_syscall(msqid,cmd,buf) = syscall(402,msqid,cmd,buf)
          # Macro to call the `clock_gettime64` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_gettime64.2.html
          def clock_gettime64_syscall(which_clock,tp) = syscall(403,which_clock,tp)
          # Macro to call the `clock_settime64` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_settime64.2.html
          def clock_settime64_syscall(which_clock,tp) = syscall(404,which_clock,tp)
          # Macro to call the `clock_adjtime64` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tx
          # @see https://www.man7.org/linux/man-pages/man2/clock_adjtime64.2.html
          def clock_adjtime64_syscall(which_clock,tx) = syscall(405,which_clock,tx)
          # Macro to call the `clock_getres_time64` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_getres_time64.2.html
          def clock_getres_time64_syscall(which_clock,tp) = syscall(406,which_clock,tp)
          # Macro to call the `clock_nanosleep_time64` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] flags
          # @param [Register, Integer] rqtp
          # @param [Register, Integer] rmtp
          # @see https://www.man7.org/linux/man-pages/man2/clock_nanosleep_time64.2.html
          def clock_nanosleep_time64_syscall(which_clock,flags,rqtp,rmtp) = syscall(407,which_clock,flags,rqtp,rmtp)
          # Macro to call the `timer_gettime64` syscall.
          # @param [Register, Integer] timer_id
          # @param [Register, Integer] setting
          # @see https://www.man7.org/linux/man-pages/man2/timer_gettime64.2.html
          def timer_gettime64_syscall(timer_id,setting) = syscall(408,timer_id,setting)
          # Macro to call the `timer_settime64` syscall.
          # @param [Register, Integer] timer_id
          # @param [Register, Integer] flags
          # @param [Register, Integer] new_setting
          # @param [Register, Integer] old_setting
          # @see https://www.man7.org/linux/man-pages/man2/timer_settime64.2.html
          def timer_settime64_syscall(timer_id,flags,new_setting,old_setting) = syscall(409,timer_id,flags,new_setting,old_setting)
          # Macro to call the `timerfd_gettime64` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] otmr
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_gettime64.2.html
          def timerfd_gettime64_syscall(ufd,otmr) = syscall(410,ufd,otmr)
          # Macro to call the `timerfd_settime64` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] flags
          # @param [Register, Integer] utmr
          # @param [Register, Integer] otmr
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_settime64.2.html
          def timerfd_settime64_syscall(ufd,flags,utmr,otmr) = syscall(411,ufd,flags,utmr,otmr)
          # Macro to call the `utimensat_time64` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] utimes
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/utimensat_time64.2.html
          def utimensat_time64_syscall(dfd,filename,utimes,flags) = syscall(412,dfd,filename,utimes,flags)
          # Macro to call the `pselect6_time64` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @param [Register, Integer] arg6
          # @see https://www.man7.org/linux/man-pages/man2/pselect6_time64.2.html
          def pselect6_time64_syscall(arg1,arg2,arg3,arg4,arg5,arg6) = syscall(413,arg1,arg2,arg3,arg4,arg5,arg6)
          # Macro to call the `ppoll_time64` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/ppoll_time64.2.html
          def ppoll_time64_syscall(arg1,arg2,arg3,arg4,arg5) = syscall(414,arg1,arg2,arg3,arg4,arg5)
          # Macro to call the `io_pgetevents_time64` syscall.
          # @param [Register, Integer] ctx_id
          # @param [Register, Integer] min_nr
          # @param [Register, Integer] nr
          # @param [Register, Integer] events
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/io_pgetevents_time64.2.html
          def io_pgetevents_time64_syscall(ctx_id,min_nr,nr,events,timeout,sig) = syscall(416,ctx_id,min_nr,nr,events,timeout,sig)
          # Macro to call the `recvmmsg_time64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] vlen
          # @param [Register, Integer] flags
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/recvmmsg_time64.2.html
          def recvmmsg_time64_syscall(fd,msg,vlen,flags,timeout) = syscall(417,fd,msg,vlen,flags,timeout)
          # Macro to call the `mq_timedsend_time64` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] msg_prio
          # @param [Register, Integer] abs_timeout
          # @see https://www.man7.org/linux/man-pages/man2/mq_timedsend_time64.2.html
          def mq_timedsend_time64_syscall(mqdes,msg_ptr,msg_len,msg_prio,abs_timeout) = syscall(418,mqdes,msg_ptr,msg_len,msg_prio,abs_timeout)
          # Macro to call the `mq_timedreceive_time64` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] msg_prio
          # @param [Register, Integer] abs_timeout
          # @see https://www.man7.org/linux/man-pages/man2/mq_timedreceive_time64.2.html
          def mq_timedreceive_time64_syscall(mqdes,msg_ptr,msg_len,msg_prio,abs_timeout) = syscall(419,mqdes,msg_ptr,msg_len,msg_prio,abs_timeout)
          # Macro to call the `semtimedop_time64` syscall.
          # @param [Register, Integer] semid
          # @param [Register, Integer] sops
          # @param [Register, Integer] nsops
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/semtimedop_time64.2.html
          def semtimedop_time64_syscall(semid,sops,nsops,timeout) = syscall(420,semid,sops,nsops,timeout)
          # Macro to call the `rt_sigtimedwait_time64` syscall.
          # @param [Register, Integer] uthese
          # @param [Register, Integer] uinfo
          # @param [Register, Integer] uts
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigtimedwait_time64.2.html
          def rt_sigtimedwait_time64_syscall(uthese,uinfo,uts,sigsetsize) = syscall(421,uthese,uinfo,uts,sigsetsize)
          # Macro to call the `futex_time64` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] op
          # @param [Register, Integer] val
          # @param [Register, Integer] utime
          # @param [Register, Integer] uaddr2
          # @param [Register, Integer] val3
          # @see https://www.man7.org/linux/man-pages/man2/futex_time64.2.html
          def futex_time64_syscall(uaddr,op,val,utime,uaddr2,val3) = syscall(422,uaddr,op,val,utime,uaddr2,val3)
          # Macro to call the `sched_rr_get_interval_time64` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] interval
          # @see https://www.man7.org/linux/man-pages/man2/sched_rr_get_interval_time64.2.html
          def sched_rr_get_interval_time64_syscall(pid,interval) = syscall(423,pid,interval)
          # Macro to call the `pidfd_send_signal` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] sig
          # @param [Register, Integer] info
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pidfd_send_signal.2.html
          def pidfd_send_signal_syscall(pidfd,sig,info,flags) = syscall(424,pidfd,sig,info,flags)
          # Macro to call the `io_uring_setup` syscall.
          # @param [Register, Integer] entries
          # @param [Register, Integer] p
          # @see https://www.man7.org/linux/man-pages/man2/io_uring_setup.2.html
          def io_uring_setup_syscall(entries,p) = syscall(425,entries,p)
          # Macro to call the `io_uring_enter` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] to_submit
          # @param [Register, Integer] min_complete
          # @param [Register, Integer] flags
          # @param [Register, Integer] argp
          # @param [Register, Integer] argsz
          # @see https://www.man7.org/linux/man-pages/man2/io_uring_enter.2.html
          def io_uring_enter_syscall(fd,to_submit,min_complete,flags,argp,argsz) = syscall(426,fd,to_submit,min_complete,flags,argp,argsz)
          # Macro to call the `io_uring_register` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] op
          # @param [Register, Integer] arg
          # @param [Register, Integer] nr_args
          # @see https://www.man7.org/linux/man-pages/man2/io_uring_register.2.html
          def io_uring_register_syscall(fd,op,arg,nr_args) = syscall(427,fd,op,arg,nr_args)
          # Macro to call the `open_tree` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/open_tree.2.html
          def open_tree_syscall(dfd,path,flags) = syscall(428,dfd,path,flags)
          # Macro to call the `move_mount` syscall.
          # @param [Register, Integer] from_dfd
          # @param [Register, Integer] from_path
          # @param [Register, Integer] to_dfd
          # @param [Register, Integer] to_path
          # @param [Register, Integer] ms_flags
          # @see https://www.man7.org/linux/man-pages/man2/move_mount.2.html
          def move_mount_syscall(from_dfd,from_path,to_dfd,to_path,ms_flags) = syscall(429,from_dfd,from_path,to_dfd,to_path,ms_flags)
          # Macro to call the `fsopen` syscall.
          # @param [Register, Integer] fs_name
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fsopen.2.html
          def fsopen_syscall(fs_name,flags) = syscall(430,fs_name,flags)
          # Macro to call the `fsconfig` syscall.
          # @param [Register, Integer] fs_fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] key
          # @param [Register, Integer] value
          # @param [Register, Integer] aux
          # @see https://www.man7.org/linux/man-pages/man2/fsconfig.2.html
          def fsconfig_syscall(fs_fd,cmd,key,value,aux) = syscall(431,fs_fd,cmd,key,value,aux)
          # Macro to call the `fsmount` syscall.
          # @param [Register, Integer] fs_fd
          # @param [Register, Integer] flags
          # @param [Register, Integer] ms_flags
          # @see https://www.man7.org/linux/man-pages/man2/fsmount.2.html
          def fsmount_syscall(fs_fd,flags,ms_flags) = syscall(432,fs_fd,flags,ms_flags)
          # Macro to call the `fspick` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fspick.2.html
          def fspick_syscall(dfd,path,flags) = syscall(433,dfd,path,flags)
          # Macro to call the `pidfd_open` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pidfd_open.2.html
          def pidfd_open_syscall(pid,flags) = syscall(434,pid,flags)
          # Macro to call the `clone3` syscall.
          # @param [Register, Integer] uargs
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/clone3.2.html
          def clone3_syscall(uargs,size) = syscall(435,uargs,size)
          # Macro to call the `close_range` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] max_fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/close_range.2.html
          def close_range_syscall(fd,max_fd,flags) = syscall(436,fd,max_fd,flags)
          # Macro to call the `openat2` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] how
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/openat2.2.html
          def openat2_syscall(dfd,filename,how,size) = syscall(437,dfd,filename,how,size)
          # Macro to call the `pidfd_getfd` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pidfd_getfd.2.html
          def pidfd_getfd_syscall(pidfd,fd,flags) = syscall(438,pidfd,fd,flags)
          # Macro to call the `faccessat2` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/faccessat2.2.html
          def faccessat2_syscall(dfd,filename,mode,flags) = syscall(439,dfd,filename,mode,flags)
          # Macro to call the `process_madvise` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] behavior
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_madvise.2.html
          def process_madvise_syscall(pidfd,vec,vlen,behavior,flags) = syscall(440,pidfd,vec,vlen,behavior,flags)
          # Macro to call the `epoll_pwait2` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] events
          # @param [Register, Integer] maxevents
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sigmask
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/epoll_pwait2.2.html
          def epoll_pwait2_syscall(epfd,events,maxevents,timeout,sigmask,sigsetsize) = syscall(441,epfd,events,maxevents,timeout,sigmask,sigsetsize)
          # Macro to call the `mount_setattr` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @param [Register, Integer] uattr
          # @param [Register, Integer] usize
          # @see https://www.man7.org/linux/man-pages/man2/mount_setattr.2.html
          def mount_setattr_syscall(dfd,path,flags,uattr,usize) = syscall(442,dfd,path,flags,uattr,usize)
          # Macro to call the `quotactl_fd` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] id
          # @param [Register, Integer] addr
          # @see https://www.man7.org/linux/man-pages/man2/quotactl_fd.2.html
          def quotactl_fd_syscall(fd,cmd,id,addr) = syscall(443,fd,cmd,id,addr)
          # Macro to call the `landlock_create_ruleset` syscall.
          # @param [Register, Integer] attr
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/landlock_create_ruleset.2.html
          def landlock_create_ruleset_syscall(attr,size,flags) = syscall(444,attr,size,flags)
          # Macro to call the `landlock_add_rule` syscall.
          # @param [Register, Integer] ruleset_fd
          # @param [Register, Integer] rule_type
          # @param [Register, Integer] rule_attr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/landlock_add_rule.2.html
          def landlock_add_rule_syscall(ruleset_fd,rule_type,rule_attr,flags) = syscall(445,ruleset_fd,rule_type,rule_attr,flags)
          # Macro to call the `landlock_restrict_self` syscall.
          # @param [Register, Integer] ruleset_fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/landlock_restrict_self.2.html
          def landlock_restrict_self_syscall(ruleset_fd,flags) = syscall(446,ruleset_fd,flags)
          # Macro to call the `memfd_secret` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/memfd_secret.2.html
          def memfd_secret_syscall(flags) = syscall(447,flags)
          # Macro to call the `process_mrelease` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_mrelease.2.html
          def process_mrelease_syscall(pidfd,flags) = syscall(448,pidfd,flags)
          # Macro to call the `futex_waitv` syscall.
          # @param [Register, Integer] waiters
          # @param [Register, Integer] nr_futexes
          # @param [Register, Integer] flags
          # @param [Register, Integer] timeout
          # @param [Register, Integer] clockid
          # @see https://www.man7.org/linux/man-pages/man2/futex_waitv.2.html
          def futex_waitv_syscall(waiters,nr_futexes,flags,timeout,clockid) = syscall(449,waiters,nr_futexes,flags,timeout,clockid)
          # Macro to call the `set_mempolicy_home_node` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] home_node
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/set_mempolicy_home_node.2.html
          def set_mempolicy_home_node_syscall(start,len,home_node,flags) = syscall(450,start,len,home_node,flags)
          # Macro to call the `cachestat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cstat_range
          # @param [Register, Integer] cstat
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/cachestat.2.html
          def cachestat_syscall(fd,cstat_range,cstat,flags) = syscall(451,fd,cstat_range,cstat,flags)
          # Macro to call the `fchmodat2` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fchmodat2.2.html
          def fchmodat2_syscall(dfd,filename,mode,flags) = syscall(452,dfd,filename,mode,flags)
          # Macro to call the `map_shadow_stack` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/map_shadow_stack.2.html
          def map_shadow_stack_syscall(addr,size,flags) = syscall(453,addr,size,flags)
          # Macro to call the `futex_wake` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] mask
          # @param [Register, Integer] nr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/futex_wake.2.html
          def futex_wake_syscall(uaddr,mask,nr,flags) = syscall(454,uaddr,mask,nr,flags)
          # Macro to call the `futex_wait` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] val
          # @param [Register, Integer] mask
          # @param [Register, Integer] flags
          # @param [Register, Integer] timespec
          # @param [Register, Integer] clockid
          # @see https://www.man7.org/linux/man-pages/man2/futex_wait.2.html
          def futex_wait_syscall(uaddr,val,mask,flags,timespec,clockid) = syscall(455,uaddr,val,mask,flags,timespec,clockid)
          # Macro to call the `futex_requeue` syscall.
          # @param [Register, Integer] waiters
          # @param [Register, Integer] flags
          # @param [Register, Integer] nr_wake
          # @param [Register, Integer] nr_requeue
          # @see https://www.man7.org/linux/man-pages/man2/futex_requeue.2.html
          def futex_requeue_syscall(waiters,flags,nr_wake,nr_requeue) = syscall(456,waiters,flags,nr_wake,nr_requeue)
          # Macro to call the `statmount` syscall.
          # @param [Register, Integer] req
          # @param [Register, Integer] buf
          # @param [Register, Integer] bufsize
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/statmount.2.html
          def statmount_syscall(req,buf,bufsize,flags) = syscall(457,req,buf,bufsize,flags)
          # Macro to call the `listmount` syscall.
          # @param [Register, Integer] req
          # @param [Register, Integer] mnt_ids
          # @param [Register, Integer] nr_mnt_ids
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/listmount.2.html
          def listmount_syscall(req,mnt_ids,nr_mnt_ids,flags) = syscall(458,req,mnt_ids,nr_mnt_ids,flags)
          # Macro to call the `lsm_get_self_attr` syscall.
          # @param [Register, Integer] attr
          # @param [Register, Integer] ctx
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsm_get_self_attr.2.html
          def lsm_get_self_attr_syscall(attr,ctx,size,flags) = syscall(459,attr,ctx,size,flags)
          # Macro to call the `lsm_set_self_attr` syscall.
          # @param [Register, Integer] attr
          # @param [Register, Integer] ctx
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsm_set_self_attr.2.html
          def lsm_set_self_attr_syscall(attr,ctx,size,flags) = syscall(460,attr,ctx,size,flags)
          # Macro to call the `lsm_list_modules` syscall.
          # @param [Register, Integer] ids
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsm_list_modules.2.html
          def lsm_list_modules_syscall(ids,size,flags) = syscall(461,ids,size,flags)
          # Macro to call the `mseal` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mseal.2.html
          def mseal_syscall(start,len,flags) = syscall(462,start,len,flags)
          # Macro to call the `setxattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] name
          # @param [Register, Integer] args
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/setxattrat.2.html
          def setxattrat_syscall(dfd,path,at_flags,name,args,size) = syscall(463,dfd,path,at_flags,name,args,size)
          # Macro to call the `getxattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] name
          # @param [Register, Integer] args
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/getxattrat.2.html
          def getxattrat_syscall(dfd,path,at_flags,name,args,size) = syscall(464,dfd,path,at_flags,name,args,size)
          # Macro to call the `listxattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/listxattrat.2.html
          def listxattrat_syscall(dfd,path,at_flags,list,size) = syscall(465,dfd,path,at_flags,list,size)
          # Macro to call the `removexattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/removexattrat.2.html
          def removexattrat_syscall(dfd,path,at_flags,name) = syscall(466,dfd,path,at_flags,name)
          # Macro to call the `open_tree_attr` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @param [Register, Integer] uattr
          # @param [Register, Integer] usize
          # @see https://www.man7.org/linux/man-pages/man2/open_tree_attr.2.html
          def open_tree_attr_syscall(dfd,path,flags,uattr,usize) = syscall(467,dfd,path,flags,uattr,usize)
        end
      end
    end
  end
end
