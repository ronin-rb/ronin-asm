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
      # OpenBSD syscall macros.
      #
      # @since 1.0.0
      #
      module OpenBSD
        # Macro to call the `exit` syscall.
        # @param [Register, Integer] rval
        # @see https://man.openbsd.org/exit.2
        def exit_syscall(rval) = syscall_macro(1,rval)
        # Macro to call the `fork` syscall.
        # @see https://man.openbsd.org/fork.2
        def fork_syscall = syscall_macro(2)
        # Macro to call the `read` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @see https://man.openbsd.org/read.2
        def read_syscall(fd,buf,nbyte) = syscall_macro(3,fd,buf,nbyte)
        # Macro to call the `write` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @see https://man.openbsd.org/write.2
        def write_syscall(fd,buf,nbyte) = syscall_macro(4,fd,buf,nbyte)
        # Macro to call the `open` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/open.2
        def open_syscall(path,flags,*mode) = syscall_macro(5,path,flags,*mode)
        # Macro to call the `close` syscall.
        # @param [Register, Integer] fd
        # @see https://man.openbsd.org/close.2
        def close_syscall(fd) = syscall_macro(6,fd)
        # Macro to call the `getentropy` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @see https://man.openbsd.org/getentropy.2
        def getentropy_syscall(buf,nbyte) = syscall_macro(7,buf,nbyte)
        # Macro to call the `__tfork` syscall.
        # @param [Register, Integer] param
        # @param [Register, Integer] psize
        # @see https://man.openbsd.org/__tfork.2
        def __tfork_syscall(param,psize) = syscall_macro(8,param,psize)
        # Macro to call the `link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] link
        # @see https://man.openbsd.org/link.2
        def link_syscall(path,link) = syscall_macro(9,path,link)
        # Macro to call the `unlink` syscall.
        # @param [Register, Integer] path
        # @see https://man.openbsd.org/unlink.2
        def unlink_syscall(path) = syscall_macro(10,path)
        # Macro to call the `wait4` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] status
        # @param [Register, Integer] options
        # @param [Register, Integer] rusage
        # @see https://man.openbsd.org/wait4.2
        def wait4_syscall(pid,status,options,rusage) = syscall_macro(11,pid,status,options,rusage)
        # Macro to call the `chdir` syscall.
        # @param [Register, Integer] path
        # @see https://man.openbsd.org/chdir.2
        def chdir_syscall(path) = syscall_macro(12,path)
        # Macro to call the `fchdir` syscall.
        # @param [Register, Integer] fd
        # @see https://man.openbsd.org/fchdir.2
        def fchdir_syscall(fd) = syscall_macro(13,fd)
        # Macro to call the `mknod` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] dev
        # @see https://man.openbsd.org/mknod.2
        def mknod_syscall(path,mode,dev) = syscall_macro(14,path,mode,dev)
        # Macro to call the `chmod` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/chmod.2
        def chmod_syscall(path,mode) = syscall_macro(15,path,mode)
        # Macro to call the `chown` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://man.openbsd.org/chown.2
        def chown_syscall(path,uid,gid) = syscall_macro(16,path,uid,gid)
        # Macro to call the `obreak` syscall.
        # @param [Register, Integer] nsize
        # @see https://man.openbsd.org/obreak.2
        def obreak_syscall(nsize) = syscall_macro(17,nsize)
        # Macro to call the `getdtablecount` syscall.
        # @see https://man.openbsd.org/getdtablecount.2
        def getdtablecount_syscall = syscall_macro(18)
        # Macro to call the `getrusage` syscall.
        # @param [Register, Integer] who
        # @param [Register, Integer] rusage
        # @see https://man.openbsd.org/getrusage.2
        def getrusage_syscall(who,rusage) = syscall_macro(19,who,rusage)
        # Macro to call the `getpid` syscall.
        # @see https://man.openbsd.org/getpid.2
        def getpid_syscall = syscall_macro(20)
        # Macro to call the `mount` syscall.
        # @param [Register, Integer] type
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] data
        # @see https://man.openbsd.org/mount.2
        def mount_syscall(type,path,flags,data) = syscall_macro(21,type,path,flags,data)
        # Macro to call the `unmount` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/unmount.2
        def unmount_syscall(path,flags) = syscall_macro(22,path,flags)
        # Macro to call the `setuid` syscall.
        # @param [Register, Integer] uid
        # @see https://man.openbsd.org/setuid.2
        def setuid_syscall(uid) = syscall_macro(23,uid)
        # Macro to call the `getuid` syscall.
        # @see https://man.openbsd.org/getuid.2
        def getuid_syscall = syscall_macro(24)
        # Macro to call the `geteuid` syscall.
        # @see https://man.openbsd.org/geteuid.2
        def geteuid_syscall = syscall_macro(25)
        # Macro to call the `ptrace` syscall.
        # @param [Register, Integer] req
        # @param [Register, Integer] pid
        # @param [Register, Integer] addr
        # @param [Register, Integer] data
        # @see https://man.openbsd.org/ptrace.2
        def ptrace_syscall(req,pid,addr,data) = syscall_macro(26,req,pid,addr,data)
        # Macro to call the `recvmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/recvmsg.2
        def recvmsg_syscall(s,msg,flags) = syscall_macro(27,s,msg,flags)
        # Macro to call the `sendmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/sendmsg.2
        def sendmsg_syscall(s,msg,flags) = syscall_macro(28,s,msg,flags)
        # Macro to call the `recvfrom` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] from
        # @param [Register, Integer] fromlenaddr
        # @see https://man.openbsd.org/recvfrom.2
        def recvfrom_syscall(s,buf,len,flags,from,fromlenaddr) = syscall_macro(29,s,buf,len,flags,from,fromlenaddr)
        # Macro to call the `accept` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] anamelen
        # @see https://man.openbsd.org/accept.2
        def accept_syscall(s,name,anamelen) = syscall_macro(30,s,name,anamelen)
        # Macro to call the `getpeername` syscall.
        # @param [Register, Integer] fdes
        # @param [Register, Integer] asa
        # @param [Register, Integer] alen
        # @see https://man.openbsd.org/getpeername.2
        def getpeername_syscall(fdes,asa,alen) = syscall_macro(31,fdes,asa,alen)
        # Macro to call the `getsockname` syscall.
        # @param [Register, Integer] fdes
        # @param [Register, Integer] asa
        # @param [Register, Integer] alen
        # @see https://man.openbsd.org/getsockname.2
        def getsockname_syscall(fdes,asa,alen) = syscall_macro(32,fdes,asa,alen)
        # Macro to call the `access` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] amode
        # @see https://man.openbsd.org/access.2
        def access_syscall(path,amode) = syscall_macro(33,path,amode)
        # Macro to call the `chflags` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/chflags.2
        def chflags_syscall(path,flags) = syscall_macro(34,path,flags)
        # Macro to call the `fchflags` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/fchflags.2
        def fchflags_syscall(fd,flags) = syscall_macro(35,fd,flags)
        # Macro to call the `sync` syscall.
        # @see https://man.openbsd.org/sync.2
        def sync_syscall = syscall_macro(36)
        # Macro to call the `stat` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @see https://man.openbsd.org/stat.2
        def stat_syscall(path,ub) = syscall_macro(38,path,ub)
        # Macro to call the `getppid` syscall.
        # @see https://man.openbsd.org/getppid.2
        def getppid_syscall = syscall_macro(39)
        # Macro to call the `lstat` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] ub
        # @see https://man.openbsd.org/lstat.2
        def lstat_syscall(path,ub) = syscall_macro(40,path,ub)
        # Macro to call the `dup` syscall.
        # @param [Register, Integer] fd
        # @see https://man.openbsd.org/dup.2
        def dup_syscall(fd) = syscall_macro(41,fd)
        # Macro to call the `fstatat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/fstatat.2
        def fstatat_syscall(fd,path,buf,flag) = syscall_macro(42,fd,path,buf,flag)
        # Macro to call the `getegid` syscall.
        # @see https://man.openbsd.org/getegid.2
        def getegid_syscall = syscall_macro(43)
        # Macro to call the `ktrace` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] ops
        # @param [Register, Integer] facs
        # @param [Register, Integer] pid
        # @see https://man.openbsd.org/ktrace.2
        def ktrace_syscall(fname,ops,facs,pid) = syscall_macro(45,fname,ops,facs,pid)
        # Macro to call the `sigaction` syscall.
        # @param [Register, Integer] signum
        # @param [Register, Integer] nsa
        # @param [Register, Integer] osa
        # @see https://man.openbsd.org/sigaction.2
        def sigaction_syscall(signum,nsa,osa) = syscall_macro(46,signum,nsa,osa)
        # Macro to call the `getgid` syscall.
        # @see https://man.openbsd.org/getgid.2
        def getgid_syscall = syscall_macro(47)
        # Macro to call the `sigprocmask` syscall.
        # @param [Register, Integer] how
        # @param [Register, Integer] mask
        # @see https://man.openbsd.org/sigprocmask.2
        def sigprocmask_syscall(how,mask) = syscall_macro(48,how,mask)
        # Macro to call the `mmap` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] prot
        # @param [Register, Integer] flags
        # @param [Register, Integer] fd
        # @param [Register, Integer] pos
        # @see https://man.openbsd.org/mmap.2
        def mmap_syscall(addr,len,prot,flags,fd,pos) = syscall_macro(49,addr,len,prot,flags,fd,pos)
        # Macro to call the `setlogin` syscall.
        # @param [Register, Integer] namebuf
        # @see https://man.openbsd.org/setlogin.2
        def setlogin_syscall(namebuf) = syscall_macro(50,namebuf)
        # Macro to call the `acct` syscall.
        # @param [Register, Integer] path
        # @see https://man.openbsd.org/acct.2
        def acct_syscall(path) = syscall_macro(51,path)
        # Macro to call the `sigpending` syscall.
        # @see https://man.openbsd.org/sigpending.2
        def sigpending_syscall = syscall_macro(52)
        # Macro to call the `fstat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] sb
        # @see https://man.openbsd.org/fstat.2
        def fstat_syscall(fd,sb) = syscall_macro(53,fd,sb)
        # Macro to call the `ioctl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] com
        # @param [Register, Integer] data
        # @see https://man.openbsd.org/ioctl.2
        def ioctl_syscall(fd,com,*data) = syscall_macro(54,fd,com,*data)
        # Macro to call the `reboot` syscall.
        # @param [Register, Integer] opt
        # @see https://man.openbsd.org/reboot.2
        def reboot_syscall(opt) = syscall_macro(55,opt)
        # Macro to call the `revoke` syscall.
        # @param [Register, Integer] path
        # @see https://man.openbsd.org/revoke.2
        def revoke_syscall(path) = syscall_macro(56,path)
        # Macro to call the `symlink` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] link
        # @see https://man.openbsd.org/symlink.2
        def symlink_syscall(path,link) = syscall_macro(57,path,link)
        # Macro to call the `readlink` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] count
        # @see https://man.openbsd.org/readlink.2
        def readlink_syscall(path,buf,count) = syscall_macro(58,path,buf,count)
        # Macro to call the `execve` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] argp
        # @param [Register, Integer] envp
        # @see https://man.openbsd.org/execve.2
        def execve_syscall(path,argp,envp) = syscall_macro(59,path,argp,envp)
        # Macro to call the `umask` syscall.
        # @param [Register, Integer] newmask
        # @see https://man.openbsd.org/umask.2
        def umask_syscall(newmask) = syscall_macro(60,newmask)
        # Macro to call the `chroot` syscall.
        # @param [Register, Integer] path
        # @see https://man.openbsd.org/chroot.2
        def chroot_syscall(path) = syscall_macro(61,path)
        # Macro to call the `getfsstat` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/getfsstat.2
        def getfsstat_syscall(buf,bufsize,flags) = syscall_macro(62,buf,bufsize,flags)
        # Macro to call the `statfs` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @see https://man.openbsd.org/statfs.2
        def statfs_syscall(path,buf) = syscall_macro(63,path,buf)
        # Macro to call the `fstatfs` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @see https://man.openbsd.org/fstatfs.2
        def fstatfs_syscall(fd,buf) = syscall_macro(64,fd,buf)
        # Macro to call the `fhstatfs` syscall.
        # @param [Register, Integer] fhp
        # @param [Register, Integer] buf
        # @see https://man.openbsd.org/fhstatfs.2
        def fhstatfs_syscall(fhp,buf) = syscall_macro(65,fhp,buf)
        # Macro to call the `vfork` syscall.
        # @see https://man.openbsd.org/vfork.2
        def vfork_syscall = syscall_macro(66)
        # Macro to call the `gettimeofday` syscall.
        # @param [Register, Integer] tp
        # @param [Register, Integer] tzp
        # @see https://man.openbsd.org/gettimeofday.2
        def gettimeofday_syscall(tp,tzp) = syscall_macro(67,tp,tzp)
        # Macro to call the `settimeofday` syscall.
        # @param [Register, Integer] tv
        # @param [Register, Integer] tzp
        # @see https://man.openbsd.org/settimeofday.2
        def settimeofday_syscall(tv,tzp) = syscall_macro(68,tv,tzp)
        # Macro to call the `setitimer` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] itv
        # @param [Register, Integer] oitv
        # @see https://man.openbsd.org/setitimer.2
        def setitimer_syscall(which,itv,oitv) = syscall_macro(69,which,itv,oitv)
        # Macro to call the `getitimer` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] itv
        # @see https://man.openbsd.org/getitimer.2
        def getitimer_syscall(which,itv) = syscall_macro(70,which,itv)
        # Macro to call the `select` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] tv
        # @see https://man.openbsd.org/select.2
        def select_syscall(nd,in_,ou,ex,tv) = syscall_macro(71,nd,in_,ou,ex,tv)
        # Macro to call the `kevent` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] changelist
        # @param [Register, Integer] nchanges
        # @param [Register, Integer] eventlist
        # @param [Register, Integer] nevents
        # @param [Register, Integer] timeout
        # @see https://man.openbsd.org/kevent.2
        def kevent_syscall(fd,changelist,nchanges,eventlist,nevents,timeout) = syscall_macro(72,fd,changelist,nchanges,eventlist,nevents,timeout)
        # Macro to call the `munmap` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.openbsd.org/munmap.2
        def munmap_syscall(addr,len) = syscall_macro(73,addr,len)
        # Macro to call the `mprotect` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] prot
        # @see https://man.openbsd.org/mprotect.2
        def mprotect_syscall(addr,len,prot) = syscall_macro(74,addr,len,prot)
        # Macro to call the `madvise` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] behav
        # @see https://man.openbsd.org/madvise.2
        def madvise_syscall(addr,len,behav) = syscall_macro(75,addr,len,behav)
        # Macro to call the `utimes` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] tptr
        # @see https://man.openbsd.org/utimes.2
        def utimes_syscall(path,tptr) = syscall_macro(76,path,tptr)
        # Macro to call the `futimes` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] tptr
        # @see https://man.openbsd.org/futimes.2
        def futimes_syscall(fd,tptr) = syscall_macro(77,fd,tptr)
        # Macro to call the `mquery` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] prot
        # @param [Register, Integer] flags
        # @param [Register, Integer] fd
        # @param [Register, Integer] pos
        # @see https://man.openbsd.org/mquery.2
        def mquery_syscall(addr,len,prot,flags,fd,pos) = syscall_macro(78,addr,len,prot,flags,fd,pos)
        # Macro to call the `getgroups` syscall.
        # @param [Register, Integer] gidsetsize
        # @param [Register, Integer] gidset
        # @see https://man.openbsd.org/getgroups.2
        def getgroups_syscall(gidsetsize,gidset) = syscall_macro(79,gidsetsize,gidset)
        # Macro to call the `setgroups` syscall.
        # @param [Register, Integer] gidsetsize
        # @param [Register, Integer] gidset
        # @see https://man.openbsd.org/setgroups.2
        def setgroups_syscall(gidsetsize,gidset) = syscall_macro(80,gidsetsize,gidset)
        # Macro to call the `getpgrp` syscall.
        # @see https://man.openbsd.org/getpgrp.2
        def getpgrp_syscall = syscall_macro(81)
        # Macro to call the `setpgid` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] pgid
        # @see https://man.openbsd.org/setpgid.2
        def setpgid_syscall(pid,pgid) = syscall_macro(82,pid,pgid)
        # Macro to call the `futex` syscall.
        # @param [Register, Integer] f
        # @param [Register, Integer] op
        # @param [Register, Integer] val
        # @param [Register, Integer] timeout
        # @param [Register, Integer] g
        # @see https://man.openbsd.org/futex.2
        def futex_syscall(f,op,val,timeout,g) = syscall_macro(83,f,op,val,timeout,g)
        # Macro to call the `utimensat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] times
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/utimensat.2
        def utimensat_syscall(fd,path,times,flag) = syscall_macro(84,fd,path,times,flag)
        # Macro to call the `futimens` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] times
        # @see https://man.openbsd.org/futimens.2
        def futimens_syscall(fd,times) = syscall_macro(85,fd,times)
        # Macro to call the `kbind` syscall.
        # @param [Register, Integer] param
        # @param [Register, Integer] psize
        # @param [Register, Integer] proc_cookie
        # @see https://man.openbsd.org/kbind.2
        def kbind_syscall(param,psize,proc_cookie) = syscall_macro(86,param,psize,proc_cookie)
        # Macro to call the `clock_gettime` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] tp
        # @see https://man.openbsd.org/clock_gettime.2
        def clock_gettime_syscall(clock_id,tp) = syscall_macro(87,clock_id,tp)
        # Macro to call the `clock_settime` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] tp
        # @see https://man.openbsd.org/clock_settime.2
        def clock_settime_syscall(clock_id,tp) = syscall_macro(88,clock_id,tp)
        # Macro to call the `clock_getres` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] tp
        # @see https://man.openbsd.org/clock_getres.2
        def clock_getres_syscall(clock_id,tp) = syscall_macro(89,clock_id,tp)
        # Macro to call the `dup2` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @see https://man.openbsd.org/dup2.2
        def dup2_syscall(from,to) = syscall_macro(90,from,to)
        # Macro to call the `nanosleep` syscall.
        # @param [Register, Integer] rqtp
        # @param [Register, Integer] rmtp
        # @see https://man.openbsd.org/nanosleep.2
        def nanosleep_syscall(rqtp,rmtp) = syscall_macro(91,rqtp,rmtp)
        # Macro to call the `fcntl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://man.openbsd.org/fcntl.2
        def fcntl_syscall(fd,cmd,*arg) = syscall_macro(92,fd,cmd,*arg)
        # Macro to call the `accept4` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] anamelen
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/accept4.2
        def accept4_syscall(s,name,anamelen,flags) = syscall_macro(93,s,name,anamelen,flags)
        # Macro to call the `__thrsleep` syscall.
        # @param [Register, Integer] ident
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] tp
        # @param [Register, Integer] lock
        # @param [Register, Integer] abort
        # @see https://man.openbsd.org/__thrsleep.2
        def __thrsleep_syscall(ident,clock_id,tp,lock,abort) = syscall_macro(94,ident,clock_id,tp,lock,abort)
        # Macro to call the `fsync` syscall.
        # @param [Register, Integer] fd
        # @see https://man.openbsd.org/fsync.2
        def fsync_syscall(fd) = syscall_macro(95,fd)
        # Macro to call the `setpriority` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] who
        # @param [Register, Integer] prio
        # @see https://man.openbsd.org/setpriority.2
        def setpriority_syscall(which,who,prio) = syscall_macro(96,which,who,prio)
        # Macro to call the `socket` syscall.
        # @param [Register, Integer] domain
        # @param [Register, Integer] type
        # @param [Register, Integer] protocol
        # @see https://man.openbsd.org/socket.2
        def socket_syscall(domain,type,protocol) = syscall_macro(97,domain,type,protocol)
        # Macro to call the `connect` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://man.openbsd.org/connect.2
        def connect_syscall(s,name,namelen) = syscall_macro(98,s,name,namelen)
        # Macro to call the `getdents` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] buflen
        # @see https://man.openbsd.org/getdents.2
        def getdents_syscall(fd,buf,buflen) = syscall_macro(99,fd,buf,buflen)
        # Macro to call the `getpriority` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] who
        # @see https://man.openbsd.org/getpriority.2
        def getpriority_syscall(which,who) = syscall_macro(100,which,who)
        # Macro to call the `pipe2` syscall.
        # @param [Register, Integer] fdp
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/pipe2.2
        def pipe2_syscall(fdp,flags) = syscall_macro(101,fdp,flags)
        # Macro to call the `dup3` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/dup3.2
        def dup3_syscall(from,to,flags) = syscall_macro(102,from,to,flags)
        # Macro to call the `sigreturn` syscall.
        # @param [Register, Integer] sigcntxp
        # @see https://man.openbsd.org/sigreturn.2
        def sigreturn_syscall(sigcntxp) = syscall_macro(103,sigcntxp)
        # Macro to call the `bind` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://man.openbsd.org/bind.2
        def bind_syscall(s,name,namelen) = syscall_macro(104,s,name,namelen)
        # Macro to call the `setsockopt` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] level
        # @param [Register, Integer] name
        # @param [Register, Integer] val
        # @param [Register, Integer] valsize
        # @see https://man.openbsd.org/setsockopt.2
        def setsockopt_syscall(s,level,name,val,valsize) = syscall_macro(105,s,level,name,val,valsize)
        # Macro to call the `listen` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] backlog
        # @see https://man.openbsd.org/listen.2
        def listen_syscall(s,backlog) = syscall_macro(106,s,backlog)
        # Macro to call the `chflagsat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] atflags
        # @see https://man.openbsd.org/chflagsat.2
        def chflagsat_syscall(fd,path,flags,atflags) = syscall_macro(107,fd,path,flags,atflags)
        # Macro to call the `pledge` syscall.
        # @param [Register, Integer] promises
        # @param [Register, Integer] execpromises
        # @see https://man.openbsd.org/pledge.2
        def pledge_syscall(promises,execpromises) = syscall_macro(108,promises,execpromises)
        # Macro to call the `ppoll` syscall.
        # @param [Register, Integer] fds
        # @param [Register, Integer] nfds
        # @param [Register, Integer] ts
        # @param [Register, Integer] mask
        # @see https://man.openbsd.org/ppoll.2
        def ppoll_syscall(fds,nfds,ts,mask) = syscall_macro(109,fds,nfds,ts,mask)
        # Macro to call the `pselect` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] ts
        # @param [Register, Integer] mask
        # @see https://man.openbsd.org/pselect.2
        def pselect_syscall(nd,in_,ou,ex,ts,mask) = syscall_macro(110,nd,in_,ou,ex,ts,mask)
        # Macro to call the `sigsuspend` syscall.
        # @param [Register, Integer] mask
        # @see https://man.openbsd.org/sigsuspend.2
        def sigsuspend_syscall(mask) = syscall_macro(111,mask)
        # Macro to call the `sendsyslog` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/sendsyslog.2
        def sendsyslog_syscall(buf,nbyte,flags) = syscall_macro(112,buf,nbyte,flags)
        # Macro to call the `unveil` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] permissions
        # @see https://man.openbsd.org/unveil.2
        def unveil_syscall(path,permissions) = syscall_macro(114,path,permissions)
        # Macro to call the `__realpath` syscall.
        # @param [Register, Integer] pathname
        # @param [Register, Integer] resolved
        # @see https://man.openbsd.org/__realpath.2
        def __realpath_syscall(pathname,resolved) = syscall_macro(115,pathname,resolved)
        # Macro to call the `recvmmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] mmsg
        # @param [Register, Integer] vlen
        # @param [Register, Integer] flags
        # @param [Register, Integer] timeout
        # @see https://man.openbsd.org/recvmmsg.2
        def recvmmsg_syscall(s,mmsg,vlen,flags,timeout) = syscall_macro(116,s,mmsg,vlen,flags,timeout)
        # Macro to call the `sendmmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] mmsg
        # @param [Register, Integer] vlen
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/sendmmsg.2
        def sendmmsg_syscall(s,mmsg,vlen,flags) = syscall_macro(117,s,mmsg,vlen,flags)
        # Macro to call the `getsockopt` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] level
        # @param [Register, Integer] name
        # @param [Register, Integer] val
        # @param [Register, Integer] avalsize
        # @see https://man.openbsd.org/getsockopt.2
        def getsockopt_syscall(s,level,name,val,avalsize) = syscall_macro(118,s,level,name,val,avalsize)
        # Macro to call the `thrkill` syscall.
        # @param [Register, Integer] tid
        # @param [Register, Integer] signum
        # @param [Register, Integer] tcb
        # @see https://man.openbsd.org/thrkill.2
        def thrkill_syscall(tid,signum,tcb) = syscall_macro(119,tid,signum,tcb)
        # Macro to call the `readv` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://man.openbsd.org/readv.2
        def readv_syscall(fd,iovp,iovcnt) = syscall_macro(120,fd,iovp,iovcnt)
        # Macro to call the `writev` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://man.openbsd.org/writev.2
        def writev_syscall(fd,iovp,iovcnt) = syscall_macro(121,fd,iovp,iovcnt)
        # Macro to call the `kill` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] signum
        # @see https://man.openbsd.org/kill.2
        def kill_syscall(pid,signum) = syscall_macro(122,pid,signum)
        # Macro to call the `fchown` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://man.openbsd.org/fchown.2
        def fchown_syscall(fd,uid,gid) = syscall_macro(123,fd,uid,gid)
        # Macro to call the `fchmod` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/fchmod.2
        def fchmod_syscall(fd,mode) = syscall_macro(124,fd,mode)
        # Macro to call the `setreuid` syscall.
        # @param [Register, Integer] ruid
        # @param [Register, Integer] euid
        # @see https://man.openbsd.org/setreuid.2
        def setreuid_syscall(ruid,euid) = syscall_macro(126,ruid,euid)
        # Macro to call the `setregid` syscall.
        # @param [Register, Integer] rgid
        # @param [Register, Integer] egid
        # @see https://man.openbsd.org/setregid.2
        def setregid_syscall(rgid,egid) = syscall_macro(127,rgid,egid)
        # Macro to call the `rename` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @see https://man.openbsd.org/rename.2
        def rename_syscall(from,to) = syscall_macro(128,from,to)
        # Macro to call the `flock` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] how
        # @see https://man.openbsd.org/flock.2
        def flock_syscall(fd,how) = syscall_macro(131,fd,how)
        # Macro to call the `mkfifo` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/mkfifo.2
        def mkfifo_syscall(path,mode) = syscall_macro(132,path,mode)
        # Macro to call the `sendto` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] to
        # @param [Register, Integer] tolen
        # @see https://man.openbsd.org/sendto.2
        def sendto_syscall(s,buf,len,flags,to,tolen) = syscall_macro(133,s,buf,len,flags,to,tolen)
        # Macro to call the `shutdown` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] how
        # @see https://man.openbsd.org/shutdown.2
        def shutdown_syscall(s,how) = syscall_macro(134,s,how)
        # Macro to call the `socketpair` syscall.
        # @param [Register, Integer] domain
        # @param [Register, Integer] type
        # @param [Register, Integer] protocol
        # @param [Register, Integer] rsv
        # @see https://man.openbsd.org/socketpair.2
        def socketpair_syscall(domain,type,protocol,rsv) = syscall_macro(135,domain,type,protocol,rsv)
        # Macro to call the `mkdir` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/mkdir.2
        def mkdir_syscall(path,mode) = syscall_macro(136,path,mode)
        # Macro to call the `rmdir` syscall.
        # @param [Register, Integer] path
        # @see https://man.openbsd.org/rmdir.2
        def rmdir_syscall(path) = syscall_macro(137,path)
        # Macro to call the `adjtime` syscall.
        # @param [Register, Integer] delta
        # @param [Register, Integer] olddelta
        # @see https://man.openbsd.org/adjtime.2
        def adjtime_syscall(delta,olddelta) = syscall_macro(140,delta,olddelta)
        # Macro to call the `getlogin_r` syscall.
        # @param [Register, Integer] namebuf
        # @param [Register, Integer] namelen
        # @see https://man.openbsd.org/getlogin_r.2
        def getlogin_r_syscall(namebuf,namelen) = syscall_macro(141,namebuf,namelen)
        # Macro to call the `getthrname` syscall.
        # @param [Register, Integer] tid
        # @param [Register, Integer] name
        # @param [Register, Integer] len
        # @see https://man.openbsd.org/getthrname.2
        def getthrname_syscall(tid,name,len) = syscall_macro(142,tid,name,len)
        # Macro to call the `setthrname` syscall.
        # @param [Register, Integer] tid
        # @param [Register, Integer] name
        # @see https://man.openbsd.org/setthrname.2
        def setthrname_syscall(tid,name) = syscall_macro(143,tid,name)
        # Macro to call the `setsid` syscall.
        # @see https://man.openbsd.org/setsid.2
        def setsid_syscall = syscall_macro(147)
        # Macro to call the `quotactl` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] cmd
        # @param [Register, Integer] uid
        # @param [Register, Integer] arg
        # @see https://man.openbsd.org/quotactl.2
        def quotactl_syscall(path,cmd,uid,arg) = syscall_macro(148,path,cmd,uid,arg)
        # Macro to call the `ypconnect` syscall.
        # @param [Register, Integer] type
        # @see https://man.openbsd.org/ypconnect.2
        def ypconnect_syscall(type) = syscall_macro(150,type)
        # Macro to call the `nfssvc` syscall.
        # @param [Register, Integer] flag
        # @param [Register, Integer] argp
        # @see https://man.openbsd.org/nfssvc.2
        def nfssvc_syscall(flag,argp) = syscall_macro(155,flag,argp)
        # Macro to call the `pinsyscalls` syscall.
        # @param [Register, Integer] base
        # @param [Register, Integer] len
        # @param [Register, Integer] pins
        # @param [Register, Integer] npins
        # @see https://man.openbsd.org/pinsyscalls.2
        def pinsyscalls_syscall(base,len,pins,npins) = syscall_macro(158,base,len,pins,npins)
        # Macro to call the `mimmutable` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.openbsd.org/mimmutable.2
        def mimmutable_syscall(addr,len) = syscall_macro(159,addr,len)
        # Macro to call the `waitid` syscall.
        # @param [Register, Integer] idtype
        # @param [Register, Integer] id
        # @param [Register, Integer] info
        # @param [Register, Integer] options
        # @see https://man.openbsd.org/waitid.2
        def waitid_syscall(idtype,id,info,options) = syscall_macro(160,idtype,id,info,options)
        # Macro to call the `getfh` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] fhp
        # @see https://man.openbsd.org/getfh.2
        def getfh_syscall(fname,fhp) = syscall_macro(161,fname,fhp)
        # Macro to call the `__tmpfd` syscall.
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/__tmpfd.2
        def __tmpfd_syscall(flags) = syscall_macro(164,flags)
        # Macro to call the `sysarch` syscall.
        # @param [Register, Integer] op
        # @param [Register, Integer] parms
        # @see https://man.openbsd.org/sysarch.2
        def sysarch_syscall(op,parms) = syscall_macro(165,op,parms)
        # Macro to call the `lseek` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] offset
        # @param [Register, Integer] whence
        # @see https://man.openbsd.org/lseek.2
        def lseek_syscall(fd,offset,whence) = syscall_macro(166,fd,offset,whence)
        # Macro to call the `truncate` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] length
        # @see https://man.openbsd.org/truncate.2
        def truncate_syscall(path,length) = syscall_macro(167,path,length)
        # Macro to call the `ftruncate` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] length
        # @see https://man.openbsd.org/ftruncate.2
        def ftruncate_syscall(fd,length) = syscall_macro(168,fd,length)
        # Macro to call the `pread` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://man.openbsd.org/pread.2
        def pread_syscall(fd,buf,nbyte,offset) = syscall_macro(169,fd,buf,nbyte,offset)
        # Macro to call the `pwrite` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://man.openbsd.org/pwrite.2
        def pwrite_syscall(fd,buf,nbyte,offset) = syscall_macro(170,fd,buf,nbyte,offset)
        # Macro to call the `preadv` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://man.openbsd.org/preadv.2
        def preadv_syscall(fd,iovp,iovcnt,offset) = syscall_macro(171,fd,iovp,iovcnt,offset)
        # Macro to call the `pwritev` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://man.openbsd.org/pwritev.2
        def pwritev_syscall(fd,iovp,iovcnt,offset) = syscall_macro(172,fd,iovp,iovcnt,offset)
        # Macro to call the `profil` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] buflen
        # @param [Register, Integer] samplesize
        # @param [Register, Integer] offset
        # @param [Register, Integer] scale
        # @param [Register, Integer] dirfd
        # @see https://man.openbsd.org/profil.2
        def profil_syscall(buf,buflen,samplesize,offset,scale,dirfd) = syscall_macro(175,buf,buflen,samplesize,offset,scale,dirfd)
        # Macro to call the `setgid` syscall.
        # @param [Register, Integer] gid
        # @see https://man.openbsd.org/setgid.2
        def setgid_syscall(gid) = syscall_macro(181,gid)
        # Macro to call the `setegid` syscall.
        # @param [Register, Integer] egid
        # @see https://man.openbsd.org/setegid.2
        def setegid_syscall(egid) = syscall_macro(182,egid)
        # Macro to call the `seteuid` syscall.
        # @param [Register, Integer] euid
        # @see https://man.openbsd.org/seteuid.2
        def seteuid_syscall(euid) = syscall_macro(183,euid)
        # Macro to call the `pathconfat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] name
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/pathconfat.2
        def pathconfat_syscall(fd,path,name,flag) = syscall_macro(190,fd,path,name,flag)
        # Macro to call the `pathconf` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] name
        # @see https://man.openbsd.org/pathconf.2
        def pathconf_syscall(path,name) = syscall_macro(191,path,name)
        # Macro to call the `fpathconf` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] name
        # @see https://man.openbsd.org/fpathconf.2
        def fpathconf_syscall(fd,name) = syscall_macro(192,fd,name)
        # Macro to call the `swapctl` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @param [Register, Integer] misc
        # @see https://man.openbsd.org/swapctl.2
        def swapctl_syscall(cmd,arg,misc) = syscall_macro(193,cmd,arg,misc)
        # Macro to call the `getrlimit` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] rlp
        # @see https://man.openbsd.org/getrlimit.2
        def getrlimit_syscall(which,rlp) = syscall_macro(194,which,rlp)
        # Macro to call the `setrlimit` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] rlp
        # @see https://man.openbsd.org/setrlimit.2
        def setrlimit_syscall(which,rlp) = syscall_macro(195,which,rlp)
        # Macro to call the `sysctl` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @param [Register, Integer] old
        # @param [Register, Integer] oldlenp
        # @param [Register, Integer] new
        # @param [Register, Integer] newlen
        # @see https://man.openbsd.org/sysctl.2
        def sysctl_syscall(name,namelen,old,oldlenp,new,newlen) = syscall_macro(202,name,namelen,old,oldlenp,new,newlen)
        # Macro to call the `mlock` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.openbsd.org/mlock.2
        def mlock_syscall(addr,len) = syscall_macro(203,addr,len)
        # Macro to call the `munlock` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.openbsd.org/munlock.2
        def munlock_syscall(addr,len) = syscall_macro(204,addr,len)
        # Macro to call the `getpgid` syscall.
        # @param [Register, Integer] pid
        # @see https://man.openbsd.org/getpgid.2
        def getpgid_syscall(pid) = syscall_macro(207,pid)
        # Macro to call the `utrace` syscall.
        # @param [Register, Integer] label
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.openbsd.org/utrace.2
        def utrace_syscall(label,addr,len) = syscall_macro(209,label,addr,len)
        # Macro to call the `semget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] nsems
        # @param [Register, Integer] semflg
        # @see https://man.openbsd.org/semget.2
        def semget_syscall(key,nsems,semflg) = syscall_macro(221,key,nsems,semflg)
        # Macro to call the `msgget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] msgflg
        # @see https://man.openbsd.org/msgget.2
        def msgget_syscall(key,msgflg) = syscall_macro(225,key,msgflg)
        # Macro to call the `msgsnd` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgflg
        # @see https://man.openbsd.org/msgsnd.2
        def msgsnd_syscall(msqid,msgp,msgsz,msgflg) = syscall_macro(226,msqid,msgp,msgsz,msgflg)
        # Macro to call the `msgrcv` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgtyp
        # @param [Register, Integer] msgflg
        # @see https://man.openbsd.org/msgrcv.2
        def msgrcv_syscall(msqid,msgp,msgsz,msgtyp,msgflg) = syscall_macro(227,msqid,msgp,msgsz,msgtyp,msgflg)
        # Macro to call the `shmat` syscall.
        # @param [Register, Integer] shmid
        # @param [Register, Integer] shmaddr
        # @param [Register, Integer] shmflg
        # @see https://man.openbsd.org/shmat.2
        def shmat_syscall(shmid,shmaddr,shmflg) = syscall_macro(228,shmid,shmaddr,shmflg)
        # Macro to call the `shmdt` syscall.
        # @param [Register, Integer] shmaddr
        # @see https://man.openbsd.org/shmdt.2
        def shmdt_syscall(shmaddr) = syscall_macro(230,shmaddr)
        # Macro to call the `minherit` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] inherit
        # @see https://man.openbsd.org/minherit.2
        def minherit_syscall(addr,len,inherit) = syscall_macro(250,addr,len,inherit)
        # Macro to call the `poll` syscall.
        # @param [Register, Integer] fds
        # @param [Register, Integer] nfds
        # @param [Register, Integer] timeout
        # @see https://man.openbsd.org/poll.2
        def poll_syscall(fds,nfds,timeout) = syscall_macro(252,fds,nfds,timeout)
        # Macro to call the `issetugid` syscall.
        # @see https://man.openbsd.org/issetugid.2
        def issetugid_syscall = syscall_macro(253)
        # Macro to call the `lchown` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://man.openbsd.org/lchown.2
        def lchown_syscall(path,uid,gid) = syscall_macro(254,path,uid,gid)
        # Macro to call the `getsid` syscall.
        # @param [Register, Integer] pid
        # @see https://man.openbsd.org/getsid.2
        def getsid_syscall(pid) = syscall_macro(255,pid)
        # Macro to call the `msync` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/msync.2
        def msync_syscall(addr,len,flags) = syscall_macro(256,addr,len,flags)
        # Macro to call the `pipe` syscall.
        # @param [Register, Integer] fdp
        # @see https://man.openbsd.org/pipe.2
        def pipe_syscall(fdp) = syscall_macro(263,fdp)
        # Macro to call the `fhopen` syscall.
        # @param [Register, Integer] fhp
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/fhopen.2
        def fhopen_syscall(fhp,flags) = syscall_macro(264,fhp,flags)
        # Macro to call the `kqueue` syscall.
        # @see https://man.openbsd.org/kqueue.2
        def kqueue_syscall = syscall_macro(269)
        # Macro to call the `kqueue1` syscall.
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/kqueue1.2
        def kqueue1_syscall(flags) = syscall_macro(270,flags)
        # Macro to call the `mlockall` syscall.
        # @param [Register, Integer] flags
        # @see https://man.openbsd.org/mlockall.2
        def mlockall_syscall(flags) = syscall_macro(271,flags)
        # Macro to call the `munlockall` syscall.
        # @see https://man.openbsd.org/munlockall.2
        def munlockall_syscall = syscall_macro(272)
        # Macro to call the `getresuid` syscall.
        # @param [Register, Integer] ruid
        # @param [Register, Integer] euid
        # @param [Register, Integer] suid
        # @see https://man.openbsd.org/getresuid.2
        def getresuid_syscall(ruid,euid,suid) = syscall_macro(281,ruid,euid,suid)
        # Macro to call the `setresuid` syscall.
        # @param [Register, Integer] ruid
        # @param [Register, Integer] euid
        # @param [Register, Integer] suid
        # @see https://man.openbsd.org/setresuid.2
        def setresuid_syscall(ruid,euid,suid) = syscall_macro(282,ruid,euid,suid)
        # Macro to call the `getresgid` syscall.
        # @param [Register, Integer] rgid
        # @param [Register, Integer] egid
        # @param [Register, Integer] sgid
        # @see https://man.openbsd.org/getresgid.2
        def getresgid_syscall(rgid,egid,sgid) = syscall_macro(283,rgid,egid,sgid)
        # Macro to call the `setresgid` syscall.
        # @param [Register, Integer] rgid
        # @param [Register, Integer] egid
        # @param [Register, Integer] sgid
        # @see https://man.openbsd.org/setresgid.2
        def setresgid_syscall(rgid,egid,sgid) = syscall_macro(284,rgid,egid,sgid)
        # Macro to call the `closefrom` syscall.
        # @param [Register, Integer] fd
        # @see https://man.openbsd.org/closefrom.2
        def closefrom_syscall(fd) = syscall_macro(287,fd)
        # Macro to call the `sigaltstack` syscall.
        # @param [Register, Integer] nss
        # @param [Register, Integer] oss
        # @see https://man.openbsd.org/sigaltstack.2
        def sigaltstack_syscall(nss,oss) = syscall_macro(288,nss,oss)
        # Macro to call the `shmget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] size
        # @param [Register, Integer] shmflg
        # @see https://man.openbsd.org/shmget.2
        def shmget_syscall(key,size,shmflg) = syscall_macro(289,key,size,shmflg)
        # Macro to call the `semop` syscall.
        # @param [Register, Integer] semid
        # @param [Register, Integer] sops
        # @param [Register, Integer] nsops
        # @see https://man.openbsd.org/semop.2
        def semop_syscall(semid,sops,nsops) = syscall_macro(290,semid,sops,nsops)
        # Macro to call the `fhstat` syscall.
        # @param [Register, Integer] fhp
        # @param [Register, Integer] sb
        # @see https://man.openbsd.org/fhstat.2
        def fhstat_syscall(fhp,sb) = syscall_macro(294,fhp,sb)
        # Macro to call the `__semctl` syscall.
        # @param [Register, Integer] semid
        # @param [Register, Integer] semnum
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://man.openbsd.org/__semctl.2
        def __semctl_syscall(semid,semnum,cmd,arg) = syscall_macro(295,semid,semnum,cmd,arg)
        # Macro to call the `shmctl` syscall.
        # @param [Register, Integer] shmid
        # @param [Register, Integer] cmd
        # @param [Register, Integer] buf
        # @see https://man.openbsd.org/shmctl.2
        def shmctl_syscall(shmid,cmd,buf) = syscall_macro(296,shmid,cmd,buf)
        # Macro to call the `msgctl` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] cmd
        # @param [Register, Integer] buf
        # @see https://man.openbsd.org/msgctl.2
        def msgctl_syscall(msqid,cmd,buf) = syscall_macro(297,msqid,cmd,buf)
        # Macro to call the `sched_yield` syscall.
        # @see https://man.openbsd.org/sched_yield.2
        def sched_yield_syscall = syscall_macro(298)
        # Macro to call the `getthrid` syscall.
        # @see https://man.openbsd.org/getthrid.2
        def getthrid_syscall = syscall_macro(299)
        # Macro to call the `__thrwakeup` syscall.
        # @param [Register, Integer] ident
        # @param [Register, Integer] n
        # @see https://man.openbsd.org/__thrwakeup.2
        def __thrwakeup_syscall(ident,n) = syscall_macro(301,ident,n)
        # Macro to call the `__threxit` syscall.
        # @param [Register, Integer] notdead
        # @see https://man.openbsd.org/__threxit.2
        def __threxit_syscall(notdead) = syscall_macro(302,notdead)
        # Macro to call the `__thrsigdivert` syscall.
        # @param [Register, Integer] sigmask
        # @param [Register, Integer] info
        # @param [Register, Integer] timeout
        # @see https://man.openbsd.org/__thrsigdivert.2
        def __thrsigdivert_syscall(sigmask,info,timeout) = syscall_macro(303,sigmask,info,timeout)
        # Macro to call the `__getcwd` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @see https://man.openbsd.org/__getcwd.2
        def __getcwd_syscall(buf,len) = syscall_macro(304,buf,len)
        # Macro to call the `adjfreq` syscall.
        # @param [Register, Integer] freq
        # @param [Register, Integer] oldfreq
        # @see https://man.openbsd.org/adjfreq.2
        def adjfreq_syscall(freq,oldfreq) = syscall_macro(305,freq,oldfreq)
        # Macro to call the `setrtable` syscall.
        # @param [Register, Integer] rtableid
        # @see https://man.openbsd.org/setrtable.2
        def setrtable_syscall(rtableid) = syscall_macro(310,rtableid)
        # Macro to call the `getrtable` syscall.
        # @see https://man.openbsd.org/getrtable.2
        def getrtable_syscall = syscall_macro(311)
        # Macro to call the `faccessat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] amode
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/faccessat.2
        def faccessat_syscall(fd,path,amode,flag) = syscall_macro(313,fd,path,amode,flag)
        # Macro to call the `fchmodat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/fchmodat.2
        def fchmodat_syscall(fd,path,mode,flag) = syscall_macro(314,fd,path,mode,flag)
        # Macro to call the `fchownat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/fchownat.2
        def fchownat_syscall(fd,path,uid,gid,flag) = syscall_macro(315,fd,path,uid,gid,flag)
        # Macro to call the `linkat` syscall.
        # @param [Register, Integer] fd1
        # @param [Register, Integer] path1
        # @param [Register, Integer] fd2
        # @param [Register, Integer] path2
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/linkat.2
        def linkat_syscall(fd1,path1,fd2,path2,flag) = syscall_macro(317,fd1,path1,fd2,path2,flag)
        # Macro to call the `mkdirat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/mkdirat.2
        def mkdirat_syscall(fd,path,mode) = syscall_macro(318,fd,path,mode)
        # Macro to call the `mkfifoat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/mkfifoat.2
        def mkfifoat_syscall(fd,path,mode) = syscall_macro(319,fd,path,mode)
        # Macro to call the `mknodat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] dev
        # @see https://man.openbsd.org/mknodat.2
        def mknodat_syscall(fd,path,mode,dev) = syscall_macro(320,fd,path,mode,dev)
        # Macro to call the `openat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://man.openbsd.org/openat.2
        def openat_syscall(fd,path,flags,*mode) = syscall_macro(321,fd,path,flags,*mode)
        # Macro to call the `readlinkat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] count
        # @see https://man.openbsd.org/readlinkat.2
        def readlinkat_syscall(fd,path,buf,count) = syscall_macro(322,fd,path,buf,count)
        # Macro to call the `renameat` syscall.
        # @param [Register, Integer] fromfd
        # @param [Register, Integer] from
        # @param [Register, Integer] tofd
        # @param [Register, Integer] to
        # @see https://man.openbsd.org/renameat.2
        def renameat_syscall(fromfd,from,tofd,to) = syscall_macro(323,fromfd,from,tofd,to)
        # Macro to call the `symlinkat` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] fd
        # @param [Register, Integer] link
        # @see https://man.openbsd.org/symlinkat.2
        def symlinkat_syscall(path,fd,link) = syscall_macro(324,path,fd,link)
        # Macro to call the `unlinkat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flag
        # @see https://man.openbsd.org/unlinkat.2
        def unlinkat_syscall(fd,path,flag) = syscall_macro(325,fd,path,flag)
        # Macro to call the `__set_tcb` syscall.
        # @param [Register, Integer] tcb
        # @see https://man.openbsd.org/__set_tcb.2
        def __set_tcb_syscall(tcb) = syscall_macro(329,tcb)
        # Macro to call the `__get_tcb` syscall.
        # @see https://man.openbsd.org/__get_tcb.2
        def __get_tcb_syscall = syscall_macro(330)
      end
    end
  end
end
