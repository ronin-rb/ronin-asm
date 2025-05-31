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
      #
      # macOS syscall macros.
      #
      # @since 1.0.0
      #
      module MacOS
        # Macro to call the `exit` syscall.
        # @param [Register, Integer] rval
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/exit.2.html
        def exit_syscall(rval) = syscall(1,rval)
        # Macro to call the `fork` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fork.2.html
        def fork_syscall = syscall(2)
        # Macro to call the `open` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/open.2.html
        def open_syscall(path,flags,mode) = syscall(5,path,flags,mode)
        # Macro to call the `sys_close` syscall.
        # @param [Register, Integer] fd
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_close.2.html
        def sys_close_syscall(fd) = syscall(6,fd)
        # Macro to call the `wait4` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] status
        # @param [Register, Integer] options
        # @param [Register, Integer] rusage
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/wait4.2.html
        def wait4_syscall(pid,status,options,rusage) = syscall(7,pid,status,options,rusage)
        # Macro to call the `link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] link
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/link.2.html
        def link_syscall(path,link) = syscall(9,path,link)
        # Macro to call the `unlink` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/unlink.2.html
        def unlink_syscall(path) = syscall(10,path)
        # Macro to call the `sys_chdir` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_chdir.2.html
        def sys_chdir_syscall(path) = syscall(12,path)
        # Macro to call the `sys_fchdir` syscall.
        # @param [Register, Integer] fd
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fchdir.2.html
        def sys_fchdir_syscall(fd) = syscall(13,fd)
        # Macro to call the `mknod` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] dev
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mknod.2.html
        def mknod_syscall(path,mode,dev) = syscall(14,path,mode,dev)
        # Macro to call the `chmod` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/chmod.2.html
        def chmod_syscall(path,mode) = syscall(15,path,mode)
        # Macro to call the `chown` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/chown.2.html
        def chown_syscall(path,uid,gid) = syscall(16,path,uid,gid)
        # Macro to call the `getfsstat` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getfsstat.2.html
        def getfsstat_syscall(buf,bufsize,flags) = syscall(18,buf,bufsize,flags)
        # Macro to call the `getpid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getpid.2.html
        def getpid_syscall = syscall(20)
        # Macro to call the `setuid` syscall.
        # @param [Register, Integer] uid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setuid.2.html
        def setuid_syscall(uid) = syscall(23,uid)
        # Macro to call the `getuid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getuid.2.html
        def getuid_syscall = syscall(24)
        # Macro to call the `geteuid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/geteuid.2.html
        def geteuid_syscall = syscall(25)
        # Macro to call the `ptrace` syscall.
        # @param [Register, Integer] req
        # @param [Register, Integer] pid
        # @param [Register, Integer] addr
        # @param [Register, Integer] data
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/ptrace.2.html
        def ptrace_syscall(req,pid,addr,data) = syscall(26,req,pid,addr,data)
        # Macro to call the `recvmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/recvmsg.2.html
        def recvmsg_syscall(s,msg,flags) = syscall(27,s,msg,flags)
        # Macro to call the `sendmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sendmsg.2.html
        def sendmsg_syscall(s,msg,flags) = syscall(28,s,msg,flags)
        # Macro to call the `recvfrom` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] from
        # @param [Register, Integer] fromlenaddr
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/recvfrom.2.html
        def recvfrom_syscall(s,buf,len,flags,from,fromlenaddr) = syscall(29,s,buf,len,flags,from,fromlenaddr)
        # Macro to call the `accept` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] anamelen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/accept.2.html
        def accept_syscall(s,name,anamelen) = syscall(30,s,name,anamelen)
        # Macro to call the `getpeername` syscall.
        # @param [Register, Integer] fdes
        # @param [Register, Integer] asa
        # @param [Register, Integer] alen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getpeername.2.html
        def getpeername_syscall(fdes,asa,alen) = syscall(31,fdes,asa,alen)
        # Macro to call the `getsockname` syscall.
        # @param [Register, Integer] fdes
        # @param [Register, Integer] asa
        # @param [Register, Integer] alen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getsockname.2.html
        def getsockname_syscall(fdes,asa,alen) = syscall(32,fdes,asa,alen)
        # Macro to call the `access` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/access.2.html
        def access_syscall(path,flags) = syscall(33,path,flags)
        # Macro to call the `chflags` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/chflags.2.html
        def chflags_syscall(path,flags) = syscall(34,path,flags)
        # Macro to call the `fchflags` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fchflags.2.html
        def fchflags_syscall(fd,flags) = syscall(35,fd,flags)
        # Macro to call the `sync` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sync.2.html
        def sync_syscall = syscall(36)
        # Macro to call the `kill` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] signum
        # @param [Register, Integer] posix
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/kill.2.html
        def kill_syscall(pid,signum,posix) = syscall(37,pid,signum,posix)
        # Macro to call the `getppid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getppid.2.html
        def getppid_syscall = syscall(39)
        # Macro to call the `sys_dup` syscall.
        # @param [Register, Integer] fd
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_dup.2.html
        def sys_dup_syscall(fd) = syscall(41,fd)
        # Macro to call the `pipe` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pipe.2.html
        def pipe_syscall = syscall(42)
        # Macro to call the `getegid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getegid.2.html
        def getegid_syscall = syscall(43)
        # Macro to call the `sigaction` syscall.
        # @param [Register, Integer] signum
        # @param [Register, Integer] nsa
        # @param [Register, Integer] osa
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sigaction.2.html
        def sigaction_syscall(signum,nsa,osa) = syscall(46,signum,nsa,osa)
        # Macro to call the `getgid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getgid.2.html
        def getgid_syscall = syscall(47)
        # Macro to call the `sigprocmask` syscall.
        # @param [Register, Integer] how
        # @param [Register, Integer] mask
        # @param [Register, Integer] omask
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sigprocmask.2.html
        def sigprocmask_syscall(how,mask,omask) = syscall(48,how,mask,omask)
        # Macro to call the `getlogin` syscall.
        # @param [Register, Integer] namebuf
        # @param [Register, Integer] namelen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getlogin.2.html
        def getlogin_syscall(namebuf,namelen) = syscall(49,namebuf,namelen)
        # Macro to call the `setlogin` syscall.
        # @param [Register, Integer] namebuf
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setlogin.2.html
        def setlogin_syscall(namebuf) = syscall(50,namebuf)
        # Macro to call the `acct` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/acct.2.html
        def acct_syscall(path) = syscall(51,path)
        # Macro to call the `sigpending` syscall.
        # @param [Register, Integer] osv
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sigpending.2.html
        def sigpending_syscall(osv) = syscall(52,osv)
        # Macro to call the `sigaltstack` syscall.
        # @param [Register, Integer] nss
        # @param [Register, Integer] oss
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sigaltstack.2.html
        def sigaltstack_syscall(nss,oss) = syscall(53,nss,oss)
        # Macro to call the `ioctl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] com
        # @param [Register, Integer] data
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/ioctl.2.html
        def ioctl_syscall(fd,com,data) = syscall(54,fd,com,data)
        # Macro to call the `reboot` syscall.
        # @param [Register, Integer] opt
        # @param [Register, Integer] msg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/reboot.2.html
        def reboot_syscall(opt,msg) = syscall(55,opt,msg)
        # Macro to call the `revoke` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/revoke.2.html
        def revoke_syscall(path) = syscall(56,path)
        # Macro to call the `symlink` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] link
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/symlink.2.html
        def symlink_syscall(path,link) = syscall(57,path,link)
        # Macro to call the `readlink` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] count
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/readlink.2.html
        def readlink_syscall(path,buf,count) = syscall(58,path,buf,count)
        # Macro to call the `execve` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] argp
        # @param [Register, Integer] envp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/execve.2.html
        def execve_syscall(fname,argp,envp) = syscall(59,fname,argp,envp)
        # Macro to call the `umask` syscall.
        # @param [Register, Integer] newmask
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/umask.2.html
        def umask_syscall(newmask) = syscall(60,newmask)
        # Macro to call the `chroot` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/chroot.2.html
        def chroot_syscall(path) = syscall(61,path)
        # Macro to call the `msync` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msync.2.html
        def msync_syscall(addr,len,flags) = syscall(65,addr,len,flags)
        # Macro to call the `vfork` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/vfork.2.html
        def vfork_syscall = syscall(66)
        # Macro to call the `munmap` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/munmap.2.html
        def munmap_syscall(addr,len) = syscall(73,addr,len)
        # Macro to call the `mprotect` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] prot
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mprotect.2.html
        def mprotect_syscall(addr,len,prot) = syscall(74,addr,len,prot)
        # Macro to call the `madvise` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] behav
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/madvise.2.html
        def madvise_syscall(addr,len,behav) = syscall(75,addr,len,behav)
        # Macro to call the `mincore` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] vec
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mincore.2.html
        def mincore_syscall(addr,len,vec) = syscall(78,addr,len,vec)
        # Macro to call the `getgroups` syscall.
        # @param [Register, Integer] gidsetsize
        # @param [Register, Integer] gidset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getgroups.2.html
        def getgroups_syscall(gidsetsize,gidset) = syscall(79,gidsetsize,gidset)
        # Macro to call the `setgroups` syscall.
        # @param [Register, Integer] gidsetsize
        # @param [Register, Integer] gidset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setgroups.2.html
        def setgroups_syscall(gidsetsize,gidset) = syscall(80,gidsetsize,gidset)
        # Macro to call the `getpgrp` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getpgrp.2.html
        def getpgrp_syscall = syscall(81)
        # Macro to call the `setpgid` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] pgid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setpgid.2.html
        def setpgid_syscall(pid,pgid) = syscall(82,pid,pgid)
        # Macro to call the `setitimer` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] itv
        # @param [Register, Integer] oitv
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setitimer.2.html
        def setitimer_syscall(which,itv,oitv) = syscall(83,which,itv,oitv)
        # Macro to call the `swapon` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/swapon.2.html
        def swapon_syscall = syscall(85)
        # Macro to call the `getitimer` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] itv
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getitimer.2.html
        def getitimer_syscall(which,itv) = syscall(86,which,itv)
        # Macro to call the `sys_getdtablesize` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_getdtablesize.2.html
        def sys_getdtablesize_syscall = syscall(89)
        # Macro to call the `sys_dup2` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_dup2.2.html
        def sys_dup2_syscall(from,to) = syscall(90,from,to)
        # Macro to call the `sys_fcntl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fcntl.2.html
        def sys_fcntl_syscall(fd,cmd,arg) = syscall(92,fd,cmd,arg)
        # Macro to call the `select` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] tv
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/select.2.html
        def select_syscall(nd,in_,ou,ex,tv) = syscall(93,nd,in_,ou,ex,tv)
        # Macro to call the `fsync` syscall.
        # @param [Register, Integer] fd
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fsync.2.html
        def fsync_syscall(fd) = syscall(95,fd)
        # Macro to call the `setpriority` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] who
        # @param [Register, Integer] prio
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setpriority.2.html
        def setpriority_syscall(which,who,prio) = syscall(96,which,who,prio)
        # Macro to call the `socket` syscall.
        # @param [Register, Integer] domain
        # @param [Register, Integer] type
        # @param [Register, Integer] protocol
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/socket.2.html
        def socket_syscall(domain,type,protocol) = syscall(97,domain,type,protocol)
        # Macro to call the `connect` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/connect.2.html
        def connect_syscall(s,name,namelen) = syscall(98,s,name,namelen)
        # Macro to call the `getpriority` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] who
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getpriority.2.html
        def getpriority_syscall(which,who) = syscall(100,which,who)
        # Macro to call the `bind` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/bind.2.html
        def bind_syscall(s,name,namelen) = syscall(104,s,name,namelen)
        # Macro to call the `setsockopt` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] level
        # @param [Register, Integer] name
        # @param [Register, Integer] val
        # @param [Register, Integer] valsize
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setsockopt.2.html
        def setsockopt_syscall(s,level,name,val,valsize) = syscall(105,s,level,name,val,valsize)
        # Macro to call the `listen` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] backlog
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/listen.2.html
        def listen_syscall(s,backlog) = syscall(106,s,backlog)
        # Macro to call the `gettimeofday` syscall.
        # @param [Register, Integer] tp
        # @param [Register, Integer] tzp
        # @param [Register, Integer] mach_absolute_time
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/gettimeofday.2.html
        def gettimeofday_syscall(tp,tzp,mach_absolute_time) = syscall(116,tp,tzp,mach_absolute_time)
        # Macro to call the `getrusage` syscall.
        # @param [Register, Integer] who
        # @param [Register, Integer] rusage
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getrusage.2.html
        def getrusage_syscall(who,rusage) = syscall(117,who,rusage)
        # Macro to call the `getsockopt` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] level
        # @param [Register, Integer] name
        # @param [Register, Integer] val
        # @param [Register, Integer] avalsize
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getsockopt.2.html
        def getsockopt_syscall(s,level,name,val,avalsize) = syscall(118,s,level,name,val,avalsize)
        # Macro to call the `readv` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/readv.2.html
        def readv_syscall(fd,iovp,iovcnt) = syscall(120,fd,iovp,iovcnt)
        # Macro to call the `writev` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/writev.2.html
        def writev_syscall(fd,iovp,iovcnt) = syscall(121,fd,iovp,iovcnt)
        # Macro to call the `settimeofday` syscall.
        # @param [Register, Integer] tv
        # @param [Register, Integer] tzp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/settimeofday.2.html
        def settimeofday_syscall(tv,tzp) = syscall(122,tv,tzp)
        # Macro to call the `fchown` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fchown.2.html
        def fchown_syscall(fd,uid,gid) = syscall(123,fd,uid,gid)
        # Macro to call the `fchmod` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fchmod.2.html
        def fchmod_syscall(fd,mode) = syscall(124,fd,mode)
        # Macro to call the `setreuid` syscall.
        # @param [Register, Integer] ruid
        # @param [Register, Integer] euid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setreuid.2.html
        def setreuid_syscall(ruid,euid) = syscall(126,ruid,euid)
        # Macro to call the `setregid` syscall.
        # @param [Register, Integer] rgid
        # @param [Register, Integer] egid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setregid.2.html
        def setregid_syscall(rgid,egid) = syscall(127,rgid,egid)
        # Macro to call the `rename` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/rename.2.html
        def rename_syscall(from,to) = syscall(128,from,to)
        # Macro to call the `sys_flock` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] how
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_flock.2.html
        def sys_flock_syscall(fd,how) = syscall(131,fd,how)
        # Macro to call the `mkfifo` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mkfifo.2.html
        def mkfifo_syscall(path,mode) = syscall(132,path,mode)
        # Macro to call the `sendto` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] to
        # @param [Register, Integer] tolen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sendto.2.html
        def sendto_syscall(s,buf,len,flags,to,tolen) = syscall(133,s,buf,len,flags,to,tolen)
        # Macro to call the `shutdown` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] how
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shutdown.2.html
        def shutdown_syscall(s,how) = syscall(134,s,how)
        # Macro to call the `socketpair` syscall.
        # @param [Register, Integer] domain
        # @param [Register, Integer] type
        # @param [Register, Integer] protocol
        # @param [Register, Integer] rsv
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/socketpair.2.html
        def socketpair_syscall(domain,type,protocol,rsv) = syscall(135,domain,type,protocol,rsv)
        # Macro to call the `mkdir` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mkdir.2.html
        def mkdir_syscall(path,mode) = syscall(136,path,mode)
        # Macro to call the `rmdir` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/rmdir.2.html
        def rmdir_syscall(path) = syscall(137,path)
        # Macro to call the `utimes` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] tptr
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/utimes.2.html
        def utimes_syscall(path,tptr) = syscall(138,path,tptr)
        # Macro to call the `futimes` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] tptr
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/futimes.2.html
        def futimes_syscall(fd,tptr) = syscall(139,fd,tptr)
        # Macro to call the `adjtime` syscall.
        # @param [Register, Integer] delta
        # @param [Register, Integer] olddelta
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/adjtime.2.html
        def adjtime_syscall(delta,olddelta) = syscall(140,delta,olddelta)
        # Macro to call the `gethostuuid` syscall.
        # @param [Register, Integer] uuid_buf
        # @param [Register, Integer] timeoutp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/gethostuuid.2.html
        def gethostuuid_syscall(uuid_buf,timeoutp) = syscall(142,uuid_buf,timeoutp)
        # Macro to call the `setsid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setsid.2.html
        def setsid_syscall = syscall(147)
        # Macro to call the `getpgid` syscall.
        # @param [Register, Integer] pid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getpgid.2.html
        def getpgid_syscall(pid) = syscall(151,pid)
        # Macro to call the `setprivexec` syscall.
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setprivexec.2.html
        def setprivexec_syscall(flag) = syscall(152,flag)
        # Macro to call the `pread` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pread.2.html
        def pread_syscall(fd,buf,nbyte,offset) = syscall(153,fd,buf,nbyte,offset)
        # Macro to call the `pwrite` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pwrite.2.html
        def pwrite_syscall(fd,buf,nbyte,offset) = syscall(154,fd,buf,nbyte,offset)
        # Macro to call the `statfs` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/statfs.2.html
        def statfs_syscall(path,buf) = syscall(157,path,buf)
        # Macro to call the `fstatfs` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fstatfs.2.html
        def fstatfs_syscall(fd,buf) = syscall(158,fd,buf)
        # Macro to call the `unmount` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/unmount.2.html
        def unmount_syscall(path,flags) = syscall(159,path,flags)
        # Macro to call the `quotactl` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] cmd
        # @param [Register, Integer] uid
        # @param [Register, Integer] arg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/quotactl.2.html
        def quotactl_syscall(path,cmd,uid,arg) = syscall(165,path,cmd,uid,arg)
        # Macro to call the `mount` syscall.
        # @param [Register, Integer] type
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] data
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mount.2.html
        def mount_syscall(type,path,flags,data) = syscall(167,type,path,flags,data)
        # Macro to call the `csops` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] ops
        # @param [Register, Integer] useraddr
        # @param [Register, Integer] usersize
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/csops.2.html
        def csops_syscall(pid,ops,useraddr,usersize) = syscall(169,pid,ops,useraddr,usersize)
        # Macro to call the `csops_audittoken` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] ops
        # @param [Register, Integer] useraddr
        # @param [Register, Integer] usersize
        # @param [Register, Integer] uaudittoken
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/csops_audittoken.2.html
        def csops_audittoken_syscall(pid,ops,useraddr,usersize,uaudittoken) = syscall(170,pid,ops,useraddr,usersize,uaudittoken)
        # Macro to call the `waitid` syscall.
        # @param [Register, Integer] idtype
        # @param [Register, Integer] id
        # @param [Register, Integer] infop
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/waitid.2.html
        def waitid_syscall(idtype,id,infop,options) = syscall(173,idtype,id,infop,options)
        # Macro to call the `setgid` syscall.
        # @param [Register, Integer] gid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setgid.2.html
        def setgid_syscall(gid) = syscall(181,gid)
        # Macro to call the `setegid` syscall.
        # @param [Register, Integer] egid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setegid.2.html
        def setegid_syscall(egid) = syscall(182,egid)
        # Macro to call the `seteuid` syscall.
        # @param [Register, Integer] euid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/seteuid.2.html
        def seteuid_syscall(euid) = syscall(183,euid)
        # Macro to call the `sigreturn` syscall.
        # @param [Register, Integer] uctx
        # @param [Register, Integer] infostyle
        # @param [Register, Integer] token
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sigreturn.2.html
        def sigreturn_syscall(uctx,infostyle,token) = syscall(184,uctx,infostyle,token)
        # Macro to call the `fdatasync` syscall.
        # @param [Register, Integer] fd
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fdatasync.2.html
        def fdatasync_syscall(fd) = syscall(187,fd)
        # Macro to call the `stat` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/stat.2.html
        def stat_syscall(path,ub) = syscall(188,path,ub)
        # Macro to call the `sys_fstat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] ub
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fstat.2.html
        def sys_fstat_syscall(fd,ub) = syscall(189,fd,ub)
        # Macro to call the `lstat` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/lstat.2.html
        def lstat_syscall(path,ub) = syscall(190,path,ub)
        # Macro to call the `pathconf` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] name
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pathconf.2.html
        def pathconf_syscall(path,name) = syscall(191,path,name)
        # Macro to call the `sys_fpathconf` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] name
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fpathconf.2.html
        def sys_fpathconf_syscall(fd,name) = syscall(192,fd,name)
        # Macro to call the `getrlimit` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] rlp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getrlimit.2.html
        def getrlimit_syscall(which,rlp) = syscall(194,which,rlp)
        # Macro to call the `setrlimit` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] rlp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setrlimit.2.html
        def setrlimit_syscall(which,rlp) = syscall(195,which,rlp)
        # Macro to call the `getdirentries` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] count
        # @param [Register, Integer] basep
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getdirentries.2.html
        def getdirentries_syscall(fd,buf,count,basep) = syscall(196,fd,buf,count,basep)
        # Macro to call the `mmap` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] prot
        # @param [Register, Integer] flags
        # @param [Register, Integer] fd
        # @param [Register, Integer] pos
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mmap.2.html
        def mmap_syscall(addr,len,prot,flags,fd,pos) = syscall(197,addr,len,prot,flags,fd,pos)
        # Macro to call the `lseek` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] offset
        # @param [Register, Integer] whence
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/lseek.2.html
        def lseek_syscall(fd,offset,whence) = syscall(199,fd,offset,whence)
        # Macro to call the `truncate` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] length
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/truncate.2.html
        def truncate_syscall(path,length) = syscall(200,path,length)
        # Macro to call the `ftruncate` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] length
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/ftruncate.2.html
        def ftruncate_syscall(fd,length) = syscall(201,fd,length)
        # Macro to call the `sysctl` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @param [Register, Integer] old
        # @param [Register, Integer] oldlenp
        # @param [Register, Integer] new
        # @param [Register, Integer] newlen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sysctl.2.html
        def sysctl_syscall(name,namelen,old,oldlenp,new,newlen) = syscall(202,name,namelen,old,oldlenp,new,newlen)
        # Macro to call the `mlock` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mlock.2.html
        def mlock_syscall(addr,len) = syscall(203,addr,len)
        # Macro to call the `munlock` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/munlock.2.html
        def munlock_syscall(addr,len) = syscall(204,addr,len)
        # Macro to call the `undelete` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/undelete.2.html
        def undelete_syscall(path) = syscall(205,path)
        # Macro to call the `fsgetpath_ext` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] fsid
        # @param [Register, Integer] objid
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fsgetpath_ext.2.html
        def fsgetpath_ext_syscall(buf,bufsize,fsid,objid,options) = syscall(217,buf,bufsize,fsid,objid,options)
        # Macro to call the `getattrlist` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] alist
        # @param [Register, Integer] attributeBuffer
        # @param [Register, Integer] bufferSize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getattrlist.2.html
        def getattrlist_syscall(path,alist,attributeBuffer,bufferSize,options) = syscall(220,path,alist,attributeBuffer,bufferSize,options)
        # Macro to call the `setattrlist` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] alist
        # @param [Register, Integer] attributeBuffer
        # @param [Register, Integer] bufferSize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setattrlist.2.html
        def setattrlist_syscall(path,alist,attributeBuffer,bufferSize,options) = syscall(221,path,alist,attributeBuffer,bufferSize,options)
        # Macro to call the `getdirentriesattr` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] alist
        # @param [Register, Integer] buffer
        # @param [Register, Integer] buffersize
        # @param [Register, Integer] count
        # @param [Register, Integer] basep
        # @param [Register, Integer] newstate
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getdirentriesattr.2.html
        def getdirentriesattr_syscall(fd,alist,buffer,buffersize,count,basep,newstate,options) = syscall(222,fd,alist,buffer,buffersize,count,basep,newstate,options)
        # Macro to call the `exchangedata` syscall.
        # @param [Register, Integer] path1
        # @param [Register, Integer] path2
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/exchangedata.2.html
        def exchangedata_syscall(path1,path2,options) = syscall(223,path1,path2,options)
        # Macro to call the `searchfs` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] searchblock
        # @param [Register, Integer] nummatches
        # @param [Register, Integer] scriptcode
        # @param [Register, Integer] options
        # @param [Register, Integer] state
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/searchfs.2.html
        def searchfs_syscall(path,searchblock,nummatches,scriptcode,options,state) = syscall(225,path,searchblock,nummatches,scriptcode,options,state)
        # Macro to call the `delete` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/delete.2.html
        def delete_syscall(path) = syscall(226,path)
        # Macro to call the `copyfile` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @param [Register, Integer] mode
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/copyfile.2.html
        def copyfile_syscall(from,to,mode,flags) = syscall(227,from,to,mode,flags)
        # Macro to call the `fgetattrlist` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] alist
        # @param [Register, Integer] attributeBuffer
        # @param [Register, Integer] bufferSize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fgetattrlist.2.html
        def fgetattrlist_syscall(fd,alist,attributeBuffer,bufferSize,options) = syscall(228,fd,alist,attributeBuffer,bufferSize,options)
        # Macro to call the `fsetattrlist` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] alist
        # @param [Register, Integer] attributeBuffer
        # @param [Register, Integer] bufferSize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fsetattrlist.2.html
        def fsetattrlist_syscall(fd,alist,attributeBuffer,bufferSize,options) = syscall(229,fd,alist,attributeBuffer,bufferSize,options)
        # Macro to call the `poll` syscall.
        # @param [Register, Integer] fds
        # @param [Register, Integer] nfds
        # @param [Register, Integer] timeout
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/poll.2.html
        def poll_syscall(fds,nfds,timeout) = syscall(230,fds,nfds,timeout)
        # Macro to call the `getxattr` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrname
        # @param [Register, Integer] value
        # @param [Register, Integer] size
        # @param [Register, Integer] position
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getxattr.2.html
        def getxattr_syscall(path,attrname,value,size,position,options) = syscall(234,path,attrname,value,size,position,options)
        # Macro to call the `fgetxattr` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] attrname
        # @param [Register, Integer] value
        # @param [Register, Integer] size
        # @param [Register, Integer] position
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fgetxattr.2.html
        def fgetxattr_syscall(fd,attrname,value,size,position,options) = syscall(235,fd,attrname,value,size,position,options)
        # Macro to call the `setxattr` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrname
        # @param [Register, Integer] value
        # @param [Register, Integer] size
        # @param [Register, Integer] position
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setxattr.2.html
        def setxattr_syscall(path,attrname,value,size,position,options) = syscall(236,path,attrname,value,size,position,options)
        # Macro to call the `fsetxattr` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] attrname
        # @param [Register, Integer] value
        # @param [Register, Integer] size
        # @param [Register, Integer] position
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fsetxattr.2.html
        def fsetxattr_syscall(fd,attrname,value,size,position,options) = syscall(237,fd,attrname,value,size,position,options)
        # Macro to call the `removexattr` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrname
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/removexattr.2.html
        def removexattr_syscall(path,attrname,options) = syscall(238,path,attrname,options)
        # Macro to call the `fremovexattr` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] attrname
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fremovexattr.2.html
        def fremovexattr_syscall(fd,attrname,options) = syscall(239,fd,attrname,options)
        # Macro to call the `listxattr` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] namebuf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/listxattr.2.html
        def listxattr_syscall(path,namebuf,bufsize,options) = syscall(240,path,namebuf,bufsize,options)
        # Macro to call the `flistxattr` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] namebuf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/flistxattr.2.html
        def flistxattr_syscall(fd,namebuf,bufsize,options) = syscall(241,fd,namebuf,bufsize,options)
        # Macro to call the `fsctl` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] cmd
        # @param [Register, Integer] data
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fsctl.2.html
        def fsctl_syscall(path,cmd,data,options) = syscall(242,path,cmd,data,options)
        # Macro to call the `initgroups` syscall.
        # @param [Register, Integer] gidsetsize
        # @param [Register, Integer] gidset
        # @param [Register, Integer] gmuid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/initgroups.2.html
        def initgroups_syscall(gidsetsize,gidset,gmuid) = syscall(243,gidsetsize,gidset,gmuid)
        # Macro to call the `posix_spawn` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] path
        # @param [Register, Integer] adesc
        # @param [Register, Integer] argv
        # @param [Register, Integer] envp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/posix_spawn.2.html
        def posix_spawn_syscall(pid,path,adesc,argv,envp) = syscall(244,pid,path,adesc,argv,envp)
        # Macro to call the `ffsctl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmd
        # @param [Register, Integer] data
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/ffsctl.2.html
        def ffsctl_syscall(fd,cmd,data,options) = syscall(245,fd,cmd,data,options)
        # Macro to call the `minherit` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] inherit
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/minherit.2.html
        def minherit_syscall(addr,len,inherit) = syscall(250,addr,len,inherit)
        # Macro to call the `semsys` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] a2
        # @param [Register, Integer] a3
        # @param [Register, Integer] a4
        # @param [Register, Integer] a5
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/semsys.2.html
        def semsys_syscall(which,a2,a3,a4,a5) = syscall(251,which,a2,a3,a4,a5)
        # Macro to call the `msgsys` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] a2
        # @param [Register, Integer] a3
        # @param [Register, Integer] a4
        # @param [Register, Integer] a5
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msgsys.2.html
        def msgsys_syscall(which,a2,a3,a4,a5) = syscall(252,which,a2,a3,a4,a5)
        # Macro to call the `shmsys` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] a2
        # @param [Register, Integer] a3
        # @param [Register, Integer] a4
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shmsys.2.html
        def shmsys_syscall(which,a2,a3,a4) = syscall(253,which,a2,a3,a4)
        # Macro to call the `semctl` syscall.
        # @param [Register, Integer] semid
        # @param [Register, Integer] semnum
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/semctl.2.html
        def semctl_syscall(semid,semnum,cmd,arg) = syscall(254,semid,semnum,cmd,arg)
        # Macro to call the `semget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] nsems
        # @param [Register, Integer] semflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/semget.2.html
        def semget_syscall(key,nsems,semflg) = syscall(255,key,nsems,semflg)
        # Macro to call the `semop` syscall.
        # @param [Register, Integer] semid
        # @param [Register, Integer] sops
        # @param [Register, Integer] nsops
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/semop.2.html
        def semop_syscall(semid,sops,nsops) = syscall(256,semid,sops,nsops)
        # Macro to call the `msgctl` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] cmd
        # @param [Register, Integer] buf
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msgctl.2.html
        def msgctl_syscall(msqid,cmd,buf) = syscall(258,msqid,cmd,buf)
        # Macro to call the `msgget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] msgflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msgget.2.html
        def msgget_syscall(key,msgflg) = syscall(259,key,msgflg)
        # Macro to call the `msgsnd` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msgsnd.2.html
        def msgsnd_syscall(msqid,msgp,msgsz,msgflg) = syscall(260,msqid,msgp,msgsz,msgflg)
        # Macro to call the `msgrcv` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgtyp
        # @param [Register, Integer] msgflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msgrcv.2.html
        def msgrcv_syscall(msqid,msgp,msgsz,msgtyp,msgflg) = syscall(261,msqid,msgp,msgsz,msgtyp,msgflg)
        # Macro to call the `shmat` syscall.
        # @param [Register, Integer] shmid
        # @param [Register, Integer] shmaddr
        # @param [Register, Integer] shmflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shmat.2.html
        def shmat_syscall(shmid,shmaddr,shmflg) = syscall(262,shmid,shmaddr,shmflg)
        # Macro to call the `shmctl` syscall.
        # @param [Register, Integer] shmid
        # @param [Register, Integer] cmd
        # @param [Register, Integer] buf
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shmctl.2.html
        def shmctl_syscall(shmid,cmd,buf) = syscall(263,shmid,cmd,buf)
        # Macro to call the `shmdt` syscall.
        # @param [Register, Integer] shmaddr
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shmdt.2.html
        def shmdt_syscall(shmaddr) = syscall(264,shmaddr)
        # Macro to call the `shmget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] size
        # @param [Register, Integer] shmflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shmget.2.html
        def shmget_syscall(key,size,shmflg) = syscall(265,key,size,shmflg)
        # Macro to call the `shm_open` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] oflag
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shm_open.2.html
        def shm_open_syscall(name,oflag,mode) = syscall(266,name,oflag,mode)
        # Macro to call the `shm_unlink` syscall.
        # @param [Register, Integer] name
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/shm_unlink.2.html
        def shm_unlink_syscall(name) = syscall(267,name)
        # Macro to call the `sem_open` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] oflag
        # @param [Register, Integer] mode
        # @param [Register, Integer] value
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sem_open.2.html
        def sem_open_syscall(name,oflag,mode,value) = syscall(268,name,oflag,mode,value)
        # Macro to call the `sem_close` syscall.
        # @param [Register, Integer] sem
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sem_close.2.html
        def sem_close_syscall(sem) = syscall(269,sem)
        # Macro to call the `sem_unlink` syscall.
        # @param [Register, Integer] name
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sem_unlink.2.html
        def sem_unlink_syscall(name) = syscall(270,name)
        # Macro to call the `sem_wait` syscall.
        # @param [Register, Integer] sem
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sem_wait.2.html
        def sem_wait_syscall(sem) = syscall(271,sem)
        # Macro to call the `sem_trywait` syscall.
        # @param [Register, Integer] sem
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sem_trywait.2.html
        def sem_trywait_syscall(sem) = syscall(272,sem)
        # Macro to call the `sem_post` syscall.
        # @param [Register, Integer] sem
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sem_post.2.html
        def sem_post_syscall(sem) = syscall(273,sem)
        # Macro to call the `sys_sysctlbyname` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @param [Register, Integer] old
        # @param [Register, Integer] oldlenp
        # @param [Register, Integer] new
        # @param [Register, Integer] newlen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_sysctlbyname.2.html
        def sys_sysctlbyname_syscall(name,namelen,old,oldlenp,new,newlen) = syscall(274,name,namelen,old,oldlenp,new,newlen)
        # Macro to call the `open_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] mode
        # @param [Register, Integer] xsecurity
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/open_extended.2.html
        def open_extended_syscall(path,flags,uid,gid,mode,xsecurity) = syscall(277,path,flags,uid,gid,mode,xsecurity)
        # Macro to call the `umask_extended` syscall.
        # @param [Register, Integer] newmask
        # @param [Register, Integer] xsecurity
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/umask_extended.2.html
        def umask_extended_syscall(newmask,xsecurity) = syscall(278,newmask,xsecurity)
        # Macro to call the `stat_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @param [Register, Integer] xsecurity
        # @param [Register, Integer] xsecurity_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/stat_extended.2.html
        def stat_extended_syscall(path,ub,xsecurity,xsecurity_size) = syscall(279,path,ub,xsecurity,xsecurity_size)
        # Macro to call the `lstat_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @param [Register, Integer] xsecurity
        # @param [Register, Integer] xsecurity_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/lstat_extended.2.html
        def lstat_extended_syscall(path,ub,xsecurity,xsecurity_size) = syscall(280,path,ub,xsecurity,xsecurity_size)
        # Macro to call the `sys_fstat_extended` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] ub
        # @param [Register, Integer] xsecurity
        # @param [Register, Integer] xsecurity_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fstat_extended.2.html
        def sys_fstat_extended_syscall(fd,ub,xsecurity,xsecurity_size) = syscall(281,fd,ub,xsecurity,xsecurity_size)
        # Macro to call the `chmod_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] mode
        # @param [Register, Integer] xsecurity
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/chmod_extended.2.html
        def chmod_extended_syscall(path,uid,gid,mode,xsecurity) = syscall(282,path,uid,gid,mode,xsecurity)
        # Macro to call the `fchmod_extended` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] mode
        # @param [Register, Integer] xsecurity
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fchmod_extended.2.html
        def fchmod_extended_syscall(fd,uid,gid,mode,xsecurity) = syscall(283,fd,uid,gid,mode,xsecurity)
        # Macro to call the `access_extended` syscall.
        # @param [Register, Integer] entries
        # @param [Register, Integer] size
        # @param [Register, Integer] results
        # @param [Register, Integer] uid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/access_extended.2.html
        def access_extended_syscall(entries,size,results,uid) = syscall(284,entries,size,results,uid)
        # Macro to call the `sys_settid` syscall.
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_settid.2.html
        def sys_settid_syscall(uid,gid) = syscall(285,uid,gid)
        # Macro to call the `gettid` syscall.
        # @param [Register, Integer] uidp
        # @param [Register, Integer] gidp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/gettid.2.html
        def gettid_syscall(uidp,gidp) = syscall(286,uidp,gidp)
        # Macro to call the `setsgroups` syscall.
        # @param [Register, Integer] setlen
        # @param [Register, Integer] guidset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setsgroups.2.html
        def setsgroups_syscall(setlen,guidset) = syscall(287,setlen,guidset)
        # Macro to call the `getsgroups` syscall.
        # @param [Register, Integer] setlen
        # @param [Register, Integer] guidset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getsgroups.2.html
        def getsgroups_syscall(setlen,guidset) = syscall(288,setlen,guidset)
        # Macro to call the `setwgroups` syscall.
        # @param [Register, Integer] setlen
        # @param [Register, Integer] guidset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setwgroups.2.html
        def setwgroups_syscall(setlen,guidset) = syscall(289,setlen,guidset)
        # Macro to call the `getwgroups` syscall.
        # @param [Register, Integer] setlen
        # @param [Register, Integer] guidset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getwgroups.2.html
        def getwgroups_syscall(setlen,guidset) = syscall(290,setlen,guidset)
        # Macro to call the `mkfifo_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] mode
        # @param [Register, Integer] xsecurity
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mkfifo_extended.2.html
        def mkfifo_extended_syscall(path,uid,gid,mode,xsecurity) = syscall(291,path,uid,gid,mode,xsecurity)
        # Macro to call the `mkdir_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] mode
        # @param [Register, Integer] xsecurity
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mkdir_extended.2.html
        def mkdir_extended_syscall(path,uid,gid,mode,xsecurity) = syscall(292,path,uid,gid,mode,xsecurity)
        # Macro to call the `identitysvc` syscall.
        # @param [Register, Integer] opcode
        # @param [Register, Integer] message
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/identitysvc.2.html
        def identitysvc_syscall(opcode,message) = syscall(293,opcode,message)
        # Macro to call the `getsid` syscall.
        # @param [Register, Integer] pid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getsid.2.html
        def getsid_syscall(pid) = syscall(310,pid)
        # Macro to call the `sys_settid_with_pid` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] assume
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_settid_with_pid.2.html
        def sys_settid_with_pid_syscall(pid,assume) = syscall(311,pid,assume)
        # Macro to call the `lio_listio` syscall.
        # @param [Register, Integer] mode
        # @param [Register, Integer] aiocblist
        # @param [Register, Integer] nent
        # @param [Register, Integer] sigp
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/lio_listio.2.html
        def lio_listio_syscall(mode,aiocblist,nent,sigp) = syscall(320,mode,aiocblist,nent,sigp)
        # Macro to call the `iopolicysys` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/iopolicysys.2.html
        def iopolicysys_syscall(cmd,arg) = syscall(322,cmd,arg)
        # Macro to call the `mlockall` syscall.
        # @param [Register, Integer] how
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mlockall.2.html
        def mlockall_syscall(how) = syscall(324,how)
        # Macro to call the `munlockall` syscall.
        # @param [Register, Integer] how
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/munlockall.2.html
        def munlockall_syscall(how) = syscall(325,how)
        # Macro to call the `issetugid` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/issetugid.2.html
        def issetugid_syscall = syscall(327)
        # Macro to call the `__pthread_kill` syscall.
        # @param [Register, Integer] thread_port
        # @param [Register, Integer] sig
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__pthread_kill.2.html
        def __pthread_kill_syscall(thread_port,sig) = syscall(328,thread_port,sig)
        # Macro to call the `__pthread_sigmask` syscall.
        # @param [Register, Integer] how
        # @param [Register, Integer] set
        # @param [Register, Integer] oset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__pthread_sigmask.2.html
        def __pthread_sigmask_syscall(how,set,oset) = syscall(329,how,set,oset)
        # Macro to call the `__sigwait` syscall.
        # @param [Register, Integer] set
        # @param [Register, Integer] sig
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__sigwait.2.html
        def __sigwait_syscall(set,sig) = syscall(330,set,sig)
        # Macro to call the `__semwait_signal` syscall.
        # @param [Register, Integer] cond_sem
        # @param [Register, Integer] mutex_sem
        # @param [Register, Integer] timeout
        # @param [Register, Integer] relative
        # @param [Register, Integer] tv_sec
        # @param [Register, Integer] tv_nsec
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__semwait_signal.2.html
        def __semwait_signal_syscall(cond_sem,mutex_sem,timeout,relative,tv_sec,tv_nsec) = syscall(334,cond_sem,mutex_sem,timeout,relative,tv_sec,tv_nsec)
        # Macro to call the `proc_info` syscall.
        # @param [Register, Integer] callnum
        # @param [Register, Integer] pid
        # @param [Register, Integer] flavor
        # @param [Register, Integer] arg
        # @param [Register, Integer] buffer
        # @param [Register, Integer] buffersize
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/proc_info.2.html
        def proc_info_syscall(callnum,pid,flavor,arg,buffer,buffersize) = syscall(336,callnum,pid,flavor,arg,buffer,buffersize)
        # Macro to call the `sendfile` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] s
        # @param [Register, Integer] offset
        # @param [Register, Integer] nbytes
        # @param [Register, Integer] hdtr
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sendfile.2.html
        def sendfile_syscall(fd,s,offset,nbytes,hdtr,flags) = syscall(337,fd,s,offset,nbytes,hdtr,flags)
        # Macro to call the `stat64` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/stat64.2.html
        def stat64_syscall(path,ub) = syscall(338,path,ub)
        # Macro to call the `sys_fstat64` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] ub
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fstat64.2.html
        def sys_fstat64_syscall(fd,ub) = syscall(339,fd,ub)
        # Macro to call the `lstat64` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/lstat64.2.html
        def lstat64_syscall(path,ub) = syscall(340,path,ub)
        # Macro to call the `stat64_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @param [Register, Integer] xsecurity
        # @param [Register, Integer] xsecurity_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/stat64_extended.2.html
        def stat64_extended_syscall(path,ub,xsecurity,xsecurity_size) = syscall(341,path,ub,xsecurity,xsecurity_size)
        # Macro to call the `lstat64_extended` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @param [Register, Integer] xsecurity
        # @param [Register, Integer] xsecurity_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/lstat64_extended.2.html
        def lstat64_extended_syscall(path,ub,xsecurity,xsecurity_size) = syscall(342,path,ub,xsecurity,xsecurity_size)
        # Macro to call the `sys_fstat64_extended` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] ub
        # @param [Register, Integer] xsecurity
        # @param [Register, Integer] xsecurity_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fstat64_extended.2.html
        def sys_fstat64_extended_syscall(fd,ub,xsecurity,xsecurity_size) = syscall(343,fd,ub,xsecurity,xsecurity_size)
        # Macro to call the `getdirentries64` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] position
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getdirentries64.2.html
        def getdirentries64_syscall(fd,buf,bufsize,position) = syscall(344,fd,buf,bufsize,position)
        # Macro to call the `statfs64` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/statfs64.2.html
        def statfs64_syscall(path,buf) = syscall(345,path,buf)
        # Macro to call the `fstatfs64` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fstatfs64.2.html
        def fstatfs64_syscall(fd,buf) = syscall(346,fd,buf)
        # Macro to call the `getfsstat64` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getfsstat64.2.html
        def getfsstat64_syscall(buf,bufsize,flags) = syscall(347,buf,bufsize,flags)
        # Macro to call the `audit` syscall.
        # @param [Register, Integer] record
        # @param [Register, Integer] length
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/audit.2.html
        def audit_syscall(record,length) = syscall(350,record,length)
        # Macro to call the `auditon` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] data
        # @param [Register, Integer] length
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/auditon.2.html
        def auditon_syscall(cmd,data,length) = syscall(351,cmd,data,length)
        # Macro to call the `getauid` syscall.
        # @param [Register, Integer] auid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getauid.2.html
        def getauid_syscall(auid) = syscall(353,auid)
        # Macro to call the `setauid` syscall.
        # @param [Register, Integer] auid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setauid.2.html
        def setauid_syscall(auid) = syscall(354,auid)
        # Macro to call the `getaudit_addr` syscall.
        # @param [Register, Integer] auditinfo_addr
        # @param [Register, Integer] length
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getaudit_addr.2.html
        def getaudit_addr_syscall(auditinfo_addr,length) = syscall(357,auditinfo_addr,length)
        # Macro to call the `setaudit_addr` syscall.
        # @param [Register, Integer] auditinfo_addr
        # @param [Register, Integer] length
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setaudit_addr.2.html
        def setaudit_addr_syscall(auditinfo_addr,length) = syscall(358,auditinfo_addr,length)
        # Macro to call the `auditctl` syscall.
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/auditctl.2.html
        def auditctl_syscall(path) = syscall(359,path)
        # Macro to call the `kqueue` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/kqueue.2.html
        def kqueue_syscall = syscall(362)
        # Macro to call the `lchown` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] owner
        # @param [Register, Integer] group
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/lchown.2.html
        def lchown_syscall(path,owner,group) = syscall(364,path,owner,group)
        # Macro to call the `workq_open` syscall.
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/workq_open.2.html
        def workq_open_syscall = syscall(367)
        # Macro to call the `workq_kernreturn` syscall.
        # @param [Register, Integer] options
        # @param [Register, Integer] item
        # @param [Register, Integer] affinity
        # @param [Register, Integer] prio
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/workq_kernreturn.2.html
        def workq_kernreturn_syscall(options,item,affinity,prio) = syscall(368,options,item,affinity,prio)
        # Macro to call the `ledger` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg1
        # @param [Register, Integer] arg2
        # @param [Register, Integer] arg3
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/ledger.2.html
        def ledger_syscall(cmd,arg1,arg2,arg3) = syscall(373,cmd,arg1,arg2,arg3)
        # Macro to call the `__mac_execve` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] argp
        # @param [Register, Integer] envp
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_execve.2.html
        def __mac_execve_syscall(fname,argp,envp,mac_p) = syscall(380,fname,argp,envp,mac_p)
        # Macro to call the `__mac_syscall` syscall.
        # @param [Register, Integer] policy
        # @param [Register, Integer] call
        # @param [Register, Integer] arg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_syscall.2.html
        def __mac_syscall_syscall(policy,call,arg) = syscall(381,policy,call,arg)
        # Macro to call the `__mac_get_file` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_get_file.2.html
        def __mac_get_file_syscall(path_p,mac_p) = syscall(382,path_p,mac_p)
        # Macro to call the `__mac_set_file` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_set_file.2.html
        def __mac_set_file_syscall(path_p,mac_p) = syscall(383,path_p,mac_p)
        # Macro to call the `__mac_get_link` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_get_link.2.html
        def __mac_get_link_syscall(path_p,mac_p) = syscall(384,path_p,mac_p)
        # Macro to call the `__mac_set_link` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_set_link.2.html
        def __mac_set_link_syscall(path_p,mac_p) = syscall(385,path_p,mac_p)
        # Macro to call the `__mac_get_proc` syscall.
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_get_proc.2.html
        def __mac_get_proc_syscall(mac_p) = syscall(386,mac_p)
        # Macro to call the `__mac_set_proc` syscall.
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_set_proc.2.html
        def __mac_set_proc_syscall(mac_p) = syscall(387,mac_p)
        # Macro to call the `__mac_get_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_get_fd.2.html
        def __mac_get_fd_syscall(fd,mac_p) = syscall(388,fd,mac_p)
        # Macro to call the `__mac_set_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_set_fd.2.html
        def __mac_set_fd_syscall(fd,mac_p) = syscall(389,fd,mac_p)
        # Macro to call the `__mac_get_pid` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_get_pid.2.html
        def __mac_get_pid_syscall(pid,mac_p) = syscall(390,pid,mac_p)
        # Macro to call the `pselect` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] ts
        # @param [Register, Integer] mask
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pselect.2.html
        def pselect_syscall(nd,in_,ou,ex,ts,mask) = syscall(394,nd,in_,ou,ex,ts,mask)
        # Macro to call the `pselect_nocancel` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] ts
        # @param [Register, Integer] mask
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pselect_nocancel.2.html
        def pselect_nocancel_syscall(nd,in_,ou,ex,ts,mask) = syscall(395,nd,in_,ou,ex,ts,mask)
        # Macro to call the `open_nocancel` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/open_nocancel.2.html
        def open_nocancel_syscall(path,flags,mode) = syscall(398,path,flags,mode)
        # Macro to call the `sys_close_nocancel` syscall.
        # @param [Register, Integer] fd
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_close_nocancel.2.html
        def sys_close_nocancel_syscall(fd) = syscall(399,fd)
        # Macro to call the `wait4_nocancel` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] status
        # @param [Register, Integer] options
        # @param [Register, Integer] rusage
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/wait4_nocancel.2.html
        def wait4_nocancel_syscall(pid,status,options,rusage) = syscall(400,pid,status,options,rusage)
        # Macro to call the `recvmsg_nocancel` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/recvmsg_nocancel.2.html
        def recvmsg_nocancel_syscall(s,msg,flags) = syscall(401,s,msg,flags)
        # Macro to call the `sendmsg_nocancel` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sendmsg_nocancel.2.html
        def sendmsg_nocancel_syscall(s,msg,flags) = syscall(402,s,msg,flags)
        # Macro to call the `recvfrom_nocancel` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] from
        # @param [Register, Integer] fromlenaddr
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/recvfrom_nocancel.2.html
        def recvfrom_nocancel_syscall(s,buf,len,flags,from,fromlenaddr) = syscall(403,s,buf,len,flags,from,fromlenaddr)
        # Macro to call the `accept_nocancel` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] anamelen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/accept_nocancel.2.html
        def accept_nocancel_syscall(s,name,anamelen) = syscall(404,s,name,anamelen)
        # Macro to call the `msync_nocancel` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msync_nocancel.2.html
        def msync_nocancel_syscall(addr,len,flags) = syscall(405,addr,len,flags)
        # Macro to call the `sys_fcntl_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_fcntl_nocancel.2.html
        def sys_fcntl_nocancel_syscall(fd,cmd,arg) = syscall(406,fd,cmd,arg)
        # Macro to call the `select_nocancel` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] tv
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/select_nocancel.2.html
        def select_nocancel_syscall(nd,in_,ou,ex,tv) = syscall(407,nd,in_,ou,ex,tv)
        # Macro to call the `fsync_nocancel` syscall.
        # @param [Register, Integer] fd
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fsync_nocancel.2.html
        def fsync_nocancel_syscall(fd) = syscall(408,fd)
        # Macro to call the `connect_nocancel` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/connect_nocancel.2.html
        def connect_nocancel_syscall(s,name,namelen) = syscall(409,s,name,namelen)
        # Macro to call the `readv_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/readv_nocancel.2.html
        def readv_nocancel_syscall(fd,iovp,iovcnt) = syscall(411,fd,iovp,iovcnt)
        # Macro to call the `writev_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/writev_nocancel.2.html
        def writev_nocancel_syscall(fd,iovp,iovcnt) = syscall(412,fd,iovp,iovcnt)
        # Macro to call the `sendto_nocancel` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] to
        # @param [Register, Integer] tolen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sendto_nocancel.2.html
        def sendto_nocancel_syscall(s,buf,len,flags,to,tolen) = syscall(413,s,buf,len,flags,to,tolen)
        # Macro to call the `pread_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pread_nocancel.2.html
        def pread_nocancel_syscall(fd,buf,nbyte,offset) = syscall(414,fd,buf,nbyte,offset)
        # Macro to call the `pwrite_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/pwrite_nocancel.2.html
        def pwrite_nocancel_syscall(fd,buf,nbyte,offset) = syscall(415,fd,buf,nbyte,offset)
        # Macro to call the `waitid_nocancel` syscall.
        # @param [Register, Integer] idtype
        # @param [Register, Integer] id
        # @param [Register, Integer] infop
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/waitid_nocancel.2.html
        def waitid_nocancel_syscall(idtype,id,infop,options) = syscall(416,idtype,id,infop,options)
        # Macro to call the `poll_nocancel` syscall.
        # @param [Register, Integer] fds
        # @param [Register, Integer] nfds
        # @param [Register, Integer] timeout
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/poll_nocancel.2.html
        def poll_nocancel_syscall(fds,nfds,timeout) = syscall(417,fds,nfds,timeout)
        # Macro to call the `msgsnd_nocancel` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msgsnd_nocancel.2.html
        def msgsnd_nocancel_syscall(msqid,msgp,msgsz,msgflg) = syscall(418,msqid,msgp,msgsz,msgflg)
        # Macro to call the `msgrcv_nocancel` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgtyp
        # @param [Register, Integer] msgflg
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/msgrcv_nocancel.2.html
        def msgrcv_nocancel_syscall(msqid,msgp,msgsz,msgtyp,msgflg) = syscall(419,msqid,msgp,msgsz,msgtyp,msgflg)
        # Macro to call the `sem_wait_nocancel` syscall.
        # @param [Register, Integer] sem
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sem_wait_nocancel.2.html
        def sem_wait_nocancel_syscall(sem) = syscall(420,sem)
        # Macro to call the `__sigwait_nocancel` syscall.
        # @param [Register, Integer] set
        # @param [Register, Integer] sig
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__sigwait_nocancel.2.html
        def __sigwait_nocancel_syscall(set,sig) = syscall(422,set,sig)
        # Macro to call the `__semwait_signal_nocancel` syscall.
        # @param [Register, Integer] cond_sem
        # @param [Register, Integer] mutex_sem
        # @param [Register, Integer] timeout
        # @param [Register, Integer] relative
        # @param [Register, Integer] tv_sec
        # @param [Register, Integer] tv_nsec
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__semwait_signal_nocancel.2.html
        def __semwait_signal_nocancel_syscall(cond_sem,mutex_sem,timeout,relative,tv_sec,tv_nsec) = syscall(423,cond_sem,mutex_sem,timeout,relative,tv_sec,tv_nsec)
        # Macro to call the `__mac_mount` syscall.
        # @param [Register, Integer] type
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] data
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_mount.2.html
        def __mac_mount_syscall(type,path,flags,data,mac_p) = syscall(424,type,path,flags,data,mac_p)
        # Macro to call the `__mac_get_mount` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mac_p
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_get_mount.2.html
        def __mac_get_mount_syscall(path,mac_p) = syscall(425,path,mac_p)
        # Macro to call the `__mac_getfsstat` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] mac
        # @param [Register, Integer] macsize
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__mac_getfsstat.2.html
        def __mac_getfsstat_syscall(buf,bufsize,mac,macsize,flags) = syscall(426,buf,bufsize,mac,macsize,flags)
        # Macro to call the `fsgetpath` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] fsid
        # @param [Register, Integer] objid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fsgetpath.2.html
        def fsgetpath_syscall(buf,bufsize,fsid,objid) = syscall(427,buf,bufsize,fsid,objid)
        # Macro to call the `guarded_open_np` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] guard
        # @param [Register, Integer] guardflags
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/guarded_open_np.2.html
        def guarded_open_np_syscall(path,guard,guardflags,flags,mode) = syscall(441,path,guard,guardflags,flags,mode)
        # Macro to call the `guarded_close_np` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] guard
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/guarded_close_np.2.html
        def guarded_close_np_syscall(fd,guard) = syscall(442,fd,guard)
        # Macro to call the `guarded_kqueue_np` syscall.
        # @param [Register, Integer] guard
        # @param [Register, Integer] guardflags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/guarded_kqueue_np.2.html
        def guarded_kqueue_np_syscall(guard,guardflags) = syscall(443,guard,guardflags)
        # Macro to call the `usrctl` syscall.
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/usrctl.2.html
        def usrctl_syscall(flags) = syscall(445,flags)
        # Macro to call the `connectx` syscall.
        # @param [Register, Integer] socket
        # @param [Register, Integer] endpoints
        # @param [Register, Integer] associd
        # @param [Register, Integer] flags
        # @param [Register, Integer] iov
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] len
        # @param [Register, Integer] connid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/connectx.2.html
        def connectx_syscall(socket,endpoints,associd,flags,iov,iovcnt,len,connid) = syscall(447,socket,endpoints,associd,flags,iov,iovcnt,len,connid)
        # Macro to call the `socket_delegate` syscall.
        # @param [Register, Integer] domain
        # @param [Register, Integer] type
        # @param [Register, Integer] protocol
        # @param [Register, Integer] epid
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/socket_delegate.2.html
        def socket_delegate_syscall(domain,type,protocol,epid) = syscall(450,domain,type,protocol,epid)
        # Macro to call the `necp_match_policy` syscall.
        # @param [Register, Integer] parameters
        # @param [Register, Integer] parameters_size
        # @param [Register, Integer] returned_result
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/necp_match_policy.2.html
        def necp_match_policy_syscall(parameters,parameters_size,returned_result) = syscall(460,parameters,parameters_size,returned_result)
        # Macro to call the `getattrlistbulk` syscall.
        # @param [Register, Integer] dirfd
        # @param [Register, Integer] alist
        # @param [Register, Integer] attributeBuffer
        # @param [Register, Integer] bufferSize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getattrlistbulk.2.html
        def getattrlistbulk_syscall(dirfd,alist,attributeBuffer,bufferSize,options) = syscall(461,dirfd,alist,attributeBuffer,bufferSize,options)
        # Macro to call the `clonefileat` syscall.
        # @param [Register, Integer] src_dirfd
        # @param [Register, Integer] src
        # @param [Register, Integer] dst_dirfd
        # @param [Register, Integer] dst
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/clonefileat.2.html
        def clonefileat_syscall(src_dirfd,src,dst_dirfd,dst,flags) = syscall(462,src_dirfd,src,dst_dirfd,dst,flags)
        # Macro to call the `openat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/openat.2.html
        def openat_syscall(fd,path,flags,mode) = syscall(463,fd,path,flags,mode)
        # Macro to call the `openat_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/openat_nocancel.2.html
        def openat_nocancel_syscall(fd,path,flags,mode) = syscall(464,fd,path,flags,mode)
        # Macro to call the `renameat` syscall.
        # @param [Register, Integer] fromfd
        # @param [Register, Integer] from
        # @param [Register, Integer] tofd
        # @param [Register, Integer] to
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/renameat.2.html
        def renameat_syscall(fromfd,from,tofd,to) = syscall(465,fromfd,from,tofd,to)
        # Macro to call the `faccessat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] amode
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/faccessat.2.html
        def faccessat_syscall(fd,path,amode,flag) = syscall(466,fd,path,amode,flag)
        # Macro to call the `fchmodat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fchmodat.2.html
        def fchmodat_syscall(fd,path,mode,flag) = syscall(467,fd,path,mode,flag)
        # Macro to call the `fchownat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fchownat.2.html
        def fchownat_syscall(fd,path,uid,gid,flag) = syscall(468,fd,path,uid,gid,flag)
        # Macro to call the `fstatat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fstatat.2.html
        def fstatat_syscall(fd,path,ub,flag) = syscall(469,fd,path,ub,flag)
        # Macro to call the `fstatat64` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fstatat64.2.html
        def fstatat64_syscall(fd,path,ub,flag) = syscall(470,fd,path,ub,flag)
        # Macro to call the `linkat` syscall.
        # @param [Register, Integer] fd1
        # @param [Register, Integer] path
        # @param [Register, Integer] fd2
        # @param [Register, Integer] link
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/linkat.2.html
        def linkat_syscall(fd1,path,fd2,link,flag) = syscall(471,fd1,path,fd2,link,flag)
        # Macro to call the `unlinkat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flag
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/unlinkat.2.html
        def unlinkat_syscall(fd,path,flag) = syscall(472,fd,path,flag)
        # Macro to call the `readlinkat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/readlinkat.2.html
        def readlinkat_syscall(fd,path,buf,bufsize) = syscall(473,fd,path,buf,bufsize)
        # Macro to call the `symlinkat` syscall.
        # @param [Register, Integer] path1
        # @param [Register, Integer] fd
        # @param [Register, Integer] path2
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/symlinkat.2.html
        def symlinkat_syscall(path1,fd,path2) = syscall(474,path1,fd,path2)
        # Macro to call the `mkdirat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mkdirat.2.html
        def mkdirat_syscall(fd,path,mode) = syscall(475,fd,path,mode)
        # Macro to call the `getattrlistat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] alist
        # @param [Register, Integer] attributeBuffer
        # @param [Register, Integer] bufferSize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/getattrlistat.2.html
        def getattrlistat_syscall(fd,path,alist,attributeBuffer,bufferSize,options) = syscall(476,fd,path,alist,attributeBuffer,bufferSize,options)
        # Macro to call the `openbyid_np` syscall.
        # @param [Register, Integer] fsid
        # @param [Register, Integer] objid
        # @param [Register, Integer] oflags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/openbyid_np.2.html
        def openbyid_np_syscall(fsid,objid,oflags) = syscall(479,fsid,objid,oflags)
        # Macro to call the `guarded_pwrite_np` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] guard
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/guarded_pwrite_np.2.html
        def guarded_pwrite_np_syscall(fd,guard,buf,nbyte,offset) = syscall(486,fd,guard,buf,nbyte,offset)
        # Macro to call the `guarded_writev_np` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] guard
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/guarded_writev_np.2.html
        def guarded_writev_np_syscall(fd,guard,iovp,iovcnt) = syscall(487,fd,guard,iovp,iovcnt)
        # Macro to call the `renameatx_np` syscall.
        # @param [Register, Integer] fromfd
        # @param [Register, Integer] from
        # @param [Register, Integer] tofd
        # @param [Register, Integer] to
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/renameatx_np.2.html
        def renameatx_np_syscall(fromfd,from,tofd,to,flags) = syscall(488,fromfd,from,tofd,to,flags)
        # Macro to call the `mremap_encrypted` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] cryptid
        # @param [Register, Integer] cputype
        # @param [Register, Integer] cpusubtype
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mremap_encrypted.2.html
        def mremap_encrypted_syscall(addr,len,cryptid,cputype,cpusubtype) = syscall(489,addr,len,cryptid,cputype,cpusubtype)
        # Macro to call the `netagent_trigger` syscall.
        # @param [Register, Integer] agent_uuid
        # @param [Register, Integer] agent_uuidlen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/netagent_trigger.2.html
        def netagent_trigger_syscall(agent_uuid,agent_uuidlen) = syscall(490,agent_uuid,agent_uuidlen)
        # Macro to call the `stack_snapshot_with_config` syscall.
        # @param [Register, Integer] stackshot_config_version
        # @param [Register, Integer] stackshot_config
        # @param [Register, Integer] stackshot_config_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/stack_snapshot_with_config.2.html
        def stack_snapshot_with_config_syscall(stackshot_config_version,stackshot_config,stackshot_config_size) = syscall(491,stackshot_config_version,stackshot_config,stackshot_config_size)
        # Macro to call the `microstackshot` syscall.
        # @param [Register, Integer] tracebuf
        # @param [Register, Integer] tracebuf_size
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/microstackshot.2.html
        def microstackshot_syscall(tracebuf,tracebuf_size,flags) = syscall(492,tracebuf,tracebuf_size,flags)
        # Macro to call the `persona` syscall.
        # @param [Register, Integer] operation
        # @param [Register, Integer] flags
        # @param [Register, Integer] info
        # @param [Register, Integer] id
        # @param [Register, Integer] idlen
        # @param [Register, Integer] path
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/persona.2.html
        def persona_syscall(operation,flags,info,id,idlen,path) = syscall(494,operation,flags,info,id,idlen,path)
        # Macro to call the `necp_client_action` syscall.
        # @param [Register, Integer] necp_fd
        # @param [Register, Integer] action
        # @param [Register, Integer] client_id
        # @param [Register, Integer] client_id_len
        # @param [Register, Integer] buffer
        # @param [Register, Integer] buffer_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/necp_client_action.2.html
        def necp_client_action_syscall(necp_fd,action,client_id,client_id_len,buffer,buffer_size) = syscall(502,necp_fd,action,client_id,client_id_len,buffer,buffer_size)
        # Macro to call the `__nexus_open` syscall.
        # @param [Register, Integer] init
        # @param [Register, Integer] init_len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__nexus_open.2.html
        def __nexus_open_syscall(init,init_len) = syscall(503,init,init_len)
        # Macro to call the `__nexus_register` syscall.
        # @param [Register, Integer] ctl
        # @param [Register, Integer] reg
        # @param [Register, Integer] reg_len
        # @param [Register, Integer] prov_uuid
        # @param [Register, Integer] prov_uuid_len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__nexus_register.2.html
        def __nexus_register_syscall(ctl,reg,reg_len,prov_uuid,prov_uuid_len) = syscall(504,ctl,reg,reg_len,prov_uuid,prov_uuid_len)
        # Macro to call the `__nexus_deregister` syscall.
        # @param [Register, Integer] ctl
        # @param [Register, Integer] prov_uuid
        # @param [Register, Integer] prov_uuid_len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__nexus_deregister.2.html
        def __nexus_deregister_syscall(ctl,prov_uuid,prov_uuid_len) = syscall(505,ctl,prov_uuid,prov_uuid_len)
        # Macro to call the `__nexus_create` syscall.
        # @param [Register, Integer] ctl
        # @param [Register, Integer] prov_uuid
        # @param [Register, Integer] prov_uuid_len
        # @param [Register, Integer] nx_uuid
        # @param [Register, Integer] nx_uuid_len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__nexus_create.2.html
        def __nexus_create_syscall(ctl,prov_uuid,prov_uuid_len,nx_uuid,nx_uuid_len) = syscall(506,ctl,prov_uuid,prov_uuid_len,nx_uuid,nx_uuid_len)
        # Macro to call the `__nexus_destroy` syscall.
        # @param [Register, Integer] ctl
        # @param [Register, Integer] nx_uuid
        # @param [Register, Integer] nx_uuid_len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__nexus_destroy.2.html
        def __nexus_destroy_syscall(ctl,nx_uuid,nx_uuid_len) = syscall(507,ctl,nx_uuid,nx_uuid_len)
        # Macro to call the `__nexus_get_opt` syscall.
        # @param [Register, Integer] ctl
        # @param [Register, Integer] opt
        # @param [Register, Integer] aoptval
        # @param [Register, Integer] aoptlen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__nexus_get_opt.2.html
        def __nexus_get_opt_syscall(ctl,opt,aoptval,aoptlen) = syscall(508,ctl,opt,aoptval,aoptlen)
        # Macro to call the `__nexus_set_opt` syscall.
        # @param [Register, Integer] ctl
        # @param [Register, Integer] opt
        # @param [Register, Integer] aoptval
        # @param [Register, Integer] optlen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__nexus_set_opt.2.html
        def __nexus_set_opt_syscall(ctl,opt,aoptval,optlen) = syscall(509,ctl,opt,aoptval,optlen)
        # Macro to call the `__channel_open` syscall.
        # @param [Register, Integer] init
        # @param [Register, Integer] init_len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__channel_open.2.html
        def __channel_open_syscall(init,init_len) = syscall(510,init,init_len)
        # Macro to call the `__channel_get_info` syscall.
        # @param [Register, Integer] c
        # @param [Register, Integer] cinfo
        # @param [Register, Integer] cinfolen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__channel_get_info.2.html
        def __channel_get_info_syscall(c,cinfo,cinfolen) = syscall(511,c,cinfo,cinfolen)
        # Macro to call the `__channel_sync` syscall.
        # @param [Register, Integer] c
        # @param [Register, Integer] mode
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__channel_sync.2.html
        def __channel_sync_syscall(c,mode,flags) = syscall(512,c,mode,flags)
        # Macro to call the `__channel_get_opt` syscall.
        # @param [Register, Integer] c
        # @param [Register, Integer] opt
        # @param [Register, Integer] aoptval
        # @param [Register, Integer] aoptlen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__channel_get_opt.2.html
        def __channel_get_opt_syscall(c,opt,aoptval,aoptlen) = syscall(513,c,opt,aoptval,aoptlen)
        # Macro to call the `__channel_set_opt` syscall.
        # @param [Register, Integer] c
        # @param [Register, Integer] opt
        # @param [Register, Integer] aoptval
        # @param [Register, Integer] optlen
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/__channel_set_opt.2.html
        def __channel_set_opt_syscall(c,opt,aoptval,optlen) = syscall(514,c,opt,aoptval,optlen)
        # Macro to call the `fclonefileat` syscall.
        # @param [Register, Integer] src_fd
        # @param [Register, Integer] dst_dirfd
        # @param [Register, Integer] dst
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fclonefileat.2.html
        def fclonefileat_syscall(src_fd,dst_dirfd,dst,flags) = syscall(517,src_fd,dst_dirfd,dst,flags)
        # Macro to call the `terminate_with_payload` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] reason_namespace
        # @param [Register, Integer] reason_code
        # @param [Register, Integer] payload
        # @param [Register, Integer] payload_size
        # @param [Register, Integer] reason_string
        # @param [Register, Integer] reason_flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/terminate_with_payload.2.html
        def terminate_with_payload_syscall(pid,reason_namespace,reason_code,payload,payload_size,reason_string,reason_flags) = syscall(520,pid,reason_namespace,reason_code,payload,payload_size,reason_string,reason_flags)
        # Macro to call the `abort_with_payload` syscall.
        # @param [Register, Integer] reason_namespace
        # @param [Register, Integer] reason_code
        # @param [Register, Integer] payload
        # @param [Register, Integer] payload_size
        # @param [Register, Integer] reason_string
        # @param [Register, Integer] reason_flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/abort_with_payload.2.html
        def abort_with_payload_syscall(reason_namespace,reason_code,payload,payload_size,reason_string,reason_flags) = syscall(521,reason_namespace,reason_code,payload,payload_size,reason_string,reason_flags)
        # Macro to call the `necp_session_action` syscall.
        # @param [Register, Integer] necp_fd
        # @param [Register, Integer] action
        # @param [Register, Integer] in_buffer
        # @param [Register, Integer] in_buffer_length
        # @param [Register, Integer] out_buffer
        # @param [Register, Integer] out_buffer_length
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/necp_session_action.2.html
        def necp_session_action_syscall(necp_fd,action,in_buffer,in_buffer_length,out_buffer,out_buffer_length) = syscall(523,necp_fd,action,in_buffer,in_buffer_length,out_buffer,out_buffer_length)
        # Macro to call the `setattrlistat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] alist
        # @param [Register, Integer] attributeBuffer
        # @param [Register, Integer] bufferSize
        # @param [Register, Integer] options
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/setattrlistat.2.html
        def setattrlistat_syscall(fd,path,alist,attributeBuffer,bufferSize,options) = syscall(524,fd,path,alist,attributeBuffer,bufferSize,options)
        # Macro to call the `net_qos_guideline` syscall.
        # @param [Register, Integer] param
        # @param [Register, Integer] param_len
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/net_qos_guideline.2.html
        def net_qos_guideline_syscall(param,param_len) = syscall(525,param,param_len)
        # Macro to call the `fmount` syscall.
        # @param [Register, Integer] type
        # @param [Register, Integer] fd
        # @param [Register, Integer] flags
        # @param [Register, Integer] data
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/fmount.2.html
        def fmount_syscall(type,fd,flags,data) = syscall(526,type,fd,flags,data)
        # Macro to call the `kqueue_workloop_ctl` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] options
        # @param [Register, Integer] addr
        # @param [Register, Integer] sz
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/kqueue_workloop_ctl.2.html
        def kqueue_workloop_ctl_syscall(cmd,options,addr,sz) = syscall(530,cmd,options,addr,sz)
        # Macro to call the `task_inspect_for_pid` syscall.
        # @param [Register, Integer] target_tport
        # @param [Register, Integer] pid
        # @param [Register, Integer] t
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/task_inspect_for_pid.2.html
        def task_inspect_for_pid_syscall(target_tport,pid,t) = syscall(538,target_tport,pid,t)
        # Macro to call the `task_read_for_pid` syscall.
        # @param [Register, Integer] target_tport
        # @param [Register, Integer] pid
        # @param [Register, Integer] t
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/task_read_for_pid.2.html
        def task_read_for_pid_syscall(target_tport,pid,t) = syscall(539,target_tport,pid,t)
        # Macro to call the `sys_preadv` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_preadv.2.html
        def sys_preadv_syscall(fd,iovp,iovcnt,offset) = syscall(540,fd,iovp,iovcnt,offset)
        # Macro to call the `sys_pwritev` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_pwritev.2.html
        def sys_pwritev_syscall(fd,iovp,iovcnt,offset) = syscall(541,fd,iovp,iovcnt,offset)
        # Macro to call the `sys_preadv_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_preadv_nocancel.2.html
        def sys_preadv_nocancel_syscall(fd,iovp,iovcnt,offset) = syscall(542,fd,iovp,iovcnt,offset)
        # Macro to call the `sys_pwritev_nocancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_pwritev_nocancel.2.html
        def sys_pwritev_nocancel_syscall(fd,iovp,iovcnt,offset) = syscall(543,fd,iovp,iovcnt,offset)
        # Macro to call the `proc_info_extended_id` syscall.
        # @param [Register, Integer] callnum
        # @param [Register, Integer] pid
        # @param [Register, Integer] flavor
        # @param [Register, Integer] flags
        # @param [Register, Integer] ext_id
        # @param [Register, Integer] arg
        # @param [Register, Integer] buffer
        # @param [Register, Integer] buffersize
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/proc_info_extended_id.2.html
        def proc_info_extended_id_syscall(callnum,pid,flavor,flags,ext_id,arg,buffer,buffersize) = syscall(545,callnum,pid,flavor,flags,ext_id,arg,buffer,buffersize)
        # Macro to call the `tracker_action` syscall.
        # @param [Register, Integer] action
        # @param [Register, Integer] buffer
        # @param [Register, Integer] buffer_size
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/tracker_action.2.html
        def tracker_action_syscall(action,buffer,buffer_size) = syscall(546,action,buffer,buffer_size)
        # Macro to call the `debug_syscall_reject` syscall.
        # @param [Register, Integer] packed_selectors
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/debug_syscall_reject.2.html
        def debug_syscall_reject_syscall(packed_selectors) = syscall(547,packed_selectors)
        # Macro to call the `sys_debug_syscall_reject_config` syscall.
        # @param [Register, Integer] packed_selectors1
        # @param [Register, Integer] packed_selectors2
        # @param [Register, Integer] flags
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/sys_debug_syscall_reject_config.2.html
        def sys_debug_syscall_reject_config_syscall(packed_selectors1,packed_selectors2,flags) = syscall(548,packed_selectors1,packed_selectors2,flags)
        # Macro to call the `freadlink` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/freadlink.2.html
        def freadlink_syscall(fd,buf,bufsize) = syscall(551,fd,buf,bufsize)
        # Macro to call the `mkfifoat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mkfifoat.2.html
        def mkfifoat_syscall(fd,path,mode) = syscall(553,fd,path,mode)
        # Macro to call the `mknodat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] dev
        # @see https://developer.apple.com/library/archive/documentation/System/Conceptual/ManPages_iPhoneOS/man2/mknodat.2.html
        def mknodat_syscall(fd,path,mode,dev) = syscall(554,fd,path,mode,dev)
      end
    end
  end
end
