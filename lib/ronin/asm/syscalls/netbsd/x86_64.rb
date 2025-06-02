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
      module NetBSD
        #
        # NetBSD x86-64 syscall macros.
        #
        # @since 1.0.0
        #
        module X86_64
          # Macro to call the `syscall` syscall.
          # @param [Register, Integer] code
          # @param [Register, Integer] args
          # @see https://man.netbsd.org/syscall.2
          def syscall_syscall(code,*args) = syscall_macro(0,code,*args)
          # Macro to call the `exit` syscall.
          # @param [Register, Integer] rval
          # @see https://man.netbsd.org/exit.2
          def exit_syscall(rval) = syscall_macro(1,rval)
          # Macro to call the `fork` syscall.
          # @see https://man.netbsd.org/fork.2
          def fork_syscall = syscall_macro(2)
          # Macro to call the `read` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] nbyte
          # @see https://man.netbsd.org/read.2
          def read_syscall(fd,buf,nbyte) = syscall_macro(3,fd,buf,nbyte)
          # Macro to call the `write` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] nbyte
          # @see https://man.netbsd.org/write.2
          def write_syscall(fd,buf,nbyte) = syscall_macro(4,fd,buf,nbyte)
          # Macro to call the `open` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/open.2
          def open_syscall(path,flags,*mode) = syscall_macro(5,path,flags,*mode)
          # Macro to call the `close` syscall.
          # @param [Register, Integer] fd
          # @see https://man.netbsd.org/close.2
          def close_syscall(fd) = syscall_macro(6,fd)
          # Macro to call the `link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] link
          # @see https://man.netbsd.org/link.2
          def link_syscall(path,link) = syscall_macro(9,path,link)
          # Macro to call the `unlink` syscall.
          # @param [Register, Integer] path
          # @see https://man.netbsd.org/unlink.2
          def unlink_syscall(path) = syscall_macro(10,path)
          # Macro to call the `chdir` syscall.
          # @param [Register, Integer] path
          # @see https://man.netbsd.org/chdir.2
          def chdir_syscall(path) = syscall_macro(12,path)
          # Macro to call the `fchdir` syscall.
          # @param [Register, Integer] fd
          # @see https://man.netbsd.org/fchdir.2
          def fchdir_syscall(fd) = syscall_macro(13,fd)
          # Macro to call the `chmod` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/chmod.2
          def chmod_syscall(path,mode) = syscall_macro(15,path,mode)
          # Macro to call the `chown` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] uid
          # @param [Register, Integer] gid
          # @see https://man.netbsd.org/chown.2
          def chown_syscall(path,uid,gid) = syscall_macro(16,path,uid,gid)
          # Macro to call the `obreak` syscall.
          # @param [Register, Integer] nsize
          # @see https://man.netbsd.org/obreak.2
          def obreak_syscall(nsize) = syscall_macro(17,nsize)
          # Macro to call the `getpid_with_ppid` syscall.
          # @see https://man.netbsd.org/getpid_with_ppid.2
          def getpid_with_ppid_syscall = syscall_macro(20)
          # Macro to call the `unmount` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/unmount.2
          def unmount_syscall(path,flags) = syscall_macro(22,path,flags)
          # Macro to call the `setuid` syscall.
          # @param [Register, Integer] uid
          # @see https://man.netbsd.org/setuid.2
          def setuid_syscall(uid) = syscall_macro(23,uid)
          # Macro to call the `getuid_with_euid` syscall.
          # @see https://man.netbsd.org/getuid_with_euid.2
          def getuid_with_euid_syscall = syscall_macro(24)
          # Macro to call the `geteuid` syscall.
          # @see https://man.netbsd.org/geteuid.2
          def geteuid_syscall = syscall_macro(25)
          # Macro to call the `ptrace` syscall.
          # @param [Register, Integer] req
          # @param [Register, Integer] pid
          # @param [Register, Integer] addr
          # @param [Register, Integer] data
          # @see https://man.netbsd.org/ptrace.2
          def ptrace_syscall(req,pid,addr,data) = syscall_macro(26,req,pid,addr,data)
          # Macro to call the `recvmsg` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] msg
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/recvmsg.2
          def recvmsg_syscall(s,msg,flags) = syscall_macro(27,s,msg,flags)
          # Macro to call the `sendmsg` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] msg
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/sendmsg.2
          def sendmsg_syscall(s,msg,flags) = syscall_macro(28,s,msg,flags)
          # Macro to call the `recvfrom` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] buf
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @param [Register, Integer] from
          # @param [Register, Integer] fromlenaddr
          # @see https://man.netbsd.org/recvfrom.2
          def recvfrom_syscall(s,buf,len,flags,from,fromlenaddr) = syscall_macro(29,s,buf,len,flags,from,fromlenaddr)
          # Macro to call the `accept` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] name
          # @param [Register, Integer] anamelen
          # @see https://man.netbsd.org/accept.2
          def accept_syscall(s,name,anamelen) = syscall_macro(30,s,name,anamelen)
          # Macro to call the `getpeername` syscall.
          # @param [Register, Integer] fdes
          # @param [Register, Integer] asa
          # @param [Register, Integer] alen
          # @see https://man.netbsd.org/getpeername.2
          def getpeername_syscall(fdes,asa,alen) = syscall_macro(31,fdes,asa,alen)
          # Macro to call the `getsockname` syscall.
          # @param [Register, Integer] fdes
          # @param [Register, Integer] asa
          # @param [Register, Integer] alen
          # @see https://man.netbsd.org/getsockname.2
          def getsockname_syscall(fdes,asa,alen) = syscall_macro(32,fdes,asa,alen)
          # Macro to call the `access` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/access.2
          def access_syscall(path,flags) = syscall_macro(33,path,flags)
          # Macro to call the `chflags` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/chflags.2
          def chflags_syscall(path,flags) = syscall_macro(34,path,flags)
          # Macro to call the `fchflags` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/fchflags.2
          def fchflags_syscall(fd,flags) = syscall_macro(35,fd,flags)
          # Macro to call the `sync` syscall.
          # @see https://man.netbsd.org/sync.2
          def sync_syscall = syscall_macro(36)
          # Macro to call the `kill` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] signum
          # @see https://man.netbsd.org/kill.2
          def kill_syscall(pid,signum) = syscall_macro(37,pid,signum)
          # Macro to call the `getppid` syscall.
          # @see https://man.netbsd.org/getppid.2
          def getppid_syscall = syscall_macro(39)
          # Macro to call the `dup` syscall.
          # @param [Register, Integer] fd
          # @see https://man.netbsd.org/dup.2
          def dup_syscall(fd) = syscall_macro(41,fd)
          # Macro to call the `pipe` syscall.
          # @see https://man.netbsd.org/pipe.2
          def pipe_syscall = syscall_macro(42)
          # Macro to call the `getegid` syscall.
          # @see https://man.netbsd.org/getegid.2
          def getegid_syscall = syscall_macro(43)
          # Macro to call the `profil` syscall.
          # @param [Register, Integer] samples
          # @param [Register, Integer] size
          # @param [Register, Integer] offset
          # @param [Register, Integer] scale
          # @see https://man.netbsd.org/profil.2
          def profil_syscall(samples,size,offset,scale) = syscall_macro(44,samples,size,offset,scale)
          # Macro to call the `ktrace` syscall.
          # @param [Register, Integer] fname
          # @param [Register, Integer] ops
          # @param [Register, Integer] facs
          # @param [Register, Integer] pid
          # @see https://man.netbsd.org/ktrace.2
          def ktrace_syscall(fname,ops,facs,pid) = syscall_macro(45,fname,ops,facs,pid)
          # Macro to call the `getgid_with_egid` syscall.
          # @see https://man.netbsd.org/getgid_with_egid.2
          def getgid_with_egid_syscall = syscall_macro(47)
          # Macro to call the `__getlogin` syscall.
          # @param [Register, Integer] namebuf
          # @param [Register, Integer] namelen
          # @see https://man.netbsd.org/__getlogin.2
          def __getlogin_syscall(namebuf,namelen) = syscall_macro(49,namebuf,namelen)
          # Macro to call the `__setlogin` syscall.
          # @param [Register, Integer] namebuf
          # @see https://man.netbsd.org/__setlogin.2
          def __setlogin_syscall(namebuf) = syscall_macro(50,namebuf)
          # Macro to call the `acct` syscall.
          # @param [Register, Integer] path
          # @see https://man.netbsd.org/acct.2
          def acct_syscall(path) = syscall_macro(51,path)
          # Macro to call the `ioctl` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] com
          # @param [Register, Integer] data
          # @see https://man.netbsd.org/ioctl.2
          def ioctl_syscall(fd,com,*data) = syscall_macro(54,fd,com,*data)
          # Macro to call the `revoke` syscall.
          # @param [Register, Integer] path
          # @see https://man.netbsd.org/revoke.2
          def revoke_syscall(path) = syscall_macro(56,path)
          # Macro to call the `symlink` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] link
          # @see https://man.netbsd.org/symlink.2
          def symlink_syscall(path,link) = syscall_macro(57,path,link)
          # Macro to call the `readlink` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @see https://man.netbsd.org/readlink.2
          def readlink_syscall(path,buf,count) = syscall_macro(58,path,buf,count)
          # Macro to call the `execve` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] argp
          # @param [Register, Integer] envp
          # @see https://man.netbsd.org/execve.2
          def execve_syscall(path,argp,envp) = syscall_macro(59,path,argp,envp)
          # Macro to call the `umask` syscall.
          # @param [Register, Integer] newmask
          # @see https://man.netbsd.org/umask.2
          def umask_syscall(newmask) = syscall_macro(60,newmask)
          # Macro to call the `chroot` syscall.
          # @param [Register, Integer] path
          # @see https://man.netbsd.org/chroot.2
          def chroot_syscall(path) = syscall_macro(61,path)
          # Macro to call the `vfork` syscall.
          # @see https://man.netbsd.org/vfork.2
          def vfork_syscall = syscall_macro(66)
          # Macro to call the `ovadvise` syscall.
          # @param [Register, Integer] anom
          # @see https://man.netbsd.org/ovadvise.2
          def ovadvise_syscall(anom) = syscall_macro(72,anom)
          # Macro to call the `munmap` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/munmap.2
          def munmap_syscall(addr,len) = syscall_macro(73,addr,len)
          # Macro to call the `mprotect` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @param [Register, Integer] prot
          # @see https://man.netbsd.org/mprotect.2
          def mprotect_syscall(addr,len,prot) = syscall_macro(74,addr,len,prot)
          # Macro to call the `madvise` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @param [Register, Integer] behav
          # @see https://man.netbsd.org/madvise.2
          def madvise_syscall(addr,len,behav) = syscall_macro(75,addr,len,behav)
          # Macro to call the `mincore` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @param [Register, Integer] vec
          # @see https://man.netbsd.org/mincore.2
          def mincore_syscall(addr,len,vec) = syscall_macro(78,addr,len,vec)
          # Macro to call the `getgroups` syscall.
          # @param [Register, Integer] gidsetsize
          # @param [Register, Integer] gidset
          # @see https://man.netbsd.org/getgroups.2
          def getgroups_syscall(gidsetsize,gidset) = syscall_macro(79,gidsetsize,gidset)
          # Macro to call the `setgroups` syscall.
          # @param [Register, Integer] gidsetsize
          # @param [Register, Integer] gidset
          # @see https://man.netbsd.org/setgroups.2
          def setgroups_syscall(gidsetsize,gidset) = syscall_macro(80,gidsetsize,gidset)
          # Macro to call the `getpgrp` syscall.
          # @see https://man.netbsd.org/getpgrp.2
          def getpgrp_syscall = syscall_macro(81)
          # Macro to call the `setpgid` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] pgid
          # @see https://man.netbsd.org/setpgid.2
          def setpgid_syscall(pid,pgid) = syscall_macro(82,pid,pgid)
          # Macro to call the `dup2` syscall.
          # @param [Register, Integer] from
          # @param [Register, Integer] to
          # @see https://man.netbsd.org/dup2.2
          def dup2_syscall(from,to) = syscall_macro(90,from,to)
          # Macro to call the `getrandom` syscall.
          # @param [Register, Integer] buf
          # @param [Register, Integer] buflen
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/getrandom.2
          def getrandom_syscall(buf,buflen,flags) = syscall_macro(91,buf,buflen,flags)
          # Macro to call the `fcntl` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://man.netbsd.org/fcntl.2
          def fcntl_syscall(fd,cmd,*arg) = syscall_macro(92,fd,cmd,*arg)
          # Macro to call the `fsync` syscall.
          # @param [Register, Integer] fd
          # @see https://man.netbsd.org/fsync.2
          def fsync_syscall(fd) = syscall_macro(95,fd)
          # Macro to call the `setpriority` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @param [Register, Integer] prio
          # @see https://man.netbsd.org/setpriority.2
          def setpriority_syscall(which,who,prio) = syscall_macro(96,which,who,prio)
          # Macro to call the `connect` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] name
          # @param [Register, Integer] namelen
          # @see https://man.netbsd.org/connect.2
          def connect_syscall(s,name,namelen) = syscall_macro(98,s,name,namelen)
          # Macro to call the `getpriority` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @see https://man.netbsd.org/getpriority.2
          def getpriority_syscall(which,who) = syscall_macro(100,which,who)
          # Macro to call the `bind` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] name
          # @param [Register, Integer] namelen
          # @see https://man.netbsd.org/bind.2
          def bind_syscall(s,name,namelen) = syscall_macro(104,s,name,namelen)
          # Macro to call the `setsockopt` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] level
          # @param [Register, Integer] name
          # @param [Register, Integer] val
          # @param [Register, Integer] valsize
          # @see https://man.netbsd.org/setsockopt.2
          def setsockopt_syscall(s,level,name,val,valsize) = syscall_macro(105,s,level,name,val,valsize)
          # Macro to call the `listen` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] backlog
          # @see https://man.netbsd.org/listen.2
          def listen_syscall(s,backlog) = syscall_macro(106,s,backlog)
          # Macro to call the `getsockopt` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] level
          # @param [Register, Integer] name
          # @param [Register, Integer] val
          # @param [Register, Integer] avalsize
          # @see https://man.netbsd.org/getsockopt.2
          def getsockopt_syscall(s,level,name,val,avalsize) = syscall_macro(118,s,level,name,val,avalsize)
          # Macro to call the `readv` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] iovp
          # @param [Register, Integer] iovcnt
          # @see https://man.netbsd.org/readv.2
          def readv_syscall(fd,iovp,iovcnt) = syscall_macro(120,fd,iovp,iovcnt)
          # Macro to call the `writev` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] iovp
          # @param [Register, Integer] iovcnt
          # @see https://man.netbsd.org/writev.2
          def writev_syscall(fd,iovp,iovcnt) = syscall_macro(121,fd,iovp,iovcnt)
          # Macro to call the `fchown` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] uid
          # @param [Register, Integer] gid
          # @see https://man.netbsd.org/fchown.2
          def fchown_syscall(fd,uid,gid) = syscall_macro(123,fd,uid,gid)
          # Macro to call the `fchmod` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/fchmod.2
          def fchmod_syscall(fd,mode) = syscall_macro(124,fd,mode)
          # Macro to call the `setreuid` syscall.
          # @param [Register, Integer] ruid
          # @param [Register, Integer] euid
          # @see https://man.netbsd.org/setreuid.2
          def setreuid_syscall(ruid,euid) = syscall_macro(126,ruid,euid)
          # Macro to call the `setregid` syscall.
          # @param [Register, Integer] rgid
          # @param [Register, Integer] egid
          # @see https://man.netbsd.org/setregid.2
          def setregid_syscall(rgid,egid) = syscall_macro(127,rgid,egid)
          # Macro to call the `rename` syscall.
          # @param [Register, Integer] from
          # @param [Register, Integer] to
          # @see https://man.netbsd.org/rename.2
          def rename_syscall(from,to) = syscall_macro(128,from,to)
          # Macro to call the `flock` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] how
          # @see https://man.netbsd.org/flock.2
          def flock_syscall(fd,how) = syscall_macro(131,fd,how)
          # Macro to call the `mkfifo` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/mkfifo.2
          def mkfifo_syscall(path,mode) = syscall_macro(132,path,mode)
          # Macro to call the `sendto` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] buf
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @param [Register, Integer] to
          # @param [Register, Integer] tolen
          # @see https://man.netbsd.org/sendto.2
          def sendto_syscall(s,buf,len,flags,to,tolen) = syscall_macro(133,s,buf,len,flags,to,tolen)
          # Macro to call the `shutdown` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] how
          # @see https://man.netbsd.org/shutdown.2
          def shutdown_syscall(s,how) = syscall_macro(134,s,how)
          # Macro to call the `socketpair` syscall.
          # @param [Register, Integer] domain
          # @param [Register, Integer] type
          # @param [Register, Integer] protocol
          # @param [Register, Integer] rsv
          # @see https://man.netbsd.org/socketpair.2
          def socketpair_syscall(domain,type,protocol,rsv) = syscall_macro(135,domain,type,protocol,rsv)
          # Macro to call the `mkdir` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/mkdir.2
          def mkdir_syscall(path,mode) = syscall_macro(136,path,mode)
          # Macro to call the `rmdir` syscall.
          # @param [Register, Integer] path
          # @see https://man.netbsd.org/rmdir.2
          def rmdir_syscall(path) = syscall_macro(137,path)
          # Macro to call the `setsid` syscall.
          # @see https://man.netbsd.org/setsid.2
          def setsid_syscall = syscall_macro(147)
          # Macro to call the `nfssvc` syscall.
          # @param [Register, Integer] flag
          # @param [Register, Integer] argp
          # @see https://man.netbsd.org/nfssvc.2
          def nfssvc_syscall(flag,argp) = syscall_macro(155,flag,argp)
          # Macro to call the `sysarch` syscall.
          # @param [Register, Integer] op
          # @param [Register, Integer] parms
          # @see https://man.netbsd.org/sysarch.2
          def sysarch_syscall(op,parms) = syscall_macro(165,op,parms)
          # Macro to call the `__futex` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] op
          # @param [Register, Integer] val
          # @param [Register, Integer] timeout
          # @param [Register, Integer] uaddr2
          # @param [Register, Integer] val2
          # @param [Register, Integer] val3
          # @see https://man.netbsd.org/__futex.2
          def __futex_syscall(uaddr,op,val,timeout,uaddr2,val2,val3) = syscall_macro(166,uaddr,op,val,timeout,uaddr2,val2,val3)
          # Macro to call the `__futex_set_robust_list` syscall.
          # @param [Register, Integer] head
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/__futex_set_robust_list.2
          def __futex_set_robust_list_syscall(head,len) = syscall_macro(167,head,len)
          # Macro to call the `__futex_get_robust_list` syscall.
          # @param [Register, Integer] lwpid
          # @param [Register, Integer] headp
          # @param [Register, Integer] lenp
          # @see https://man.netbsd.org/__futex_get_robust_list.2
          def __futex_get_robust_list_syscall(lwpid,headp,lenp) = syscall_macro(168,lwpid,headp,lenp)
          # Macro to call the `pread` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] nbyte
          # @param [Register, Integer] pad
          # @param [Register, Integer] offset
          # @see https://man.netbsd.org/pread.2
          def pread_syscall(fd,buf,nbyte,pad,offset) = syscall_macro(173,fd,buf,nbyte,pad,offset)
          # Macro to call the `pwrite` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] nbyte
          # @param [Register, Integer] pad
          # @param [Register, Integer] offset
          # @see https://man.netbsd.org/pwrite.2
          def pwrite_syscall(fd,buf,nbyte,pad,offset) = syscall_macro(174,fd,buf,nbyte,pad,offset)
          # Macro to call the `ntp_adjtime` syscall.
          # @param [Register, Integer] tp
          # @see https://man.netbsd.org/ntp_adjtime.2
          def ntp_adjtime_syscall(tp) = syscall_macro(176,tp)
          # Macro to call the `timerfd_create` syscall.
          # @param [Register, Integer] clock_id
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/timerfd_create.2
          def timerfd_create_syscall(clock_id,flags) = syscall_macro(177,clock_id,flags)
          # Macro to call the `timerfd_settime` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] flags
          # @param [Register, Integer] new_value
          # @param [Register, Integer] old_value
          # @see https://man.netbsd.org/timerfd_settime.2
          def timerfd_settime_syscall(fd,flags,new_value,old_value) = syscall_macro(178,fd,flags,new_value,old_value)
          # Macro to call the `timerfd_gettime` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] curr_value
          # @see https://man.netbsd.org/timerfd_gettime.2
          def timerfd_gettime_syscall(fd,curr_value) = syscall_macro(179,fd,curr_value)
          # Macro to call the `setgid` syscall.
          # @param [Register, Integer] gid
          # @see https://man.netbsd.org/setgid.2
          def setgid_syscall(gid) = syscall_macro(181,gid)
          # Macro to call the `setegid` syscall.
          # @param [Register, Integer] egid
          # @see https://man.netbsd.org/setegid.2
          def setegid_syscall(egid) = syscall_macro(182,egid)
          # Macro to call the `seteuid` syscall.
          # @param [Register, Integer] euid
          # @see https://man.netbsd.org/seteuid.2
          def seteuid_syscall(euid) = syscall_macro(183,euid)
          # Macro to call the `lfs_bmapv` syscall.
          # @param [Register, Integer] fsidp
          # @param [Register, Integer] blkiov
          # @param [Register, Integer] blkcnt
          # @see https://man.netbsd.org/lfs_bmapv.2
          def lfs_bmapv_syscall(fsidp,blkiov,blkcnt) = syscall_macro(184,fsidp,blkiov,blkcnt)
          # Macro to call the `lfs_markv` syscall.
          # @param [Register, Integer] fsidp
          # @param [Register, Integer] blkiov
          # @param [Register, Integer] blkcnt
          # @see https://man.netbsd.org/lfs_markv.2
          def lfs_markv_syscall(fsidp,blkiov,blkcnt) = syscall_macro(185,fsidp,blkiov,blkcnt)
          # Macro to call the `lfs_segclean` syscall.
          # @param [Register, Integer] fsidp
          # @param [Register, Integer] segment
          # @see https://man.netbsd.org/lfs_segclean.2
          def lfs_segclean_syscall(fsidp,segment) = syscall_macro(186,fsidp,segment)
          # Macro to call the `pathconf` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/pathconf.2
          def pathconf_syscall(path,name) = syscall_macro(191,path,name)
          # Macro to call the `fpathconf` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/fpathconf.2
          def fpathconf_syscall(fd,name) = syscall_macro(192,fd,name)
          # Macro to call the `getsockopt2` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] level
          # @param [Register, Integer] name
          # @param [Register, Integer] val
          # @param [Register, Integer] avalsize
          # @see https://man.netbsd.org/getsockopt2.2
          def getsockopt2_syscall(s,level,name,val,avalsize) = syscall_macro(193,s,level,name,val,avalsize)
          # Macro to call the `getrlimit` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] rlp
          # @see https://man.netbsd.org/getrlimit.2
          def getrlimit_syscall(which,rlp) = syscall_macro(194,which,rlp)
          # Macro to call the `setrlimit` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] rlp
          # @see https://man.netbsd.org/setrlimit.2
          def setrlimit_syscall(which,rlp) = syscall_macro(195,which,rlp)
          # Macro to call the `mmap` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @param [Register, Integer] prot
          # @param [Register, Integer] flags
          # @param [Register, Integer] fd
          # @param [Register, Integer] pad
          # @param [Register, Integer] pos
          # @see https://man.netbsd.org/mmap.2
          def mmap_syscall(addr,len,prot,flags,fd,pad,pos) = syscall_macro(197,addr,len,prot,flags,fd,pad,pos)
          # Macro to call the `__syscall` syscall.
          # @param [Register, Integer] code
          # @param [Register, Integer] args
          # @see https://man.netbsd.org/__syscall.2
          def __syscall_syscall(code,*args) = syscall_macro(198,code,*args)
          # Macro to call the `lseek` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] pad
          # @param [Register, Integer] offset
          # @param [Register, Integer] whence
          # @see https://man.netbsd.org/lseek.2
          def lseek_syscall(fd,pad,offset,whence) = syscall_macro(199,fd,pad,offset,whence)
          # Macro to call the `truncate` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] pad
          # @param [Register, Integer] length
          # @see https://man.netbsd.org/truncate.2
          def truncate_syscall(path,pad,length) = syscall_macro(200,path,pad,length)
          # Macro to call the `ftruncate` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] pad
          # @param [Register, Integer] length
          # @see https://man.netbsd.org/ftruncate.2
          def ftruncate_syscall(fd,pad,length) = syscall_macro(201,fd,pad,length)
          # Macro to call the `__sysctl` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] namelen
          # @param [Register, Integer] oldv
          # @param [Register, Integer] oldlenp
          # @param [Register, Integer] newv
          # @param [Register, Integer] newlen
          # @see https://man.netbsd.org/__sysctl.2
          def __sysctl_syscall(name,namelen,oldv,oldlenp,newv,newlen) = syscall_macro(202,name,namelen,oldv,oldlenp,newv,newlen)
          # Macro to call the `mlock` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/mlock.2
          def mlock_syscall(addr,len) = syscall_macro(203,addr,len)
          # Macro to call the `munlock` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/munlock.2
          def munlock_syscall(addr,len) = syscall_macro(204,addr,len)
          # Macro to call the `undelete` syscall.
          # @param [Register, Integer] path
          # @see https://man.netbsd.org/undelete.2
          def undelete_syscall(path) = syscall_macro(205,path)
          # Macro to call the `getpgid` syscall.
          # @param [Register, Integer] pid
          # @see https://man.netbsd.org/getpgid.2
          def getpgid_syscall(pid) = syscall_macro(207,pid)
          # Macro to call the `reboot` syscall.
          # @param [Register, Integer] opt
          # @param [Register, Integer] bootstr
          # @see https://man.netbsd.org/reboot.2
          def reboot_syscall(opt,bootstr) = syscall_macro(208,opt,bootstr)
          # Macro to call the `poll` syscall.
          # @param [Register, Integer] fds
          # @param [Register, Integer] nfds
          # @param [Register, Integer] timeout
          # @see https://man.netbsd.org/poll.2
          def poll_syscall(fds,nfds,timeout) = syscall_macro(209,fds,nfds,timeout)
          # Macro to call the `afssys` syscall.
          # @param [Register, Integer] id
          # @param [Register, Integer] a1
          # @param [Register, Integer] a2
          # @param [Register, Integer] a3
          # @param [Register, Integer] a4
          # @param [Register, Integer] a5
          # @param [Register, Integer] a6
          # @see https://man.netbsd.org/afssys.2
          def afssys_syscall(id,a1,a2,a3,a4,a5,a6) = syscall_macro(210,id,a1,a2,a3,a4,a5,a6)
          # Macro to call the `semget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] nsems
          # @param [Register, Integer] semflg
          # @see https://man.netbsd.org/semget.2
          def semget_syscall(key,nsems,semflg) = syscall_macro(221,key,nsems,semflg)
          # Macro to call the `semop` syscall.
          # @param [Register, Integer] semid
          # @param [Register, Integer] sops
          # @param [Register, Integer] nsops
          # @see https://man.netbsd.org/semop.2
          def semop_syscall(semid,sops,nsops) = syscall_macro(222,semid,sops,nsops)
          # Macro to call the `semconfig` syscall.
          # @param [Register, Integer] flag
          # @see https://man.netbsd.org/semconfig.2
          def semconfig_syscall(flag) = syscall_macro(223,flag)
          # Macro to call the `msgget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] msgflg
          # @see https://man.netbsd.org/msgget.2
          def msgget_syscall(key,msgflg) = syscall_macro(225,key,msgflg)
          # Macro to call the `msgsnd` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] msgp
          # @param [Register, Integer] msgsz
          # @param [Register, Integer] msgflg
          # @see https://man.netbsd.org/msgsnd.2
          def msgsnd_syscall(msqid,msgp,msgsz,msgflg) = syscall_macro(226,msqid,msgp,msgsz,msgflg)
          # Macro to call the `msgrcv` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] msgp
          # @param [Register, Integer] msgsz
          # @param [Register, Integer] msgtyp
          # @param [Register, Integer] msgflg
          # @see https://man.netbsd.org/msgrcv.2
          def msgrcv_syscall(msqid,msgp,msgsz,msgtyp,msgflg) = syscall_macro(227,msqid,msgp,msgsz,msgtyp,msgflg)
          # Macro to call the `shmat` syscall.
          # @param [Register, Integer] shmid
          # @param [Register, Integer] shmaddr
          # @param [Register, Integer] shmflg
          # @see https://man.netbsd.org/shmat.2
          def shmat_syscall(shmid,shmaddr,shmflg) = syscall_macro(228,shmid,shmaddr,shmflg)
          # Macro to call the `shmdt` syscall.
          # @param [Register, Integer] shmaddr
          # @see https://man.netbsd.org/shmdt.2
          def shmdt_syscall(shmaddr) = syscall_macro(230,shmaddr)
          # Macro to call the `shmget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] size
          # @param [Register, Integer] shmflg
          # @see https://man.netbsd.org/shmget.2
          def shmget_syscall(key,size,shmflg) = syscall_macro(231,key,size,shmflg)
          # Macro to call the `timer_create` syscall.
          # @param [Register, Integer] clock_id
          # @param [Register, Integer] evp
          # @param [Register, Integer] timerid
          # @see https://man.netbsd.org/timer_create.2
          def timer_create_syscall(clock_id,evp,timerid) = syscall_macro(235,clock_id,evp,timerid)
          # Macro to call the `timer_delete` syscall.
          # @param [Register, Integer] timerid
          # @see https://man.netbsd.org/timer_delete.2
          def timer_delete_syscall(timerid) = syscall_macro(236,timerid)
          # Macro to call the `timer_getoverrun` syscall.
          # @param [Register, Integer] timerid
          # @see https://man.netbsd.org/timer_getoverrun.2
          def timer_getoverrun_syscall(timerid) = syscall_macro(239,timerid)
          # Macro to call the `fdatasync` syscall.
          # @param [Register, Integer] fd
          # @see https://man.netbsd.org/fdatasync.2
          def fdatasync_syscall(fd) = syscall_macro(241,fd)
          # Macro to call the `mlockall` syscall.
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/mlockall.2
          def mlockall_syscall(flags) = syscall_macro(242,flags)
          # Macro to call the `munlockall` syscall.
          # @see https://man.netbsd.org/munlockall.2
          def munlockall_syscall = syscall_macro(243)
          # Macro to call the `sigqueueinfo` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] info
          # @see https://man.netbsd.org/sigqueueinfo.2
          def sigqueueinfo_syscall(pid,info) = syscall_macro(245,pid,info)
          # Macro to call the `modctl` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://man.netbsd.org/modctl.2
          def modctl_syscall(cmd,arg) = syscall_macro(246,cmd,arg)
          # Macro to call the `_ksem_init` syscall.
          # @param [Register, Integer] value
          # @param [Register, Integer] idp
          # @see https://man.netbsd.org/_ksem_init.2
          def _ksem_init_syscall(value,idp) = syscall_macro(247,value,idp)
          # Macro to call the `_ksem_open` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] oflag
          # @param [Register, Integer] mode
          # @param [Register, Integer] value
          # @param [Register, Integer] idp
          # @see https://man.netbsd.org/_ksem_open.2
          def _ksem_open_syscall(name,oflag,mode,value,idp) = syscall_macro(248,name,oflag,mode,value,idp)
          # Macro to call the `_ksem_unlink` syscall.
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/_ksem_unlink.2
          def _ksem_unlink_syscall(name) = syscall_macro(249,name)
          # Macro to call the `_ksem_close` syscall.
          # @param [Register, Integer] id
          # @see https://man.netbsd.org/_ksem_close.2
          def _ksem_close_syscall(id) = syscall_macro(250,id)
          # Macro to call the `_ksem_post` syscall.
          # @param [Register, Integer] id
          # @see https://man.netbsd.org/_ksem_post.2
          def _ksem_post_syscall(id) = syscall_macro(251,id)
          # Macro to call the `_ksem_wait` syscall.
          # @param [Register, Integer] id
          # @see https://man.netbsd.org/_ksem_wait.2
          def _ksem_wait_syscall(id) = syscall_macro(252,id)
          # Macro to call the `_ksem_trywait` syscall.
          # @param [Register, Integer] id
          # @see https://man.netbsd.org/_ksem_trywait.2
          def _ksem_trywait_syscall(id) = syscall_macro(253,id)
          # Macro to call the `_ksem_getvalue` syscall.
          # @param [Register, Integer] id
          # @param [Register, Integer] value
          # @see https://man.netbsd.org/_ksem_getvalue.2
          def _ksem_getvalue_syscall(id,value) = syscall_macro(254,id,value)
          # Macro to call the `_ksem_destroy` syscall.
          # @param [Register, Integer] id
          # @see https://man.netbsd.org/_ksem_destroy.2
          def _ksem_destroy_syscall(id) = syscall_macro(255,id)
          # Macro to call the `_ksem_timedwait` syscall.
          # @param [Register, Integer] id
          # @param [Register, Integer] abstime
          # @see https://man.netbsd.org/_ksem_timedwait.2
          def _ksem_timedwait_syscall(id,abstime) = syscall_macro(256,id,abstime)
          # Macro to call the `mq_open` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] oflag
          # @param [Register, Integer] mode
          # @param [Register, Integer] attr
          # @see https://man.netbsd.org/mq_open.2
          def mq_open_syscall(name,oflag,mode,attr) = syscall_macro(257,name,oflag,mode,attr)
          # Macro to call the `mq_close` syscall.
          # @param [Register, Integer] mqdes
          # @see https://man.netbsd.org/mq_close.2
          def mq_close_syscall(mqdes) = syscall_macro(258,mqdes)
          # Macro to call the `mq_unlink` syscall.
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/mq_unlink.2
          def mq_unlink_syscall(name) = syscall_macro(259,name)
          # Macro to call the `mq_getattr` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] mqstat
          # @see https://man.netbsd.org/mq_getattr.2
          def mq_getattr_syscall(mqdes,mqstat) = syscall_macro(260,mqdes,mqstat)
          # Macro to call the `mq_setattr` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] mqstat
          # @param [Register, Integer] omqstat
          # @see https://man.netbsd.org/mq_setattr.2
          def mq_setattr_syscall(mqdes,mqstat,omqstat) = syscall_macro(261,mqdes,mqstat,omqstat)
          # Macro to call the `mq_notify` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] notification
          # @see https://man.netbsd.org/mq_notify.2
          def mq_notify_syscall(mqdes,notification) = syscall_macro(262,mqdes,notification)
          # Macro to call the `mq_send` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] msg_prio
          # @see https://man.netbsd.org/mq_send.2
          def mq_send_syscall(mqdes,msg_ptr,msg_len,msg_prio) = syscall_macro(263,mqdes,msg_ptr,msg_len,msg_prio)
          # Macro to call the `mq_receive` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] msg_prio
          # @see https://man.netbsd.org/mq_receive.2
          def mq_receive_syscall(mqdes,msg_ptr,msg_len,msg_prio) = syscall_macro(264,mqdes,msg_ptr,msg_len,msg_prio)
          # Macro to call the `eventfd` syscall.
          # @param [Register, Integer] val
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/eventfd.2
          def eventfd_syscall(val,flags) = syscall_macro(267,val,flags)
          # Macro to call the `__posix_rename` syscall.
          # @param [Register, Integer] from
          # @param [Register, Integer] to
          # @see https://man.netbsd.org/__posix_rename.2
          def __posix_rename_syscall(from,to) = syscall_macro(270,from,to)
          # Macro to call the `swapctl` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @param [Register, Integer] misc
          # @see https://man.netbsd.org/swapctl.2
          def swapctl_syscall(cmd,arg,misc) = syscall_macro(271,cmd,arg,misc)
          # Macro to call the `minherit` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @param [Register, Integer] inherit
          # @see https://man.netbsd.org/minherit.2
          def minherit_syscall(addr,len,inherit) = syscall_macro(273,addr,len,inherit)
          # Macro to call the `lchmod` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/lchmod.2
          def lchmod_syscall(path,mode) = syscall_macro(274,path,mode)
          # Macro to call the `lchown` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] uid
          # @param [Register, Integer] gid
          # @see https://man.netbsd.org/lchown.2
          def lchown_syscall(path,uid,gid) = syscall_macro(275,path,uid,gid)
          # Macro to call the `__posix_chown` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] uid
          # @param [Register, Integer] gid
          # @see https://man.netbsd.org/__posix_chown.2
          def __posix_chown_syscall(path,uid,gid) = syscall_macro(283,path,uid,gid)
          # Macro to call the `__posix_fchown` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] uid
          # @param [Register, Integer] gid
          # @see https://man.netbsd.org/__posix_fchown.2
          def __posix_fchown_syscall(fd,uid,gid) = syscall_macro(284,fd,uid,gid)
          # Macro to call the `__posix_lchown` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] uid
          # @param [Register, Integer] gid
          # @see https://man.netbsd.org/__posix_lchown.2
          def __posix_lchown_syscall(path,uid,gid) = syscall_macro(285,path,uid,gid)
          # Macro to call the `getsid` syscall.
          # @param [Register, Integer] pid
          # @see https://man.netbsd.org/getsid.2
          def getsid_syscall(pid) = syscall_macro(286,pid)
          # Macro to call the `__clone` syscall.
          # @param [Register, Integer] flags
          # @param [Register, Integer] stack
          # @see https://man.netbsd.org/__clone.2
          def __clone_syscall(flags,stack) = syscall_macro(287,flags,stack)
          # Macro to call the `fktrace` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] ops
          # @param [Register, Integer] facs
          # @param [Register, Integer] pid
          # @see https://man.netbsd.org/fktrace.2
          def fktrace_syscall(fd,ops,facs,pid) = syscall_macro(288,fd,ops,facs,pid)
          # Macro to call the `preadv` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] iovp
          # @param [Register, Integer] iovcnt
          # @param [Register, Integer] pad
          # @param [Register, Integer] offset
          # @see https://man.netbsd.org/preadv.2
          def preadv_syscall(fd,iovp,iovcnt,pad,offset) = syscall_macro(289,fd,iovp,iovcnt,pad,offset)
          # Macro to call the `pwritev` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] iovp
          # @param [Register, Integer] iovcnt
          # @param [Register, Integer] pad
          # @param [Register, Integer] offset
          # @see https://man.netbsd.org/pwritev.2
          def pwritev_syscall(fd,iovp,iovcnt,pad,offset) = syscall_macro(290,fd,iovp,iovcnt,pad,offset)
          # Macro to call the `__getcwd` syscall.
          # @param [Register, Integer] bufp
          # @param [Register, Integer] length
          # @see https://man.netbsd.org/__getcwd.2
          def __getcwd_syscall(bufp,length) = syscall_macro(296,bufp,length)
          # Macro to call the `fchroot` syscall.
          # @param [Register, Integer] fd
          # @see https://man.netbsd.org/fchroot.2
          def fchroot_syscall(fd) = syscall_macro(297,fd)
          # Macro to call the `lchflags` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/lchflags.2
          def lchflags_syscall(path,flags) = syscall_macro(304,path,flags)
          # Macro to call the `issetugid` syscall.
          # @see https://man.netbsd.org/issetugid.2
          def issetugid_syscall = syscall_macro(305)
          # Macro to call the `utrace` syscall.
          # @param [Register, Integer] label
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/utrace.2
          def utrace_syscall(label,addr,len) = syscall_macro(306,label,addr,len)
          # Macro to call the `getcontext` syscall.
          # @param [Register, Integer] ucp
          # @see https://man.netbsd.org/getcontext.2
          def getcontext_syscall(ucp) = syscall_macro(307,ucp)
          # Macro to call the `setcontext` syscall.
          # @param [Register, Integer] ucp
          # @see https://man.netbsd.org/setcontext.2
          def setcontext_syscall(ucp) = syscall_macro(308,ucp)
          # Macro to call the `_lwp_create` syscall.
          # @param [Register, Integer] ucp
          # @param [Register, Integer] flags
          # @param [Register, Integer] new_lwp
          # @see https://man.netbsd.org/_lwp_create.2
          def _lwp_create_syscall(ucp,flags,new_lwp) = syscall_macro(309,ucp,flags,new_lwp)
          # Macro to call the `_lwp_exit` syscall.
          # @see https://man.netbsd.org/_lwp_exit.2
          def _lwp_exit_syscall = syscall_macro(310)
          # Macro to call the `_lwp_self` syscall.
          # @see https://man.netbsd.org/_lwp_self.2
          def _lwp_self_syscall = syscall_macro(311)
          # Macro to call the `_lwp_wait` syscall.
          # @param [Register, Integer] wait_for
          # @param [Register, Integer] departed
          # @see https://man.netbsd.org/_lwp_wait.2
          def _lwp_wait_syscall(wait_for,departed) = syscall_macro(312,wait_for,departed)
          # Macro to call the `_lwp_suspend` syscall.
          # @param [Register, Integer] target
          # @see https://man.netbsd.org/_lwp_suspend.2
          def _lwp_suspend_syscall(target) = syscall_macro(313,target)
          # Macro to call the `_lwp_continue` syscall.
          # @param [Register, Integer] target
          # @see https://man.netbsd.org/_lwp_continue.2
          def _lwp_continue_syscall(target) = syscall_macro(314,target)
          # Macro to call the `_lwp_wakeup` syscall.
          # @param [Register, Integer] target
          # @see https://man.netbsd.org/_lwp_wakeup.2
          def _lwp_wakeup_syscall(target) = syscall_macro(315,target)
          # Macro to call the `_lwp_getprivate` syscall.
          # @see https://man.netbsd.org/_lwp_getprivate.2
          def _lwp_getprivate_syscall = syscall_macro(316)
          # Macro to call the `_lwp_setprivate` syscall.
          # @param [Register, Integer] ptr
          # @see https://man.netbsd.org/_lwp_setprivate.2
          def _lwp_setprivate_syscall(ptr) = syscall_macro(317,ptr)
          # Macro to call the `_lwp_kill` syscall.
          # @param [Register, Integer] target
          # @param [Register, Integer] signo
          # @see https://man.netbsd.org/_lwp_kill.2
          def _lwp_kill_syscall(target,signo) = syscall_macro(318,target,signo)
          # Macro to call the `_lwp_detach` syscall.
          # @param [Register, Integer] target
          # @see https://man.netbsd.org/_lwp_detach.2
          def _lwp_detach_syscall(target) = syscall_macro(319,target)
          # Macro to call the `_lwp_unpark` syscall.
          # @param [Register, Integer] target
          # @param [Register, Integer] hint
          # @see https://man.netbsd.org/_lwp_unpark.2
          def _lwp_unpark_syscall(target,hint) = syscall_macro(321,target,hint)
          # Macro to call the `_lwp_unpark_all` syscall.
          # @param [Register, Integer] targets
          # @param [Register, Integer] ntargets
          # @param [Register, Integer] hint
          # @see https://man.netbsd.org/_lwp_unpark_all.2
          def _lwp_unpark_all_syscall(targets,ntargets,hint) = syscall_macro(322,targets,ntargets,hint)
          # Macro to call the `_lwp_setname` syscall.
          # @param [Register, Integer] target
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/_lwp_setname.2
          def _lwp_setname_syscall(target,name) = syscall_macro(323,target,name)
          # Macro to call the `_lwp_getname` syscall.
          # @param [Register, Integer] target
          # @param [Register, Integer] name
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/_lwp_getname.2
          def _lwp_getname_syscall(target,name,len) = syscall_macro(324,target,name,len)
          # Macro to call the `_lwp_ctl` syscall.
          # @param [Register, Integer] features
          # @param [Register, Integer] address
          # @see https://man.netbsd.org/_lwp_ctl.2
          def _lwp_ctl_syscall(features,address) = syscall_macro(325,features,address)
          # Macro to call the `__sigaction_sigtramp` syscall.
          # @param [Register, Integer] signum
          # @param [Register, Integer] nsa
          # @param [Register, Integer] osa
          # @param [Register, Integer] tramp
          # @param [Register, Integer] vers
          # @see https://man.netbsd.org/__sigaction_sigtramp.2
          def __sigaction_sigtramp_syscall(signum,nsa,osa,tramp,vers) = syscall_macro(340,signum,nsa,osa,tramp,vers)
          # Macro to call the `rasctl` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @param [Register, Integer] op
          # @see https://man.netbsd.org/rasctl.2
          def rasctl_syscall(addr,len,op) = syscall_macro(343,addr,len,op)
          # Macro to call the `kqueue` syscall.
          # @see https://man.netbsd.org/kqueue.2
          def kqueue_syscall = syscall_macro(344)
          # Macro to call the `_sched_setparam` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lid
          # @param [Register, Integer] policy
          # @param [Register, Integer] params
          # @see https://man.netbsd.org/_sched_setparam.2
          def _sched_setparam_syscall(pid,lid,policy,params) = syscall_macro(346,pid,lid,policy,params)
          # Macro to call the `_sched_getparam` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lid
          # @param [Register, Integer] policy
          # @param [Register, Integer] params
          # @see https://man.netbsd.org/_sched_getparam.2
          def _sched_getparam_syscall(pid,lid,policy,params) = syscall_macro(347,pid,lid,policy,params)
          # Macro to call the `_sched_setaffinity` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lid
          # @param [Register, Integer] size
          # @param [Register, Integer] cpuset
          # @see https://man.netbsd.org/_sched_setaffinity.2
          def _sched_setaffinity_syscall(pid,lid,size,cpuset) = syscall_macro(348,pid,lid,size,cpuset)
          # Macro to call the `_sched_getaffinity` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lid
          # @param [Register, Integer] size
          # @param [Register, Integer] cpuset
          # @see https://man.netbsd.org/_sched_getaffinity.2
          def _sched_getaffinity_syscall(pid,lid,size,cpuset) = syscall_macro(349,pid,lid,size,cpuset)
          # Macro to call the `sched_yield` syscall.
          # @see https://man.netbsd.org/sched_yield.2
          def sched_yield_syscall = syscall_macro(350)
          # Macro to call the `_sched_protect` syscall.
          # @param [Register, Integer] priority
          # @see https://man.netbsd.org/_sched_protect.2
          def _sched_protect_syscall(priority) = syscall_macro(351,priority)
          # Macro to call the `fsync_range` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] flags
          # @param [Register, Integer] start
          # @param [Register, Integer] length
          # @see https://man.netbsd.org/fsync_range.2
          def fsync_range_syscall(fd,flags,start,length) = syscall_macro(354,fd,flags,start,length)
          # Macro to call the `uuidgen` syscall.
          # @param [Register, Integer] store
          # @param [Register, Integer] count
          # @see https://man.netbsd.org/uuidgen.2
          def uuidgen_syscall(store,count) = syscall_macro(355,store,count)
          # Macro to call the `extattrctl` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] cmd
          # @param [Register, Integer] filename
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @see https://man.netbsd.org/extattrctl.2
          def extattrctl_syscall(path,cmd,filename,attrnamespace,attrname) = syscall_macro(360,path,cmd,filename,attrnamespace,attrname)
          # Macro to call the `extattr_set_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_set_file.2
          def extattr_set_file_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(361,path,attrnamespace,attrname,data,nbytes)
          # Macro to call the `extattr_get_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_get_file.2
          def extattr_get_file_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(362,path,attrnamespace,attrname,data,nbytes)
          # Macro to call the `extattr_delete_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @see https://man.netbsd.org/extattr_delete_file.2
          def extattr_delete_file_syscall(path,attrnamespace,attrname) = syscall_macro(363,path,attrnamespace,attrname)
          # Macro to call the `extattr_set_fd` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_set_fd.2
          def extattr_set_fd_syscall(fd,attrnamespace,attrname,data,nbytes) = syscall_macro(364,fd,attrnamespace,attrname,data,nbytes)
          # Macro to call the `extattr_get_fd` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_get_fd.2
          def extattr_get_fd_syscall(fd,attrnamespace,attrname,data,nbytes) = syscall_macro(365,fd,attrnamespace,attrname,data,nbytes)
          # Macro to call the `extattr_delete_fd` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @see https://man.netbsd.org/extattr_delete_fd.2
          def extattr_delete_fd_syscall(fd,attrnamespace,attrname) = syscall_macro(366,fd,attrnamespace,attrname)
          # Macro to call the `extattr_set_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_set_link.2
          def extattr_set_link_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(367,path,attrnamespace,attrname,data,nbytes)
          # Macro to call the `extattr_get_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_get_link.2
          def extattr_get_link_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(368,path,attrnamespace,attrname,data,nbytes)
          # Macro to call the `extattr_delete_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] attrname
          # @see https://man.netbsd.org/extattr_delete_link.2
          def extattr_delete_link_syscall(path,attrnamespace,attrname) = syscall_macro(369,path,attrnamespace,attrname)
          # Macro to call the `extattr_list_fd` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_list_fd.2
          def extattr_list_fd_syscall(fd,attrnamespace,data,nbytes) = syscall_macro(370,fd,attrnamespace,data,nbytes)
          # Macro to call the `extattr_list_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_list_file.2
          def extattr_list_file_syscall(path,attrnamespace,data,nbytes) = syscall_macro(371,path,attrnamespace,data,nbytes)
          # Macro to call the `extattr_list_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] attrnamespace
          # @param [Register, Integer] data
          # @param [Register, Integer] nbytes
          # @see https://man.netbsd.org/extattr_list_link.2
          def extattr_list_link_syscall(path,attrnamespace,data,nbytes) = syscall_macro(372,path,attrnamespace,data,nbytes)
          # Macro to call the `setxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/setxattr.2
          def setxattr_syscall(path,name,value,size,flags) = syscall_macro(375,path,name,value,size,flags)
          # Macro to call the `lsetxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/lsetxattr.2
          def lsetxattr_syscall(path,name,value,size,flags) = syscall_macro(376,path,name,value,size,flags)
          # Macro to call the `fsetxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/fsetxattr.2
          def fsetxattr_syscall(fd,name,value,size,flags) = syscall_macro(377,fd,name,value,size,flags)
          # Macro to call the `getxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://man.netbsd.org/getxattr.2
          def getxattr_syscall(path,name,value,size) = syscall_macro(378,path,name,value,size)
          # Macro to call the `lgetxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://man.netbsd.org/lgetxattr.2
          def lgetxattr_syscall(path,name,value,size) = syscall_macro(379,path,name,value,size)
          # Macro to call the `fgetxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://man.netbsd.org/fgetxattr.2
          def fgetxattr_syscall(fd,name,value,size) = syscall_macro(380,fd,name,value,size)
          # Macro to call the `listxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://man.netbsd.org/listxattr.2
          def listxattr_syscall(path,list,size) = syscall_macro(381,path,list,size)
          # Macro to call the `llistxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://man.netbsd.org/llistxattr.2
          def llistxattr_syscall(path,list,size) = syscall_macro(382,path,list,size)
          # Macro to call the `flistxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://man.netbsd.org/flistxattr.2
          def flistxattr_syscall(fd,list,size) = syscall_macro(383,fd,list,size)
          # Macro to call the `removexattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/removexattr.2
          def removexattr_syscall(path,name) = syscall_macro(384,path,name)
          # Macro to call the `lremovexattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/lremovexattr.2
          def lremovexattr_syscall(path,name) = syscall_macro(385,path,name)
          # Macro to call the `fremovexattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/fremovexattr.2
          def fremovexattr_syscall(fd,name) = syscall_macro(386,fd,name)
          # Macro to call the `aio_cancel` syscall.
          # @param [Register, Integer] fildes
          # @param [Register, Integer] aiocbp
          # @see https://man.netbsd.org/aio_cancel.2
          def aio_cancel_syscall(fildes,aiocbp) = syscall_macro(399,fildes,aiocbp)
          # Macro to call the `aio_error` syscall.
          # @param [Register, Integer] aiocbp
          # @see https://man.netbsd.org/aio_error.2
          def aio_error_syscall(aiocbp) = syscall_macro(400,aiocbp)
          # Macro to call the `aio_fsync` syscall.
          # @param [Register, Integer] op
          # @param [Register, Integer] aiocbp
          # @see https://man.netbsd.org/aio_fsync.2
          def aio_fsync_syscall(op,aiocbp) = syscall_macro(401,op,aiocbp)
          # Macro to call the `aio_read` syscall.
          # @param [Register, Integer] aiocbp
          # @see https://man.netbsd.org/aio_read.2
          def aio_read_syscall(aiocbp) = syscall_macro(402,aiocbp)
          # Macro to call the `aio_return` syscall.
          # @param [Register, Integer] aiocbp
          # @see https://man.netbsd.org/aio_return.2
          def aio_return_syscall(aiocbp) = syscall_macro(403,aiocbp)
          # Macro to call the `aio_write` syscall.
          # @param [Register, Integer] aiocbp
          # @see https://man.netbsd.org/aio_write.2
          def aio_write_syscall(aiocbp) = syscall_macro(405,aiocbp)
          # Macro to call the `lio_listio` syscall.
          # @param [Register, Integer] mode
          # @param [Register, Integer] list
          # @param [Register, Integer] nent
          # @param [Register, Integer] sig
          # @see https://man.netbsd.org/lio_listio.2
          def lio_listio_syscall(mode,list,nent,sig) = syscall_macro(406,mode,list,nent,sig)
          # Macro to call the `mremap` syscall.
          # @param [Register, Integer] old_address
          # @param [Register, Integer] old_size
          # @param [Register, Integer] new_address
          # @param [Register, Integer] new_size
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/mremap.2
          def mremap_syscall(old_address,old_size,new_address,new_size,flags) = syscall_macro(411,old_address,old_size,new_address,new_size,flags)
          # Macro to call the `pset_create` syscall.
          # @param [Register, Integer] psid
          # @see https://man.netbsd.org/pset_create.2
          def pset_create_syscall(psid) = syscall_macro(412,psid)
          # Macro to call the `pset_destroy` syscall.
          # @param [Register, Integer] psid
          # @see https://man.netbsd.org/pset_destroy.2
          def pset_destroy_syscall(psid) = syscall_macro(413,psid)
          # Macro to call the `pset_assign` syscall.
          # @param [Register, Integer] psid
          # @param [Register, Integer] cpuid
          # @param [Register, Integer] opsid
          # @see https://man.netbsd.org/pset_assign.2
          def pset_assign_syscall(psid,cpuid,opsid) = syscall_macro(414,psid,cpuid,opsid)
          # Macro to call the `_pset_bind` syscall.
          # @param [Register, Integer] idtype
          # @param [Register, Integer] first_id
          # @param [Register, Integer] second_id
          # @param [Register, Integer] psid
          # @param [Register, Integer] opsid
          # @see https://man.netbsd.org/_pset_bind.2
          def _pset_bind_syscall(idtype,first_id,second_id,psid,opsid) = syscall_macro(415,idtype,first_id,second_id,psid,opsid)
          # Macro to call the `pipe2` syscall.
          # @param [Register, Integer] fildes
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/pipe2.2
          def pipe2_syscall(fildes,flags) = syscall_macro(453,fildes,flags)
          # Macro to call the `kqueue1` syscall.
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/kqueue1.2
          def kqueue1_syscall(flags) = syscall_macro(455,flags)
          # Macro to call the `paccept` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] name
          # @param [Register, Integer] anamelen
          # @param [Register, Integer] mask
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/paccept.2
          def paccept_syscall(s,name,anamelen,mask,flags) = syscall_macro(456,s,name,anamelen,mask,flags)
          # Macro to call the `linkat` syscall.
          # @param [Register, Integer] fd1
          # @param [Register, Integer] name1
          # @param [Register, Integer] fd2
          # @param [Register, Integer] name2
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/linkat.2
          def linkat_syscall(fd1,name1,fd2,name2,flags) = syscall_macro(457,fd1,name1,fd2,name2,flags)
          # Macro to call the `renameat` syscall.
          # @param [Register, Integer] fromfd
          # @param [Register, Integer] from
          # @param [Register, Integer] tofd
          # @param [Register, Integer] to
          # @see https://man.netbsd.org/renameat.2
          def renameat_syscall(fromfd,from,tofd,to) = syscall_macro(458,fromfd,from,tofd,to)
          # Macro to call the `mkfifoat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/mkfifoat.2
          def mkfifoat_syscall(fd,path,mode) = syscall_macro(459,fd,path,mode)
          # Macro to call the `mknodat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @param [Register, Integer] pad
          # @param [Register, Integer] dev
          # @see https://man.netbsd.org/mknodat.2
          def mknodat_syscall(fd,path,mode,pad,dev) = syscall_macro(460,fd,path,mode,pad,dev)
          # Macro to call the `mkdirat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/mkdirat.2
          def mkdirat_syscall(fd,path,mode) = syscall_macro(461,fd,path,mode)
          # Macro to call the `faccessat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] amode
          # @param [Register, Integer] flag
          # @see https://man.netbsd.org/faccessat.2
          def faccessat_syscall(fd,path,amode,flag) = syscall_macro(462,fd,path,amode,flag)
          # Macro to call the `fchmodat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] mode
          # @param [Register, Integer] flag
          # @see https://man.netbsd.org/fchmodat.2
          def fchmodat_syscall(fd,path,mode,flag) = syscall_macro(463,fd,path,mode,flag)
          # Macro to call the `fchownat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] owner
          # @param [Register, Integer] group
          # @param [Register, Integer] flag
          # @see https://man.netbsd.org/fchownat.2
          def fchownat_syscall(fd,path,owner,group,flag) = syscall_macro(464,fd,path,owner,group,flag)
          # Macro to call the `fexecve` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] argp
          # @param [Register, Integer] envp
          # @see https://man.netbsd.org/fexecve.2
          def fexecve_syscall(fd,argp,envp) = syscall_macro(465,fd,argp,envp)
          # Macro to call the `fstatat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @param [Register, Integer] flag
          # @see https://man.netbsd.org/fstatat.2
          def fstatat_syscall(fd,path,buf,flag) = syscall_macro(466,fd,path,buf,flag)
          # Macro to call the `utimensat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] tptr
          # @param [Register, Integer] flag
          # @see https://man.netbsd.org/utimensat.2
          def utimensat_syscall(fd,path,tptr,flag) = syscall_macro(467,fd,path,tptr,flag)
          # Macro to call the `openat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] oflags
          # @param [Register, Integer] mode
          # @see https://man.netbsd.org/openat.2
          def openat_syscall(fd,path,oflags,*mode) = syscall_macro(468,fd,path,oflags,*mode)
          # Macro to call the `readlinkat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @param [Register, Integer] bufsize
          # @see https://man.netbsd.org/readlinkat.2
          def readlinkat_syscall(fd,path,buf,bufsize) = syscall_macro(469,fd,path,buf,bufsize)
          # Macro to call the `symlinkat` syscall.
          # @param [Register, Integer] path1
          # @param [Register, Integer] fd
          # @param [Register, Integer] path2
          # @see https://man.netbsd.org/symlinkat.2
          def symlinkat_syscall(path1,fd,path2) = syscall_macro(470,path1,fd,path2)
          # Macro to call the `unlinkat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] flag
          # @see https://man.netbsd.org/unlinkat.2
          def unlinkat_syscall(fd,path,flag) = syscall_macro(471,fd,path,flag)
          # Macro to call the `futimens` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] tptr
          # @see https://man.netbsd.org/futimens.2
          def futimens_syscall(fd,tptr) = syscall_macro(472,fd,tptr)
          # Macro to call the `__quotactl` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] args
          # @see https://man.netbsd.org/__quotactl.2
          def __quotactl_syscall(path,args) = syscall_macro(473,path,args)
          # Macro to call the `posix_spawn` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] path
          # @param [Register, Integer] file_actions
          # @param [Register, Integer] attrp
          # @param [Register, Integer] argv
          # @param [Register, Integer] envp
          # @see https://man.netbsd.org/posix_spawn.2
          def posix_spawn_syscall(pid,path,file_actions,attrp,argv,envp) = syscall_macro(474,pid,path,file_actions,attrp,argv,envp)
          # Macro to call the `recvmmsg` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] mmsg
          # @param [Register, Integer] vlen
          # @param [Register, Integer] flags
          # @param [Register, Integer] timeout
          # @see https://man.netbsd.org/recvmmsg.2
          def recvmmsg_syscall(s,mmsg,vlen,flags,timeout) = syscall_macro(475,s,mmsg,vlen,flags,timeout)
          # Macro to call the `sendmmsg` syscall.
          # @param [Register, Integer] s
          # @param [Register, Integer] mmsg
          # @param [Register, Integer] vlen
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/sendmmsg.2
          def sendmmsg_syscall(s,mmsg,vlen,flags) = syscall_macro(476,s,mmsg,vlen,flags)
          # Macro to call the `clock_nanosleep` syscall.
          # @param [Register, Integer] clock_id
          # @param [Register, Integer] flags
          # @param [Register, Integer] rqtp
          # @param [Register, Integer] rmtp
          # @see https://man.netbsd.org/clock_nanosleep.2
          def clock_nanosleep_syscall(clock_id,flags,rqtp,rmtp) = syscall_macro(477,clock_id,flags,rqtp,rmtp)
          # Macro to call the `posix_fallocate` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] pad
          # @param [Register, Integer] pos
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/posix_fallocate.2
          def posix_fallocate_syscall(fd,pad,pos,len) = syscall_macro(479,fd,pad,pos,len)
          # Macro to call the `fdiscard` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] pad
          # @param [Register, Integer] pos
          # @param [Register, Integer] len
          # @see https://man.netbsd.org/fdiscard.2
          def fdiscard_syscall(fd,pad,pos,len) = syscall_macro(480,fd,pad,pos,len)
          # Macro to call the `wait6` syscall.
          # @param [Register, Integer] idtype
          # @param [Register, Integer] id
          # @param [Register, Integer] status
          # @param [Register, Integer] options
          # @param [Register, Integer] wru
          # @param [Register, Integer] info
          # @see https://man.netbsd.org/wait6.2
          def wait6_syscall(idtype,id,status,options,wru,info) = syscall_macro(481,idtype,id,status,options,wru,info)
          # Macro to call the `clock_getcpuclockid2` syscall.
          # @param [Register, Integer] idtype
          # @param [Register, Integer] id
          # @param [Register, Integer] clock_id
          # @see https://man.netbsd.org/clock_getcpuclockid2.2
          def clock_getcpuclockid2_syscall(idtype,id,clock_id) = syscall_macro(482,idtype,id,clock_id)
          # Macro to call the `__acl_get_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_get_link.2
          def __acl_get_link_syscall(path,type,aclp) = syscall_macro(487,path,type,aclp)
          # Macro to call the `__acl_set_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_set_link.2
          def __acl_set_link_syscall(path,type,aclp) = syscall_macro(488,path,type,aclp)
          # Macro to call the `__acl_delete_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @see https://man.netbsd.org/__acl_delete_link.2
          def __acl_delete_link_syscall(path,type) = syscall_macro(489,path,type)
          # Macro to call the `__acl_aclcheck_link` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_aclcheck_link.2
          def __acl_aclcheck_link_syscall(path,type,aclp) = syscall_macro(490,path,type,aclp)
          # Macro to call the `__acl_get_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_get_file.2
          def __acl_get_file_syscall(path,type,aclp) = syscall_macro(491,path,type,aclp)
          # Macro to call the `__acl_set_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_set_file.2
          def __acl_set_file_syscall(path,type,aclp) = syscall_macro(492,path,type,aclp)
          # Macro to call the `__acl_get_fd` syscall.
          # @param [Register, Integer] filedes
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_get_fd.2
          def __acl_get_fd_syscall(filedes,type,aclp) = syscall_macro(493,filedes,type,aclp)
          # Macro to call the `__acl_set_fd` syscall.
          # @param [Register, Integer] filedes
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_set_fd.2
          def __acl_set_fd_syscall(filedes,type,aclp) = syscall_macro(494,filedes,type,aclp)
          # Macro to call the `__acl_delete_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @see https://man.netbsd.org/__acl_delete_file.2
          def __acl_delete_file_syscall(path,type) = syscall_macro(495,path,type)
          # Macro to call the `__acl_delete_fd` syscall.
          # @param [Register, Integer] filedes
          # @param [Register, Integer] type
          # @see https://man.netbsd.org/__acl_delete_fd.2
          def __acl_delete_fd_syscall(filedes,type) = syscall_macro(496,filedes,type)
          # Macro to call the `__acl_aclcheck_file` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_aclcheck_file.2
          def __acl_aclcheck_file_syscall(path,type,aclp) = syscall_macro(497,path,type,aclp)
          # Macro to call the `__acl_aclcheck_fd` syscall.
          # @param [Register, Integer] filedes
          # @param [Register, Integer] type
          # @param [Register, Integer] aclp
          # @see https://man.netbsd.org/__acl_aclcheck_fd.2
          def __acl_aclcheck_fd_syscall(filedes,type,aclp) = syscall_macro(498,filedes,type,aclp)
          # Macro to call the `lpathconf` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://man.netbsd.org/lpathconf.2
          def lpathconf_syscall(path,name) = syscall_macro(499,path,name)
          # Macro to call the `memfd_create` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/memfd_create.2
          def memfd_create_syscall(name,flags) = syscall_macro(500,name,flags)
          # Macro to call the `epoll_create1` syscall.
          # @param [Register, Integer] flags
          # @see https://man.netbsd.org/epoll_create1.2
          def epoll_create1_syscall(flags) = syscall_macro(502,flags)
          # Macro to call the `epoll_ctl` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] op
          # @param [Register, Integer] fd
          # @param [Register, Integer] event
          # @see https://man.netbsd.org/epoll_ctl.2
          def epoll_ctl_syscall(epfd,op,fd,event) = syscall_macro(503,epfd,op,fd,event)
          # Macro to call the `epoll_pwait2` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] events
          # @param [Register, Integer] maxevents
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sigmask
          # @see https://man.netbsd.org/epoll_pwait2.2
          def epoll_pwait2_syscall(epfd,events,maxevents,timeout,sigmask) = syscall_macro(504,epfd,events,maxevents,timeout,sigmask)
          # Macro to call the `semtimedop` syscall.
          # @param [Register, Integer] semid
          # @param [Register, Integer] sops
          # @param [Register, Integer] nsops
          # @param [Register, Integer] timeout
          # @see https://man.netbsd.org/semtimedop.2
          def semtimedop_syscall(semid,sops,nsops,timeout) = syscall_macro(506,semid,sops,nsops,timeout)
        end
      end
    end
  end
end
