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
      # FreeBSD syscall macros.
      #
      # @since 1.0.0
      #
      module FreeBSD
        # Macro to call the `syscall` syscall.
        # @param [Register, Integer] number
        # @param [Register, Integer] args
        # @see https://man.freebsd.org/cgi/man.cgi?query=syscall&sektion=2&apropos=0
        def syscall_syscall(number,*args) = syscall_macro(0,number,*args)
        # Macro to call the `exit` syscall.
        # @param [Register, Integer] rval
        # @see https://man.freebsd.org/cgi/man.cgi?query=exit&sektion=2&apropos=0
        def exit_syscall(rval) = syscall_macro(1,rval)
        # Macro to call the `fork` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=fork&sektion=2&apropos=0
        def fork_syscall = syscall_macro(2)
        # Macro to call the `read` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @see https://man.freebsd.org/cgi/man.cgi?query=read&sektion=2&apropos=0
        def read_syscall(fd,buf,nbyte) = syscall_macro(3,fd,buf,nbyte)
        # Macro to call the `write` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @see https://man.freebsd.org/cgi/man.cgi?query=write&sektion=2&apropos=0
        def write_syscall(fd,buf,nbyte) = syscall_macro(4,fd,buf,nbyte)
        # Macro to call the `open` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=open&sektion=2&apropos=0
        def open_syscall(path,flags,mode) = syscall_macro(5,path,flags,mode)
        # Macro to call the `close` syscall.
        # @param [Register, Integer] fd
        # @see https://man.freebsd.org/cgi/man.cgi?query=close&sektion=2&apropos=0
        def close_syscall(fd) = syscall_macro(6,fd)
        # Macro to call the `wait4` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] status
        # @param [Register, Integer] options
        # @param [Register, Integer] rusage
        # @see https://man.freebsd.org/cgi/man.cgi?query=wait4&sektion=2&apropos=0
        def wait4_syscall(pid,status,options,rusage) = syscall_macro(7,pid,status,options,rusage)
        # Macro to call the `link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] link
        # @see https://man.freebsd.org/cgi/man.cgi?query=link&sektion=2&apropos=0
        def link_syscall(path,link) = syscall_macro(9,path,link)
        # Macro to call the `unlink` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=unlink&sektion=2&apropos=0
        def unlink_syscall(path) = syscall_macro(10,path)
        # Macro to call the `chdir` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=chdir&sektion=2&apropos=0
        def chdir_syscall(path) = syscall_macro(12,path)
        # Macro to call the `fchdir` syscall.
        # @param [Register, Integer] fd
        # @see https://man.freebsd.org/cgi/man.cgi?query=fchdir&sektion=2&apropos=0
        def fchdir_syscall(fd) = syscall_macro(13,fd)
        # Macro to call the `chmod` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=chmod&sektion=2&apropos=0
        def chmod_syscall(path,mode) = syscall_macro(15,path,mode)
        # Macro to call the `chown` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://man.freebsd.org/cgi/man.cgi?query=chown&sektion=2&apropos=0
        def chown_syscall(path,uid,gid) = syscall_macro(16,path,uid,gid)
        # Macro to call the `break` syscall.
        # @param [Register, Integer] nsize
        # @see https://man.freebsd.org/cgi/man.cgi?query=break&sektion=2&apropos=0
        def break_syscall(nsize) = syscall_macro(17,nsize)
        # Macro to call the `getpid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=getpid&sektion=2&apropos=0
        def getpid_syscall = syscall_macro(20)
        # Macro to call the `mount` syscall.
        # @param [Register, Integer] type
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] data
        # @see https://man.freebsd.org/cgi/man.cgi?query=mount&sektion=2&apropos=0
        def mount_syscall(type,path,flags,data) = syscall_macro(21,type,path,flags,data)
        # Macro to call the `unmount` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=unmount&sektion=2&apropos=0
        def unmount_syscall(path,flags) = syscall_macro(22,path,flags)
        # Macro to call the `setuid` syscall.
        # @param [Register, Integer] uid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setuid&sektion=2&apropos=0
        def setuid_syscall(uid) = syscall_macro(23,uid)
        # Macro to call the `getuid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=getuid&sektion=2&apropos=0
        def getuid_syscall = syscall_macro(24)
        # Macro to call the `geteuid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=geteuid&sektion=2&apropos=0
        def geteuid_syscall = syscall_macro(25)
        # Macro to call the `ptrace` syscall.
        # @param [Register, Integer] req
        # @param [Register, Integer] pid
        # @param [Register, Integer] addr
        # @param [Register, Integer] data
        # @see https://man.freebsd.org/cgi/man.cgi?query=ptrace&sektion=2&apropos=0
        def ptrace_syscall(req,pid,addr,data) = syscall_macro(26,req,pid,addr,data)
        # Macro to call the `recvmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=recvmsg&sektion=2&apropos=0
        def recvmsg_syscall(s,msg,flags) = syscall_macro(27,s,msg,flags)
        # Macro to call the `sendmsg` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] msg
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=sendmsg&sektion=2&apropos=0
        def sendmsg_syscall(s,msg,flags) = syscall_macro(28,s,msg,flags)
        # Macro to call the `recvfrom` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] from
        # @param [Register, Integer] fromlenaddr
        # @see https://man.freebsd.org/cgi/man.cgi?query=recvfrom&sektion=2&apropos=0
        def recvfrom_syscall(s,buf,len,flags,from,fromlenaddr) = syscall_macro(29,s,buf,len,flags,from,fromlenaddr)
        # Macro to call the `accept` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] anamelen
        # @see https://man.freebsd.org/cgi/man.cgi?query=accept&sektion=2&apropos=0
        def accept_syscall(s,name,anamelen) = syscall_macro(30,s,name,anamelen)
        # Macro to call the `getpeername` syscall.
        # @param [Register, Integer] fdes
        # @param [Register, Integer] asa
        # @param [Register, Integer] alen
        # @see https://man.freebsd.org/cgi/man.cgi?query=getpeername&sektion=2&apropos=0
        def getpeername_syscall(fdes,asa,alen) = syscall_macro(31,fdes,asa,alen)
        # Macro to call the `getsockname` syscall.
        # @param [Register, Integer] fdes
        # @param [Register, Integer] asa
        # @param [Register, Integer] alen
        # @see https://man.freebsd.org/cgi/man.cgi?query=getsockname&sektion=2&apropos=0
        def getsockname_syscall(fdes,asa,alen) = syscall_macro(32,fdes,asa,alen)
        # Macro to call the `access` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] amode
        # @see https://man.freebsd.org/cgi/man.cgi?query=access&sektion=2&apropos=0
        def access_syscall(path,amode) = syscall_macro(33,path,amode)
        # Macro to call the `chflags` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=chflags&sektion=2&apropos=0
        def chflags_syscall(path,flags) = syscall_macro(34,path,flags)
        # Macro to call the `fchflags` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=fchflags&sektion=2&apropos=0
        def fchflags_syscall(fd,flags) = syscall_macro(35,fd,flags)
        # Macro to call the `sync` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=sync&sektion=2&apropos=0
        def sync_syscall = syscall_macro(36)
        # Macro to call the `kill` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] signum
        # @see https://man.freebsd.org/cgi/man.cgi?query=kill&sektion=2&apropos=0
        def kill_syscall(pid,signum) = syscall_macro(37,pid,signum)
        # Macro to call the `getppid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=getppid&sektion=2&apropos=0
        def getppid_syscall = syscall_macro(39)
        # Macro to call the `dup` syscall.
        # @param [Register, Integer] fd
        # @see https://man.freebsd.org/cgi/man.cgi?query=dup&sektion=2&apropos=0
        def dup_syscall(fd) = syscall_macro(41,fd)
        # Macro to call the `getegid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=getegid&sektion=2&apropos=0
        def getegid_syscall = syscall_macro(43)
        # Macro to call the `profil` syscall.
        # @param [Register, Integer] samples
        # @param [Register, Integer] size
        # @param [Register, Integer] offset
        # @param [Register, Integer] scale
        # @see https://man.freebsd.org/cgi/man.cgi?query=profil&sektion=2&apropos=0
        def profil_syscall(samples,size,offset,scale) = syscall_macro(44,samples,size,offset,scale)
        # Macro to call the `ktrace` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] ops
        # @param [Register, Integer] facs
        # @param [Register, Integer] pid
        # @see https://man.freebsd.org/cgi/man.cgi?query=ktrace&sektion=2&apropos=0
        def ktrace_syscall(fname,ops,facs,pid) = syscall_macro(45,fname,ops,facs,pid)
        # Macro to call the `getgid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=getgid&sektion=2&apropos=0
        def getgid_syscall = syscall_macro(47)
        # Macro to call the `getlogin` syscall.
        # @param [Register, Integer] namebuf
        # @param [Register, Integer] namelen
        # @see https://man.freebsd.org/cgi/man.cgi?query=getlogin&sektion=2&apropos=0
        def getlogin_syscall(namebuf,namelen) = syscall_macro(49,namebuf,namelen)
        # Macro to call the `setlogin` syscall.
        # @param [Register, Integer] namebuf
        # @see https://man.freebsd.org/cgi/man.cgi?query=setlogin&sektion=2&apropos=0
        def setlogin_syscall(namebuf) = syscall_macro(50,namebuf)
        # Macro to call the `acct` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=acct&sektion=2&apropos=0
        def acct_syscall(path) = syscall_macro(51,path)
        # Macro to call the `sigaltstack` syscall.
        # @param [Register, Integer] ss
        # @param [Register, Integer] oss
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigaltstack&sektion=2&apropos=0
        def sigaltstack_syscall(ss,oss) = syscall_macro(53,ss,oss)
        # Macro to call the `ioctl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] com
        # @param [Register, Integer] data
        # @see https://man.freebsd.org/cgi/man.cgi?query=ioctl&sektion=2&apropos=0
        def ioctl_syscall(fd,com,data) = syscall_macro(54,fd,com,data)
        # Macro to call the `reboot` syscall.
        # @param [Register, Integer] opt
        # @see https://man.freebsd.org/cgi/man.cgi?query=reboot&sektion=2&apropos=0
        def reboot_syscall(opt) = syscall_macro(55,opt)
        # Macro to call the `revoke` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=revoke&sektion=2&apropos=0
        def revoke_syscall(path) = syscall_macro(56,path)
        # Macro to call the `symlink` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] link
        # @see https://man.freebsd.org/cgi/man.cgi?query=symlink&sektion=2&apropos=0
        def symlink_syscall(path,link) = syscall_macro(57,path,link)
        # Macro to call the `readlink` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] count
        # @see https://man.freebsd.org/cgi/man.cgi?query=readlink&sektion=2&apropos=0
        def readlink_syscall(path,buf,count) = syscall_macro(58,path,buf,count)
        # Macro to call the `execve` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] argv
        # @param [Register, Integer] envv
        # @see https://man.freebsd.org/cgi/man.cgi?query=execve&sektion=2&apropos=0
        def execve_syscall(fname,argv,envv) = syscall_macro(59,fname,argv,envv)
        # Macro to call the `umask` syscall.
        # @param [Register, Integer] newmask
        # @see https://man.freebsd.org/cgi/man.cgi?query=umask&sektion=2&apropos=0
        def umask_syscall(newmask) = syscall_macro(60,newmask)
        # Macro to call the `chroot` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=chroot&sektion=2&apropos=0
        def chroot_syscall(path) = syscall_macro(61,path)
        # Macro to call the `msync` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=msync&sektion=2&apropos=0
        def msync_syscall(addr,len,flags) = syscall_macro(65,addr,len,flags)
        # Macro to call the `vfork` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=vfork&sektion=2&apropos=0
        def vfork_syscall = syscall_macro(66)
        # Macro to call the `munmap` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.freebsd.org/cgi/man.cgi?query=munmap&sektion=2&apropos=0
        def munmap_syscall(addr,len) = syscall_macro(73,addr,len)
        # Macro to call the `mprotect` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] prot
        # @see https://man.freebsd.org/cgi/man.cgi?query=mprotect&sektion=2&apropos=0
        def mprotect_syscall(addr,len,prot) = syscall_macro(74,addr,len,prot)
        # Macro to call the `madvise` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] behav
        # @see https://man.freebsd.org/cgi/man.cgi?query=madvise&sektion=2&apropos=0
        def madvise_syscall(addr,len,behav) = syscall_macro(75,addr,len,behav)
        # Macro to call the `mincore` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] vec
        # @see https://man.freebsd.org/cgi/man.cgi?query=mincore&sektion=2&apropos=0
        def mincore_syscall(addr,len,vec) = syscall_macro(78,addr,len,vec)
        # Macro to call the `getgroups` syscall.
        # @param [Register, Integer] gidsetsize
        # @param [Register, Integer] gidset
        # @see https://man.freebsd.org/cgi/man.cgi?query=getgroups&sektion=2&apropos=0
        def getgroups_syscall(gidsetsize,gidset) = syscall_macro(79,gidsetsize,gidset)
        # Macro to call the `setgroups` syscall.
        # @param [Register, Integer] gidsetsize
        # @param [Register, Integer] gidset
        # @see https://man.freebsd.org/cgi/man.cgi?query=setgroups&sektion=2&apropos=0
        def setgroups_syscall(gidsetsize,gidset) = syscall_macro(80,gidsetsize,gidset)
        # Macro to call the `getpgrp` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=getpgrp&sektion=2&apropos=0
        def getpgrp_syscall = syscall_macro(81)
        # Macro to call the `setpgid` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] pgid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setpgid&sektion=2&apropos=0
        def setpgid_syscall(pid,pgid) = syscall_macro(82,pid,pgid)
        # Macro to call the `setitimer` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] itv
        # @param [Register, Integer] oitv
        # @see https://man.freebsd.org/cgi/man.cgi?query=setitimer&sektion=2&apropos=0
        def setitimer_syscall(which,itv,oitv) = syscall_macro(83,which,itv,oitv)
        # Macro to call the `swapon` syscall.
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=swapon&sektion=2&apropos=0
        def swapon_syscall(name) = syscall_macro(85,name)
        # Macro to call the `getitimer` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] itv
        # @see https://man.freebsd.org/cgi/man.cgi?query=getitimer&sektion=2&apropos=0
        def getitimer_syscall(which,itv) = syscall_macro(86,which,itv)
        # Macro to call the `getdtablesize` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=getdtablesize&sektion=2&apropos=0
        def getdtablesize_syscall = syscall_macro(89)
        # Macro to call the `dup2` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @see https://man.freebsd.org/cgi/man.cgi?query=dup2&sektion=2&apropos=0
        def dup2_syscall(from,to) = syscall_macro(90,from,to)
        # Macro to call the `fcntl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://man.freebsd.org/cgi/man.cgi?query=fcntl&sektion=2&apropos=0
        def fcntl_syscall(fd,cmd,arg) = syscall_macro(92,fd,cmd,arg)
        # Macro to call the `select` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] tv
        # @see https://man.freebsd.org/cgi/man.cgi?query=select&sektion=2&apropos=0
        def select_syscall(nd,in_,ou,ex,tv) = syscall_macro(93,nd,in_,ou,ex,tv)
        # Macro to call the `fsync` syscall.
        # @param [Register, Integer] fd
        # @see https://man.freebsd.org/cgi/man.cgi?query=fsync&sektion=2&apropos=0
        def fsync_syscall(fd) = syscall_macro(95,fd)
        # Macro to call the `setpriority` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] who
        # @param [Register, Integer] prio
        # @see https://man.freebsd.org/cgi/man.cgi?query=setpriority&sektion=2&apropos=0
        def setpriority_syscall(which,who,prio) = syscall_macro(96,which,who,prio)
        # Macro to call the `socket` syscall.
        # @param [Register, Integer] domain
        # @param [Register, Integer] type
        # @param [Register, Integer] protocol
        # @see https://man.freebsd.org/cgi/man.cgi?query=socket&sektion=2&apropos=0
        def socket_syscall(domain,type,protocol) = syscall_macro(97,domain,type,protocol)
        # Macro to call the `connect` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://man.freebsd.org/cgi/man.cgi?query=connect&sektion=2&apropos=0
        def connect_syscall(s,name,namelen) = syscall_macro(98,s,name,namelen)
        # Macro to call the `getpriority` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] who
        # @see https://man.freebsd.org/cgi/man.cgi?query=getpriority&sektion=2&apropos=0
        def getpriority_syscall(which,who) = syscall_macro(100,which,who)
        # Macro to call the `bind` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://man.freebsd.org/cgi/man.cgi?query=bind&sektion=2&apropos=0
        def bind_syscall(s,name,namelen) = syscall_macro(104,s,name,namelen)
        # Macro to call the `setsockopt` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] level
        # @param [Register, Integer] name
        # @param [Register, Integer] val
        # @param [Register, Integer] valsize
        # @see https://man.freebsd.org/cgi/man.cgi?query=setsockopt&sektion=2&apropos=0
        def setsockopt_syscall(s,level,name,val,valsize) = syscall_macro(105,s,level,name,val,valsize)
        # Macro to call the `listen` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] backlog
        # @see https://man.freebsd.org/cgi/man.cgi?query=listen&sektion=2&apropos=0
        def listen_syscall(s,backlog) = syscall_macro(106,s,backlog)
        # Macro to call the `gettimeofday` syscall.
        # @param [Register, Integer] tp
        # @param [Register, Integer] tzp
        # @see https://man.freebsd.org/cgi/man.cgi?query=gettimeofday&sektion=2&apropos=0
        def gettimeofday_syscall(tp,tzp) = syscall_macro(116,tp,tzp)
        # Macro to call the `getrusage` syscall.
        # @param [Register, Integer] who
        # @param [Register, Integer] rusage
        # @see https://man.freebsd.org/cgi/man.cgi?query=getrusage&sektion=2&apropos=0
        def getrusage_syscall(who,rusage) = syscall_macro(117,who,rusage)
        # Macro to call the `getsockopt` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] level
        # @param [Register, Integer] name
        # @param [Register, Integer] val
        # @param [Register, Integer] avalsize
        # @see https://man.freebsd.org/cgi/man.cgi?query=getsockopt&sektion=2&apropos=0
        def getsockopt_syscall(s,level,name,val,avalsize) = syscall_macro(118,s,level,name,val,avalsize)
        # Macro to call the `readv` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://man.freebsd.org/cgi/man.cgi?query=readv&sektion=2&apropos=0
        def readv_syscall(fd,iovp,iovcnt) = syscall_macro(120,fd,iovp,iovcnt)
        # Macro to call the `writev` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @see https://man.freebsd.org/cgi/man.cgi?query=writev&sektion=2&apropos=0
        def writev_syscall(fd,iovp,iovcnt) = syscall_macro(121,fd,iovp,iovcnt)
        # Macro to call the `settimeofday` syscall.
        # @param [Register, Integer] tv
        # @param [Register, Integer] tzp
        # @see https://man.freebsd.org/cgi/man.cgi?query=settimeofday&sektion=2&apropos=0
        def settimeofday_syscall(tv,tzp) = syscall_macro(122,tv,tzp)
        # Macro to call the `fchown` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://man.freebsd.org/cgi/man.cgi?query=fchown&sektion=2&apropos=0
        def fchown_syscall(fd,uid,gid) = syscall_macro(123,fd,uid,gid)
        # Macro to call the `fchmod` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=fchmod&sektion=2&apropos=0
        def fchmod_syscall(fd,mode) = syscall_macro(124,fd,mode)
        # Macro to call the `setreuid` syscall.
        # @param [Register, Integer] ruid
        # @param [Register, Integer] euid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setreuid&sektion=2&apropos=0
        def setreuid_syscall(ruid,euid) = syscall_macro(126,ruid,euid)
        # Macro to call the `setregid` syscall.
        # @param [Register, Integer] rgid
        # @param [Register, Integer] egid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setregid&sektion=2&apropos=0
        def setregid_syscall(rgid,egid) = syscall_macro(127,rgid,egid)
        # Macro to call the `rename` syscall.
        # @param [Register, Integer] from
        # @param [Register, Integer] to
        # @see https://man.freebsd.org/cgi/man.cgi?query=rename&sektion=2&apropos=0
        def rename_syscall(from,to) = syscall_macro(128,from,to)
        # Macro to call the `flock` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] how
        # @see https://man.freebsd.org/cgi/man.cgi?query=flock&sektion=2&apropos=0
        def flock_syscall(fd,how) = syscall_macro(131,fd,how)
        # Macro to call the `mkfifo` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=mkfifo&sektion=2&apropos=0
        def mkfifo_syscall(path,mode) = syscall_macro(132,path,mode)
        # Macro to call the `sendto` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] buf
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @param [Register, Integer] to
        # @param [Register, Integer] tolen
        # @see https://man.freebsd.org/cgi/man.cgi?query=sendto&sektion=2&apropos=0
        def sendto_syscall(s,buf,len,flags,to,tolen) = syscall_macro(133,s,buf,len,flags,to,tolen)
        # Macro to call the `shutdown` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] how
        # @see https://man.freebsd.org/cgi/man.cgi?query=shutdown&sektion=2&apropos=0
        def shutdown_syscall(s,how) = syscall_macro(134,s,how)
        # Macro to call the `socketpair` syscall.
        # @param [Register, Integer] domain
        # @param [Register, Integer] type
        # @param [Register, Integer] protocol
        # @param [Register, Integer] rsv
        # @see https://man.freebsd.org/cgi/man.cgi?query=socketpair&sektion=2&apropos=0
        def socketpair_syscall(domain,type,protocol,rsv) = syscall_macro(135,domain,type,protocol,rsv)
        # Macro to call the `mkdir` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=mkdir&sektion=2&apropos=0
        def mkdir_syscall(path,mode) = syscall_macro(136,path,mode)
        # Macro to call the `rmdir` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=rmdir&sektion=2&apropos=0
        def rmdir_syscall(path) = syscall_macro(137,path)
        # Macro to call the `utimes` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] tptr
        # @see https://man.freebsd.org/cgi/man.cgi?query=utimes&sektion=2&apropos=0
        def utimes_syscall(path,tptr) = syscall_macro(138,path,tptr)
        # Macro to call the `adjtime` syscall.
        # @param [Register, Integer] delta
        # @param [Register, Integer] olddelta
        # @see https://man.freebsd.org/cgi/man.cgi?query=adjtime&sektion=2&apropos=0
        def adjtime_syscall(delta,olddelta) = syscall_macro(140,delta,olddelta)
        # Macro to call the `setsid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=setsid&sektion=2&apropos=0
        def setsid_syscall = syscall_macro(147)
        # Macro to call the `quotactl` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] cmd
        # @param [Register, Integer] uid
        # @param [Register, Integer] arg
        # @see https://man.freebsd.org/cgi/man.cgi?query=quotactl&sektion=2&apropos=0
        def quotactl_syscall(path,cmd,uid,arg) = syscall_macro(148,path,cmd,uid,arg)
        # Macro to call the `nlm_syscall` syscall.
        # @param [Register, Integer] debug_level
        # @param [Register, Integer] grace_period
        # @param [Register, Integer] addr_count
        # @param [Register, Integer] addrs
        # @see https://man.freebsd.org/cgi/man.cgi?query=nlm_syscall&sektion=2&apropos=0
        def nlm_syscall_syscall(debug_level,grace_period,addr_count,addrs) = syscall_macro(154,debug_level,grace_period,addr_count,addrs)
        # Macro to call the `nfssvc` syscall.
        # @param [Register, Integer] flag
        # @param [Register, Integer] argp
        # @see https://man.freebsd.org/cgi/man.cgi?query=nfssvc&sektion=2&apropos=0
        def nfssvc_syscall(flag,argp) = syscall_macro(155,flag,argp)
        # Macro to call the `lgetfh` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] fhp
        # @see https://man.freebsd.org/cgi/man.cgi?query=lgetfh&sektion=2&apropos=0
        def lgetfh_syscall(fname,fhp) = syscall_macro(160,fname,fhp)
        # Macro to call the `getfh` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] fhp
        # @see https://man.freebsd.org/cgi/man.cgi?query=getfh&sektion=2&apropos=0
        def getfh_syscall(fname,fhp) = syscall_macro(161,fname,fhp)
        # Macro to call the `sysarch` syscall.
        # @param [Register, Integer] op
        # @param [Register, Integer] parms
        # @see https://man.freebsd.org/cgi/man.cgi?query=sysarch&sektion=2&apropos=0
        def sysarch_syscall(op,parms) = syscall_macro(165,op,parms)
        # Macro to call the `rtprio` syscall.
        # @param [Register, Integer] function
        # @param [Register, Integer] pid
        # @param [Register, Integer] rtp
        # @see https://man.freebsd.org/cgi/man.cgi?query=rtprio&sektion=2&apropos=0
        def rtprio_syscall(function,pid,rtp) = syscall_macro(166,function,pid,rtp)
        # Macro to call the `semsys` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] a2
        # @param [Register, Integer] a3
        # @param [Register, Integer] a4
        # @param [Register, Integer] a5
        # @see https://man.freebsd.org/cgi/man.cgi?query=semsys&sektion=2&apropos=0
        def semsys_syscall(which,a2,a3,a4,a5) = syscall_macro(169,which,a2,a3,a4,a5)
        # Macro to call the `msgsys` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] a2
        # @param [Register, Integer] a3
        # @param [Register, Integer] a4
        # @param [Register, Integer] a5
        # @param [Register, Integer] a6
        # @see https://man.freebsd.org/cgi/man.cgi?query=msgsys&sektion=2&apropos=0
        def msgsys_syscall(which,a2,a3,a4,a5,a6) = syscall_macro(170,which,a2,a3,a4,a5,a6)
        # Macro to call the `shmsys` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] a2
        # @param [Register, Integer] a3
        # @param [Register, Integer] a4
        # @see https://man.freebsd.org/cgi/man.cgi?query=shmsys&sektion=2&apropos=0
        def shmsys_syscall(which,a2,a3,a4) = syscall_macro(171,which,a2,a3,a4)
        # Macro to call the `setfib` syscall.
        # @param [Register, Integer] fibnum
        # @see https://man.freebsd.org/cgi/man.cgi?query=setfib&sektion=2&apropos=0
        def setfib_syscall(fibnum) = syscall_macro(175,fibnum)
        # Macro to call the `ntp_adjtime` syscall.
        # @param [Register, Integer] tp
        # @see https://man.freebsd.org/cgi/man.cgi?query=ntp_adjtime&sektion=2&apropos=0
        def ntp_adjtime_syscall(tp) = syscall_macro(176,tp)
        # Macro to call the `setgid` syscall.
        # @param [Register, Integer] gid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setgid&sektion=2&apropos=0
        def setgid_syscall(gid) = syscall_macro(181,gid)
        # Macro to call the `setegid` syscall.
        # @param [Register, Integer] egid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setegid&sektion=2&apropos=0
        def setegid_syscall(egid) = syscall_macro(182,egid)
        # Macro to call the `seteuid` syscall.
        # @param [Register, Integer] euid
        # @see https://man.freebsd.org/cgi/man.cgi?query=seteuid&sektion=2&apropos=0
        def seteuid_syscall(euid) = syscall_macro(183,euid)
        # Macro to call the `pathconf` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=pathconf&sektion=2&apropos=0
        def pathconf_syscall(path,name) = syscall_macro(191,path,name)
        # Macro to call the `fpathconf` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=fpathconf&sektion=2&apropos=0
        def fpathconf_syscall(fd,name) = syscall_macro(192,fd,name)
        # Macro to call the `getrlimit` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] rlp
        # @see https://man.freebsd.org/cgi/man.cgi?query=getrlimit&sektion=2&apropos=0
        def getrlimit_syscall(which,rlp) = syscall_macro(194,which,rlp)
        # Macro to call the `setrlimit` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] rlp
        # @see https://man.freebsd.org/cgi/man.cgi?query=setrlimit&sektion=2&apropos=0
        def setrlimit_syscall(which,rlp) = syscall_macro(195,which,rlp)
        # Macro to call the `__syscall` syscall.
        # @param [Register, Integer] number
        # @param [Register, Integer] args
        # @see https://man.freebsd.org/cgi/man.cgi?query=__syscall&sektion=2&apropos=0
        def __syscall_syscall(number,*args) = syscall_macro(198,number,*args)
        # Macro to call the `__sysctl` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @param [Register, Integer] old
        # @param [Register, Integer] oldlenp
        # @param [Register, Integer] new
        # @param [Register, Integer] newlen
        # @see https://man.freebsd.org/cgi/man.cgi?query=__sysctl&sektion=2&apropos=0
        def __sysctl_syscall(name,namelen,old,oldlenp,new,newlen) = syscall_macro(202,name,namelen,old,oldlenp,new,newlen)
        # Macro to call the `mlock` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.freebsd.org/cgi/man.cgi?query=mlock&sektion=2&apropos=0
        def mlock_syscall(addr,len) = syscall_macro(203,addr,len)
        # Macro to call the `munlock` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.freebsd.org/cgi/man.cgi?query=munlock&sektion=2&apropos=0
        def munlock_syscall(addr,len) = syscall_macro(204,addr,len)
        # Macro to call the `undelete` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=undelete&sektion=2&apropos=0
        def undelete_syscall(path) = syscall_macro(205,path)
        # Macro to call the `futimes` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] tptr
        # @see https://man.freebsd.org/cgi/man.cgi?query=futimes&sektion=2&apropos=0
        def futimes_syscall(fd,tptr) = syscall_macro(206,fd,tptr)
        # Macro to call the `getpgid` syscall.
        # @param [Register, Integer] pid
        # @see https://man.freebsd.org/cgi/man.cgi?query=getpgid&sektion=2&apropos=0
        def getpgid_syscall(pid) = syscall_macro(207,pid)
        # Macro to call the `poll` syscall.
        # @param [Register, Integer] fds
        # @param [Register, Integer] nfds
        # @param [Register, Integer] timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=poll&sektion=2&apropos=0
        def poll_syscall(fds,nfds,timeout) = syscall_macro(209,fds,nfds,timeout)
        # Macro to call the `semget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] nsems
        # @param [Register, Integer] semflg
        # @see https://man.freebsd.org/cgi/man.cgi?query=semget&sektion=2&apropos=0
        def semget_syscall(key,nsems,semflg) = syscall_macro(221,key,nsems,semflg)
        # Macro to call the `semop` syscall.
        # @param [Register, Integer] semid
        # @param [Register, Integer] sops
        # @param [Register, Integer] nsops
        # @see https://man.freebsd.org/cgi/man.cgi?query=semop&sektion=2&apropos=0
        def semop_syscall(semid,sops,nsops) = syscall_macro(222,semid,sops,nsops)
        # Macro to call the `msgget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] msgflg
        # @see https://man.freebsd.org/cgi/man.cgi?query=msgget&sektion=2&apropos=0
        def msgget_syscall(key,msgflg) = syscall_macro(225,key,msgflg)
        # Macro to call the `msgsnd` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgflg
        # @see https://man.freebsd.org/cgi/man.cgi?query=msgsnd&sektion=2&apropos=0
        def msgsnd_syscall(msqid,msgp,msgsz,msgflg) = syscall_macro(226,msqid,msgp,msgsz,msgflg)
        # Macro to call the `msgrcv` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] msgp
        # @param [Register, Integer] msgsz
        # @param [Register, Integer] msgtyp
        # @param [Register, Integer] msgflg
        # @see https://man.freebsd.org/cgi/man.cgi?query=msgrcv&sektion=2&apropos=0
        def msgrcv_syscall(msqid,msgp,msgsz,msgtyp,msgflg) = syscall_macro(227,msqid,msgp,msgsz,msgtyp,msgflg)
        # Macro to call the `shmat` syscall.
        # @param [Register, Integer] shmid
        # @param [Register, Integer] shmaddr
        # @param [Register, Integer] shmflg
        # @see https://man.freebsd.org/cgi/man.cgi?query=shmat&sektion=2&apropos=0
        def shmat_syscall(shmid,shmaddr,shmflg) = syscall_macro(228,shmid,shmaddr,shmflg)
        # Macro to call the `shmdt` syscall.
        # @param [Register, Integer] shmaddr
        # @see https://man.freebsd.org/cgi/man.cgi?query=shmdt&sektion=2&apropos=0
        def shmdt_syscall(shmaddr) = syscall_macro(230,shmaddr)
        # Macro to call the `shmget` syscall.
        # @param [Register, Integer] key
        # @param [Register, Integer] size
        # @param [Register, Integer] shmflg
        # @see https://man.freebsd.org/cgi/man.cgi?query=shmget&sektion=2&apropos=0
        def shmget_syscall(key,size,shmflg) = syscall_macro(231,key,size,shmflg)
        # Macro to call the `clock_gettime` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] tp
        # @see https://man.freebsd.org/cgi/man.cgi?query=clock_gettime&sektion=2&apropos=0
        def clock_gettime_syscall(clock_id,tp) = syscall_macro(232,clock_id,tp)
        # Macro to call the `clock_settime` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] tp
        # @see https://man.freebsd.org/cgi/man.cgi?query=clock_settime&sektion=2&apropos=0
        def clock_settime_syscall(clock_id,tp) = syscall_macro(233,clock_id,tp)
        # Macro to call the `clock_getres` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] tp
        # @see https://man.freebsd.org/cgi/man.cgi?query=clock_getres&sektion=2&apropos=0
        def clock_getres_syscall(clock_id,tp) = syscall_macro(234,clock_id,tp)
        # Macro to call the `ktimer_create` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] evp
        # @param [Register, Integer] timerid
        # @see https://man.freebsd.org/cgi/man.cgi?query=ktimer_create&sektion=2&apropos=0
        def ktimer_create_syscall(clock_id,evp,timerid) = syscall_macro(235,clock_id,evp,timerid)
        # Macro to call the `ktimer_delete` syscall.
        # @param [Register, Integer] timerid
        # @see https://man.freebsd.org/cgi/man.cgi?query=ktimer_delete&sektion=2&apropos=0
        def ktimer_delete_syscall(timerid) = syscall_macro(236,timerid)
        # Macro to call the `ktimer_settime` syscall.
        # @param [Register, Integer] timerid
        # @param [Register, Integer] flags
        # @param [Register, Integer] value
        # @param [Register, Integer] ovalue
        # @see https://man.freebsd.org/cgi/man.cgi?query=ktimer_settime&sektion=2&apropos=0
        def ktimer_settime_syscall(timerid,flags,value,ovalue) = syscall_macro(237,timerid,flags,value,ovalue)
        # Macro to call the `ktimer_gettime` syscall.
        # @param [Register, Integer] timerid
        # @param [Register, Integer] value
        # @see https://man.freebsd.org/cgi/man.cgi?query=ktimer_gettime&sektion=2&apropos=0
        def ktimer_gettime_syscall(timerid,value) = syscall_macro(238,timerid,value)
        # Macro to call the `ktimer_getoverrun` syscall.
        # @param [Register, Integer] timerid
        # @see https://man.freebsd.org/cgi/man.cgi?query=ktimer_getoverrun&sektion=2&apropos=0
        def ktimer_getoverrun_syscall(timerid) = syscall_macro(239,timerid)
        # Macro to call the `nanosleep` syscall.
        # @param [Register, Integer] rqtp
        # @param [Register, Integer] rmtp
        # @see https://man.freebsd.org/cgi/man.cgi?query=nanosleep&sektion=2&apropos=0
        def nanosleep_syscall(rqtp,rmtp) = syscall_macro(240,rqtp,rmtp)
        # Macro to call the `ffclock_getcounter` syscall.
        # @param [Register, Integer] ffcount
        # @see https://man.freebsd.org/cgi/man.cgi?query=ffclock_getcounter&sektion=2&apropos=0
        def ffclock_getcounter_syscall(ffcount) = syscall_macro(241,ffcount)
        # Macro to call the `ffclock_setestimate` syscall.
        # @param [Register, Integer] cest
        # @see https://man.freebsd.org/cgi/man.cgi?query=ffclock_setestimate&sektion=2&apropos=0
        def ffclock_setestimate_syscall(cest) = syscall_macro(242,cest)
        # Macro to call the `ffclock_getestimate` syscall.
        # @param [Register, Integer] cest
        # @see https://man.freebsd.org/cgi/man.cgi?query=ffclock_getestimate&sektion=2&apropos=0
        def ffclock_getestimate_syscall(cest) = syscall_macro(243,cest)
        # Macro to call the `clock_nanosleep` syscall.
        # @param [Register, Integer] clock_id
        # @param [Register, Integer] flags
        # @param [Register, Integer] rqtp
        # @param [Register, Integer] rmtp
        # @see https://man.freebsd.org/cgi/man.cgi?query=clock_nanosleep&sektion=2&apropos=0
        def clock_nanosleep_syscall(clock_id,flags,rqtp,rmtp) = syscall_macro(244,clock_id,flags,rqtp,rmtp)
        # Macro to call the `clock_getcpuclockid2` syscall.
        # @param [Register, Integer] id
        # @param [Register, Integer] which
        # @param [Register, Integer] clock_id
        # @see https://man.freebsd.org/cgi/man.cgi?query=clock_getcpuclockid2&sektion=2&apropos=0
        def clock_getcpuclockid2_syscall(id,which,clock_id) = syscall_macro(247,id,which,clock_id)
        # Macro to call the `ntp_gettime` syscall.
        # @param [Register, Integer] ntvp
        # @see https://man.freebsd.org/cgi/man.cgi?query=ntp_gettime&sektion=2&apropos=0
        def ntp_gettime_syscall(ntvp) = syscall_macro(248,ntvp)
        # Macro to call the `minherit` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] inherit
        # @see https://man.freebsd.org/cgi/man.cgi?query=minherit&sektion=2&apropos=0
        def minherit_syscall(addr,len,inherit) = syscall_macro(250,addr,len,inherit)
        # Macro to call the `rfork` syscall.
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=rfork&sektion=2&apropos=0
        def rfork_syscall(flags) = syscall_macro(251,flags)
        # Macro to call the `issetugid` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=issetugid&sektion=2&apropos=0
        def issetugid_syscall = syscall_macro(253)
        # Macro to call the `lchown` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @see https://man.freebsd.org/cgi/man.cgi?query=lchown&sektion=2&apropos=0
        def lchown_syscall(path,uid,gid) = syscall_macro(254,path,uid,gid)
        # Macro to call the `aio_read` syscall.
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_read&sektion=2&apropos=0
        def aio_read_syscall(aiocbp) = syscall_macro(255,aiocbp)
        # Macro to call the `aio_write` syscall.
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_write&sektion=2&apropos=0
        def aio_write_syscall(aiocbp) = syscall_macro(256,aiocbp)
        # Macro to call the `lio_listio` syscall.
        # @param [Register, Integer] mode
        # @param [Register, Integer] acb_list
        # @param [Register, Integer] nent
        # @param [Register, Integer] sig
        # @see https://man.freebsd.org/cgi/man.cgi?query=lio_listio&sektion=2&apropos=0
        def lio_listio_syscall(mode,acb_list,nent,sig) = syscall_macro(257,mode,acb_list,nent,sig)
        # Macro to call the `lchmod` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=lchmod&sektion=2&apropos=0
        def lchmod_syscall(path,mode) = syscall_macro(274,path,mode)
        # Macro to call the `lutimes` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] tptr
        # @see https://man.freebsd.org/cgi/man.cgi?query=lutimes&sektion=2&apropos=0
        def lutimes_syscall(path,tptr) = syscall_macro(276,path,tptr)
        # Macro to call the `preadv` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://man.freebsd.org/cgi/man.cgi?query=preadv&sektion=2&apropos=0
        def preadv_syscall(fd,iovp,iovcnt,offset) = syscall_macro(289,fd,iovp,iovcnt,offset)
        # Macro to call the `pwritev` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] offset
        # @see https://man.freebsd.org/cgi/man.cgi?query=pwritev&sektion=2&apropos=0
        def pwritev_syscall(fd,iovp,iovcnt,offset) = syscall_macro(290,fd,iovp,iovcnt,offset)
        # Macro to call the `fhopen` syscall.
        # @param [Register, Integer] u_fhp
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=fhopen&sektion=2&apropos=0
        def fhopen_syscall(u_fhp,flags) = syscall_macro(298,u_fhp,flags)
        # Macro to call the `modnext` syscall.
        # @param [Register, Integer] modid
        # @see https://man.freebsd.org/cgi/man.cgi?query=modnext&sektion=2&apropos=0
        def modnext_syscall(modid) = syscall_macro(300,modid)
        # Macro to call the `modstat` syscall.
        # @param [Register, Integer] modid
        # @param [Register, Integer] stat
        # @see https://man.freebsd.org/cgi/man.cgi?query=modstat&sektion=2&apropos=0
        def modstat_syscall(modid,stat) = syscall_macro(301,modid,stat)
        # Macro to call the `modfnext` syscall.
        # @param [Register, Integer] modid
        # @see https://man.freebsd.org/cgi/man.cgi?query=modfnext&sektion=2&apropos=0
        def modfnext_syscall(modid) = syscall_macro(302,modid)
        # Macro to call the `modfind` syscall.
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=modfind&sektion=2&apropos=0
        def modfind_syscall(name) = syscall_macro(303,name)
        # Macro to call the `kldload` syscall.
        # @param [Register, Integer] file
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldload&sektion=2&apropos=0
        def kldload_syscall(file) = syscall_macro(304,file)
        # Macro to call the `kldunload` syscall.
        # @param [Register, Integer] fileid
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldunload&sektion=2&apropos=0
        def kldunload_syscall(fileid) = syscall_macro(305,fileid)
        # Macro to call the `kldfind` syscall.
        # @param [Register, Integer] file
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldfind&sektion=2&apropos=0
        def kldfind_syscall(file) = syscall_macro(306,file)
        # Macro to call the `kldnext` syscall.
        # @param [Register, Integer] fileid
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldnext&sektion=2&apropos=0
        def kldnext_syscall(fileid) = syscall_macro(307,fileid)
        # Macro to call the `kldstat` syscall.
        # @param [Register, Integer] fileid
        # @param [Register, Integer] stat
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldstat&sektion=2&apropos=0
        def kldstat_syscall(fileid,stat) = syscall_macro(308,fileid,stat)
        # Macro to call the `kldfirstmod` syscall.
        # @param [Register, Integer] fileid
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldfirstmod&sektion=2&apropos=0
        def kldfirstmod_syscall(fileid) = syscall_macro(309,fileid)
        # Macro to call the `getsid` syscall.
        # @param [Register, Integer] pid
        # @see https://man.freebsd.org/cgi/man.cgi?query=getsid&sektion=2&apropos=0
        def getsid_syscall(pid) = syscall_macro(310,pid)
        # Macro to call the `setresuid` syscall.
        # @param [Register, Integer] ruid
        # @param [Register, Integer] euid
        # @param [Register, Integer] suid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setresuid&sektion=2&apropos=0
        def setresuid_syscall(ruid,euid,suid) = syscall_macro(311,ruid,euid,suid)
        # Macro to call the `setresgid` syscall.
        # @param [Register, Integer] rgid
        # @param [Register, Integer] egid
        # @param [Register, Integer] sgid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setresgid&sektion=2&apropos=0
        def setresgid_syscall(rgid,egid,sgid) = syscall_macro(312,rgid,egid,sgid)
        # Macro to call the `aio_return` syscall.
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_return&sektion=2&apropos=0
        def aio_return_syscall(aiocbp) = syscall_macro(314,aiocbp)
        # Macro to call the `aio_suspend` syscall.
        # @param [Register, Integer] aiocbp
        # @param [Register, Integer] nent
        # @param [Register, Integer] timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_suspend&sektion=2&apropos=0
        def aio_suspend_syscall(aiocbp,nent,timeout) = syscall_macro(315,aiocbp,nent,timeout)
        # Macro to call the `aio_cancel` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_cancel&sektion=2&apropos=0
        def aio_cancel_syscall(fd,aiocbp) = syscall_macro(316,fd,aiocbp)
        # Macro to call the `aio_error` syscall.
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_error&sektion=2&apropos=0
        def aio_error_syscall(aiocbp) = syscall_macro(317,aiocbp)
        # Macro to call the `yield` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=yield&sektion=2&apropos=0
        def yield_syscall = syscall_macro(321)
        # Macro to call the `mlockall` syscall.
        # @param [Register, Integer] how
        # @see https://man.freebsd.org/cgi/man.cgi?query=mlockall&sektion=2&apropos=0
        def mlockall_syscall(how) = syscall_macro(324,how)
        # Macro to call the `munlockall` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=munlockall&sektion=2&apropos=0
        def munlockall_syscall = syscall_macro(325)
        # Macro to call the `__getcwd` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] buflen
        # @see https://man.freebsd.org/cgi/man.cgi?query=__getcwd&sektion=2&apropos=0
        def __getcwd_syscall(buf,buflen) = syscall_macro(326,buf,buflen)
        # Macro to call the `sched_setparam` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] param
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_setparam&sektion=2&apropos=0
        def sched_setparam_syscall(pid,param) = syscall_macro(327,pid,param)
        # Macro to call the `sched_getparam` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] param
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_getparam&sektion=2&apropos=0
        def sched_getparam_syscall(pid,param) = syscall_macro(328,pid,param)
        # Macro to call the `sched_setscheduler` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] policy
        # @param [Register, Integer] param
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_setscheduler&sektion=2&apropos=0
        def sched_setscheduler_syscall(pid,policy,param) = syscall_macro(329,pid,policy,param)
        # Macro to call the `sched_getscheduler` syscall.
        # @param [Register, Integer] pid
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_getscheduler&sektion=2&apropos=0
        def sched_getscheduler_syscall(pid) = syscall_macro(330,pid)
        # Macro to call the `sched_yield` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_yield&sektion=2&apropos=0
        def sched_yield_syscall = syscall_macro(331)
        # Macro to call the `sched_get_priority_max` syscall.
        # @param [Register, Integer] policy
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_get_priority_max&sektion=2&apropos=0
        def sched_get_priority_max_syscall(policy) = syscall_macro(332,policy)
        # Macro to call the `sched_get_priority_min` syscall.
        # @param [Register, Integer] policy
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_get_priority_min&sektion=2&apropos=0
        def sched_get_priority_min_syscall(policy) = syscall_macro(333,policy)
        # Macro to call the `sched_rr_get_interval` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] interval
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_rr_get_interval&sektion=2&apropos=0
        def sched_rr_get_interval_syscall(pid,interval) = syscall_macro(334,pid,interval)
        # Macro to call the `utrace` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @see https://man.freebsd.org/cgi/man.cgi?query=utrace&sektion=2&apropos=0
        def utrace_syscall(addr,len) = syscall_macro(335,addr,len)
        # Macro to call the `kldsym` syscall.
        # @param [Register, Integer] fileid
        # @param [Register, Integer] cmd
        # @param [Register, Integer] data
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldsym&sektion=2&apropos=0
        def kldsym_syscall(fileid,cmd,data) = syscall_macro(337,fileid,cmd,data)
        # Macro to call the `jail` syscall.
        # @param [Register, Integer] jail
        # @see https://man.freebsd.org/cgi/man.cgi?query=jail&sektion=2&apropos=0
        def jail_syscall(jail) = syscall_macro(338,jail)
        # Macro to call the `nnpfs_syscall` syscall.
        # @param [Register, Integer] operation
        # @param [Register, Integer] a_pathP
        # @param [Register, Integer] a_opcode
        # @param [Register, Integer] a_paramsP
        # @param [Register, Integer] a_followSymlinks
        # @see https://man.freebsd.org/cgi/man.cgi?query=nnpfs_syscall&sektion=2&apropos=0
        def nnpfs_syscall_syscall(operation,a_pathP,a_opcode,a_paramsP,a_followSymlinks) = syscall_macro(339,operation,a_pathP,a_opcode,a_paramsP,a_followSymlinks)
        # Macro to call the `sigprocmask` syscall.
        # @param [Register, Integer] how
        # @param [Register, Integer] set
        # @param [Register, Integer] oset
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigprocmask&sektion=2&apropos=0
        def sigprocmask_syscall(how,set,oset) = syscall_macro(340,how,set,oset)
        # Macro to call the `sigsuspend` syscall.
        # @param [Register, Integer] sigmask
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigsuspend&sektion=2&apropos=0
        def sigsuspend_syscall(sigmask) = syscall_macro(341,sigmask)
        # Macro to call the `sigpending` syscall.
        # @param [Register, Integer] set
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigpending&sektion=2&apropos=0
        def sigpending_syscall(set) = syscall_macro(343,set)
        # Macro to call the `sigtimedwait` syscall.
        # @param [Register, Integer] set
        # @param [Register, Integer] info
        # @param [Register, Integer] timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigtimedwait&sektion=2&apropos=0
        def sigtimedwait_syscall(set,info,timeout) = syscall_macro(345,set,info,timeout)
        # Macro to call the `sigwaitinfo` syscall.
        # @param [Register, Integer] set
        # @param [Register, Integer] info
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigwaitinfo&sektion=2&apropos=0
        def sigwaitinfo_syscall(set,info) = syscall_macro(346,set,info)
        # Macro to call the `__acl_get_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_get_file&sektion=2&apropos=0
        def __acl_get_file_syscall(path,type,aclp) = syscall_macro(347,path,type,aclp)
        # Macro to call the `__acl_set_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_set_file&sektion=2&apropos=0
        def __acl_set_file_syscall(path,type,aclp) = syscall_macro(348,path,type,aclp)
        # Macro to call the `__acl_get_fd` syscall.
        # @param [Register, Integer] filedes
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_get_fd&sektion=2&apropos=0
        def __acl_get_fd_syscall(filedes,type,aclp) = syscall_macro(349,filedes,type,aclp)
        # Macro to call the `__acl_set_fd` syscall.
        # @param [Register, Integer] filedes
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_set_fd&sektion=2&apropos=0
        def __acl_set_fd_syscall(filedes,type,aclp) = syscall_macro(350,filedes,type,aclp)
        # Macro to call the `__acl_delete_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_delete_file&sektion=2&apropos=0
        def __acl_delete_file_syscall(path,type) = syscall_macro(351,path,type)
        # Macro to call the `__acl_delete_fd` syscall.
        # @param [Register, Integer] filedes
        # @param [Register, Integer] type
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_delete_fd&sektion=2&apropos=0
        def __acl_delete_fd_syscall(filedes,type) = syscall_macro(352,filedes,type)
        # Macro to call the `__acl_aclcheck_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_aclcheck_file&sektion=2&apropos=0
        def __acl_aclcheck_file_syscall(path,type,aclp) = syscall_macro(353,path,type,aclp)
        # Macro to call the `__acl_aclcheck_fd` syscall.
        # @param [Register, Integer] filedes
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_aclcheck_fd&sektion=2&apropos=0
        def __acl_aclcheck_fd_syscall(filedes,type,aclp) = syscall_macro(354,filedes,type,aclp)
        # Macro to call the `extattrctl` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] cmd
        # @param [Register, Integer] filename
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattrctl&sektion=2&apropos=0
        def extattrctl_syscall(path,cmd,filename,attrnamespace,attrname) = syscall_macro(355,path,cmd,filename,attrnamespace,attrname)
        # Macro to call the `extattr_set_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_set_file&sektion=2&apropos=0
        def extattr_set_file_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(356,path,attrnamespace,attrname,data,nbytes)
        # Macro to call the `extattr_get_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_get_file&sektion=2&apropos=0
        def extattr_get_file_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(357,path,attrnamespace,attrname,data,nbytes)
        # Macro to call the `extattr_delete_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_delete_file&sektion=2&apropos=0
        def extattr_delete_file_syscall(path,attrnamespace,attrname) = syscall_macro(358,path,attrnamespace,attrname)
        # Macro to call the `aio_waitcomplete` syscall.
        # @param [Register, Integer] aiocbp
        # @param [Register, Integer] timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_waitcomplete&sektion=2&apropos=0
        def aio_waitcomplete_syscall(aiocbp,timeout) = syscall_macro(359,aiocbp,timeout)
        # Macro to call the `getresuid` syscall.
        # @param [Register, Integer] ruid
        # @param [Register, Integer] euid
        # @param [Register, Integer] suid
        # @see https://man.freebsd.org/cgi/man.cgi?query=getresuid&sektion=2&apropos=0
        def getresuid_syscall(ruid,euid,suid) = syscall_macro(360,ruid,euid,suid)
        # Macro to call the `getresgid` syscall.
        # @param [Register, Integer] rgid
        # @param [Register, Integer] egid
        # @param [Register, Integer] sgid
        # @see https://man.freebsd.org/cgi/man.cgi?query=getresgid&sektion=2&apropos=0
        def getresgid_syscall(rgid,egid,sgid) = syscall_macro(361,rgid,egid,sgid)
        # Macro to call the `kqueue` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=kqueue&sektion=2&apropos=0
        def kqueue_syscall = syscall_macro(362)
        # Macro to call the `extattr_set_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_set_fd&sektion=2&apropos=0
        def extattr_set_fd_syscall(fd,attrnamespace,attrname,data,nbytes) = syscall_macro(371,fd,attrnamespace,attrname,data,nbytes)
        # Macro to call the `extattr_get_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_get_fd&sektion=2&apropos=0
        def extattr_get_fd_syscall(fd,attrnamespace,attrname,data,nbytes) = syscall_macro(372,fd,attrnamespace,attrname,data,nbytes)
        # Macro to call the `extattr_delete_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_delete_fd&sektion=2&apropos=0
        def extattr_delete_fd_syscall(fd,attrnamespace,attrname) = syscall_macro(373,fd,attrnamespace,attrname)
        # Macro to call the `__setugid` syscall.
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=__setugid&sektion=2&apropos=0
        def __setugid_syscall(flag) = syscall_macro(374,flag)
        # Macro to call the `eaccess` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] amode
        # @see https://man.freebsd.org/cgi/man.cgi?query=eaccess&sektion=2&apropos=0
        def eaccess_syscall(path,amode) = syscall_macro(376,path,amode)
        # Macro to call the `afs3_syscall` syscall.
        # @param [Register, Integer] syscall
        # @param [Register, Integer] parm1
        # @param [Register, Integer] parm2
        # @param [Register, Integer] parm3
        # @param [Register, Integer] parm4
        # @param [Register, Integer] parm5
        # @param [Register, Integer] parm6
        # @see https://man.freebsd.org/cgi/man.cgi?query=afs3_syscall&sektion=2&apropos=0
        def afs3_syscall_syscall(syscall,parm1,parm2,parm3,parm4,parm5,parm6) = syscall_macro(377,syscall,parm1,parm2,parm3,parm4,parm5,parm6)
        # Macro to call the `nmount` syscall.
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=nmount&sektion=2&apropos=0
        def nmount_syscall(iovp,iovcnt,flags) = syscall_macro(378,iovp,iovcnt,flags)
        # Macro to call the `__mac_get_proc` syscall.
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_get_proc&sektion=2&apropos=0
        def __mac_get_proc_syscall(mac_p) = syscall_macro(384,mac_p)
        # Macro to call the `__mac_set_proc` syscall.
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_set_proc&sektion=2&apropos=0
        def __mac_set_proc_syscall(mac_p) = syscall_macro(385,mac_p)
        # Macro to call the `__mac_get_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_get_fd&sektion=2&apropos=0
        def __mac_get_fd_syscall(fd,mac_p) = syscall_macro(386,fd,mac_p)
        # Macro to call the `__mac_get_file` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_get_file&sektion=2&apropos=0
        def __mac_get_file_syscall(path_p,mac_p) = syscall_macro(387,path_p,mac_p)
        # Macro to call the `__mac_set_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_set_fd&sektion=2&apropos=0
        def __mac_set_fd_syscall(fd,mac_p) = syscall_macro(388,fd,mac_p)
        # Macro to call the `__mac_set_file` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_set_file&sektion=2&apropos=0
        def __mac_set_file_syscall(path_p,mac_p) = syscall_macro(389,path_p,mac_p)
        # Macro to call the `kenv` syscall.
        # @param [Register, Integer] what
        # @param [Register, Integer] name
        # @param [Register, Integer] value
        # @param [Register, Integer] len
        # @see https://man.freebsd.org/cgi/man.cgi?query=kenv&sektion=2&apropos=0
        def kenv_syscall(what,name,value,len) = syscall_macro(390,what,name,value,len)
        # Macro to call the `lchflags` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=lchflags&sektion=2&apropos=0
        def lchflags_syscall(path,flags) = syscall_macro(391,path,flags)
        # Macro to call the `uuidgen` syscall.
        # @param [Register, Integer] store
        # @param [Register, Integer] count
        # @see https://man.freebsd.org/cgi/man.cgi?query=uuidgen&sektion=2&apropos=0
        def uuidgen_syscall(store,count) = syscall_macro(392,store,count)
        # Macro to call the `sendfile` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] s
        # @param [Register, Integer] offset
        # @param [Register, Integer] nbytes
        # @param [Register, Integer] hdtr
        # @param [Register, Integer] sbytes
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=sendfile&sektion=2&apropos=0
        def sendfile_syscall(fd,s,offset,nbytes,hdtr,sbytes,flags) = syscall_macro(393,fd,s,offset,nbytes,hdtr,sbytes,flags)
        # Macro to call the `mac_syscall` syscall.
        # @param [Register, Integer] policy
        # @param [Register, Integer] call
        # @param [Register, Integer] arg
        # @see https://man.freebsd.org/cgi/man.cgi?query=mac_syscall&sektion=2&apropos=0
        def mac_syscall_syscall(policy,call,arg) = syscall_macro(394,policy,call,arg)
        # Macro to call the `ksem_close` syscall.
        # @param [Register, Integer] id
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_close&sektion=2&apropos=0
        def ksem_close_syscall(id) = syscall_macro(400,id)
        # Macro to call the `ksem_post` syscall.
        # @param [Register, Integer] id
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_post&sektion=2&apropos=0
        def ksem_post_syscall(id) = syscall_macro(401,id)
        # Macro to call the `ksem_wait` syscall.
        # @param [Register, Integer] id
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_wait&sektion=2&apropos=0
        def ksem_wait_syscall(id) = syscall_macro(402,id)
        # Macro to call the `ksem_trywait` syscall.
        # @param [Register, Integer] id
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_trywait&sektion=2&apropos=0
        def ksem_trywait_syscall(id) = syscall_macro(403,id)
        # Macro to call the `ksem_init` syscall.
        # @param [Register, Integer] idp
        # @param [Register, Integer] value
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_init&sektion=2&apropos=0
        def ksem_init_syscall(idp,value) = syscall_macro(404,idp,value)
        # Macro to call the `ksem_open` syscall.
        # @param [Register, Integer] idp
        # @param [Register, Integer] name
        # @param [Register, Integer] oflag
        # @param [Register, Integer] mode
        # @param [Register, Integer] value
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_open&sektion=2&apropos=0
        def ksem_open_syscall(idp,name,oflag,mode,value) = syscall_macro(405,idp,name,oflag,mode,value)
        # Macro to call the `ksem_unlink` syscall.
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_unlink&sektion=2&apropos=0
        def ksem_unlink_syscall(name) = syscall_macro(406,name)
        # Macro to call the `ksem_getvalue` syscall.
        # @param [Register, Integer] id
        # @param [Register, Integer] val
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_getvalue&sektion=2&apropos=0
        def ksem_getvalue_syscall(id,val) = syscall_macro(407,id,val)
        # Macro to call the `ksem_destroy` syscall.
        # @param [Register, Integer] id
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_destroy&sektion=2&apropos=0
        def ksem_destroy_syscall(id) = syscall_macro(408,id)
        # Macro to call the `__mac_get_pid` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_get_pid&sektion=2&apropos=0
        def __mac_get_pid_syscall(pid,mac_p) = syscall_macro(409,pid,mac_p)
        # Macro to call the `__mac_get_link` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_get_link&sektion=2&apropos=0
        def __mac_get_link_syscall(path_p,mac_p) = syscall_macro(410,path_p,mac_p)
        # Macro to call the `__mac_set_link` syscall.
        # @param [Register, Integer] path_p
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_set_link&sektion=2&apropos=0
        def __mac_set_link_syscall(path_p,mac_p) = syscall_macro(411,path_p,mac_p)
        # Macro to call the `extattr_set_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_set_link&sektion=2&apropos=0
        def extattr_set_link_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(412,path,attrnamespace,attrname,data,nbytes)
        # Macro to call the `extattr_get_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_get_link&sektion=2&apropos=0
        def extattr_get_link_syscall(path,attrnamespace,attrname,data,nbytes) = syscall_macro(413,path,attrnamespace,attrname,data,nbytes)
        # Macro to call the `extattr_delete_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] attrname
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_delete_link&sektion=2&apropos=0
        def extattr_delete_link_syscall(path,attrnamespace,attrname) = syscall_macro(414,path,attrnamespace,attrname)
        # Macro to call the `__mac_execve` syscall.
        # @param [Register, Integer] fname
        # @param [Register, Integer] argv
        # @param [Register, Integer] envv
        # @param [Register, Integer] mac_p
        # @see https://man.freebsd.org/cgi/man.cgi?query=__mac_execve&sektion=2&apropos=0
        def __mac_execve_syscall(fname,argv,envv,mac_p) = syscall_macro(415,fname,argv,envv,mac_p)
        # Macro to call the `sigaction` syscall.
        # @param [Register, Integer] sig
        # @param [Register, Integer] act
        # @param [Register, Integer] oact
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigaction&sektion=2&apropos=0
        def sigaction_syscall(sig,act,oact) = syscall_macro(416,sig,act,oact)
        # Macro to call the `sigreturn` syscall.
        # @param [Register, Integer] sigcntxp
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigreturn&sektion=2&apropos=0
        def sigreturn_syscall(sigcntxp) = syscall_macro(417,sigcntxp)
        # Macro to call the `getcontext` syscall.
        # @param [Register, Integer] ucp
        # @see https://man.freebsd.org/cgi/man.cgi?query=getcontext&sektion=2&apropos=0
        def getcontext_syscall(ucp) = syscall_macro(421,ucp)
        # Macro to call the `setcontext` syscall.
        # @param [Register, Integer] ucp
        # @see https://man.freebsd.org/cgi/man.cgi?query=setcontext&sektion=2&apropos=0
        def setcontext_syscall(ucp) = syscall_macro(422,ucp)
        # Macro to call the `swapcontext` syscall.
        # @param [Register, Integer] oucp
        # @param [Register, Integer] ucp
        # @see https://man.freebsd.org/cgi/man.cgi?query=swapcontext&sektion=2&apropos=0
        def swapcontext_syscall(oucp,ucp) = syscall_macro(423,oucp,ucp)
        # Macro to call the `__acl_get_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_get_link&sektion=2&apropos=0
        def __acl_get_link_syscall(path,type,aclp) = syscall_macro(425,path,type,aclp)
        # Macro to call the `__acl_set_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_set_link&sektion=2&apropos=0
        def __acl_set_link_syscall(path,type,aclp) = syscall_macro(426,path,type,aclp)
        # Macro to call the `__acl_delete_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_delete_link&sektion=2&apropos=0
        def __acl_delete_link_syscall(path,type) = syscall_macro(427,path,type)
        # Macro to call the `__acl_aclcheck_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] type
        # @param [Register, Integer] aclp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__acl_aclcheck_link&sektion=2&apropos=0
        def __acl_aclcheck_link_syscall(path,type,aclp) = syscall_macro(428,path,type,aclp)
        # Macro to call the `sigwait` syscall.
        # @param [Register, Integer] set
        # @param [Register, Integer] sig
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigwait&sektion=2&apropos=0
        def sigwait_syscall(set,sig) = syscall_macro(429,set,sig)
        # Macro to call the `thr_create` syscall.
        # @param [Register, Integer] ctx
        # @param [Register, Integer] id
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_create&sektion=2&apropos=0
        def thr_create_syscall(ctx,id,flags) = syscall_macro(430,ctx,id,flags)
        # Macro to call the `thr_exit` syscall.
        # @param [Register, Integer] state
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_exit&sektion=2&apropos=0
        def thr_exit_syscall(state) = syscall_macro(431,state)
        # Macro to call the `thr_self` syscall.
        # @param [Register, Integer] id
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_self&sektion=2&apropos=0
        def thr_self_syscall(id) = syscall_macro(432,id)
        # Macro to call the `thr_kill` syscall.
        # @param [Register, Integer] id
        # @param [Register, Integer] sig
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_kill&sektion=2&apropos=0
        def thr_kill_syscall(id,sig) = syscall_macro(433,id,sig)
        # Macro to call the `jail_attach` syscall.
        # @param [Register, Integer] jid
        # @see https://man.freebsd.org/cgi/man.cgi?query=jail_attach&sektion=2&apropos=0
        def jail_attach_syscall(jid) = syscall_macro(436,jid)
        # Macro to call the `extattr_list_fd` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_list_fd&sektion=2&apropos=0
        def extattr_list_fd_syscall(fd,attrnamespace,data,nbytes) = syscall_macro(437,fd,attrnamespace,data,nbytes)
        # Macro to call the `extattr_list_file` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_list_file&sektion=2&apropos=0
        def extattr_list_file_syscall(path,attrnamespace,data,nbytes) = syscall_macro(438,path,attrnamespace,data,nbytes)
        # Macro to call the `extattr_list_link` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] attrnamespace
        # @param [Register, Integer] data
        # @param [Register, Integer] nbytes
        # @see https://man.freebsd.org/cgi/man.cgi?query=extattr_list_link&sektion=2&apropos=0
        def extattr_list_link_syscall(path,attrnamespace,data,nbytes) = syscall_macro(439,path,attrnamespace,data,nbytes)
        # Macro to call the `ksem_timedwait` syscall.
        # @param [Register, Integer] id
        # @param [Register, Integer] abstime
        # @see https://man.freebsd.org/cgi/man.cgi?query=ksem_timedwait&sektion=2&apropos=0
        def ksem_timedwait_syscall(id,abstime) = syscall_macro(441,id,abstime)
        # Macro to call the `thr_suspend` syscall.
        # @param [Register, Integer] timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_suspend&sektion=2&apropos=0
        def thr_suspend_syscall(timeout) = syscall_macro(442,timeout)
        # Macro to call the `thr_wake` syscall.
        # @param [Register, Integer] id
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_wake&sektion=2&apropos=0
        def thr_wake_syscall(id) = syscall_macro(443,id)
        # Macro to call the `kldunloadf` syscall.
        # @param [Register, Integer] fileid
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=kldunloadf&sektion=2&apropos=0
        def kldunloadf_syscall(fileid,flags) = syscall_macro(444,fileid,flags)
        # Macro to call the `audit` syscall.
        # @param [Register, Integer] record
        # @param [Register, Integer] length
        # @see https://man.freebsd.org/cgi/man.cgi?query=audit&sektion=2&apropos=0
        def audit_syscall(record,length) = syscall_macro(445,record,length)
        # Macro to call the `auditon` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] data
        # @param [Register, Integer] length
        # @see https://man.freebsd.org/cgi/man.cgi?query=auditon&sektion=2&apropos=0
        def auditon_syscall(cmd,data,length) = syscall_macro(446,cmd,data,length)
        # Macro to call the `getauid` syscall.
        # @param [Register, Integer] auid
        # @see https://man.freebsd.org/cgi/man.cgi?query=getauid&sektion=2&apropos=0
        def getauid_syscall(auid) = syscall_macro(447,auid)
        # Macro to call the `setauid` syscall.
        # @param [Register, Integer] auid
        # @see https://man.freebsd.org/cgi/man.cgi?query=setauid&sektion=2&apropos=0
        def setauid_syscall(auid) = syscall_macro(448,auid)
        # Macro to call the `getaudit` syscall.
        # @param [Register, Integer] auditinfo
        # @see https://man.freebsd.org/cgi/man.cgi?query=getaudit&sektion=2&apropos=0
        def getaudit_syscall(auditinfo) = syscall_macro(449,auditinfo)
        # Macro to call the `setaudit` syscall.
        # @param [Register, Integer] auditinfo
        # @see https://man.freebsd.org/cgi/man.cgi?query=setaudit&sektion=2&apropos=0
        def setaudit_syscall(auditinfo) = syscall_macro(450,auditinfo)
        # Macro to call the `getaudit_addr` syscall.
        # @param [Register, Integer] auditinfo_addr
        # @param [Register, Integer] length
        # @see https://man.freebsd.org/cgi/man.cgi?query=getaudit_addr&sektion=2&apropos=0
        def getaudit_addr_syscall(auditinfo_addr,length) = syscall_macro(451,auditinfo_addr,length)
        # Macro to call the `setaudit_addr` syscall.
        # @param [Register, Integer] auditinfo_addr
        # @param [Register, Integer] length
        # @see https://man.freebsd.org/cgi/man.cgi?query=setaudit_addr&sektion=2&apropos=0
        def setaudit_addr_syscall(auditinfo_addr,length) = syscall_macro(452,auditinfo_addr,length)
        # Macro to call the `auditctl` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=auditctl&sektion=2&apropos=0
        def auditctl_syscall(path) = syscall_macro(453,path)
        # Macro to call the `_umtx_op` syscall.
        # @param [Register, Integer] obj
        # @param [Register, Integer] op
        # @param [Register, Integer] val
        # @param [Register, Integer] uaddr1
        # @param [Register, Integer] uaddr2
        # @see https://man.freebsd.org/cgi/man.cgi?query=_umtx_op&sektion=2&apropos=0
        def _umtx_op_syscall(obj,op,val,uaddr1,uaddr2) = syscall_macro(454,obj,op,val,uaddr1,uaddr2)
        # Macro to call the `thr_new` syscall.
        # @param [Register, Integer] param
        # @param [Register, Integer] param_size
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_new&sektion=2&apropos=0
        def thr_new_syscall(param,param_size) = syscall_macro(455,param,param_size)
        # Macro to call the `sigqueue` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] signum
        # @param [Register, Integer] value
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigqueue&sektion=2&apropos=0
        def sigqueue_syscall(pid,signum,value) = syscall_macro(456,pid,signum,value)
        # Macro to call the `kmq_open` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @param [Register, Integer] attr
        # @see https://man.freebsd.org/cgi/man.cgi?query=kmq_open&sektion=2&apropos=0
        def kmq_open_syscall(path,flags,mode,attr) = syscall_macro(457,path,flags,mode,attr)
        # Macro to call the `kmq_setattr` syscall.
        # @param [Register, Integer] mqd
        # @param [Register, Integer] attr
        # @param [Register, Integer] oattr
        # @see https://man.freebsd.org/cgi/man.cgi?query=kmq_setattr&sektion=2&apropos=0
        def kmq_setattr_syscall(mqd,attr,oattr) = syscall_macro(458,mqd,attr,oattr)
        # Macro to call the `kmq_timedreceive` syscall.
        # @param [Register, Integer] mqd
        # @param [Register, Integer] msg_ptr
        # @param [Register, Integer] msg_len
        # @param [Register, Integer] msg_prio
        # @param [Register, Integer] abs_timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=kmq_timedreceive&sektion=2&apropos=0
        def kmq_timedreceive_syscall(mqd,msg_ptr,msg_len,msg_prio,abs_timeout) = syscall_macro(459,mqd,msg_ptr,msg_len,msg_prio,abs_timeout)
        # Macro to call the `kmq_timedsend` syscall.
        # @param [Register, Integer] mqd
        # @param [Register, Integer] msg_ptr
        # @param [Register, Integer] msg_len
        # @param [Register, Integer] msg_prio
        # @param [Register, Integer] abs_timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=kmq_timedsend&sektion=2&apropos=0
        def kmq_timedsend_syscall(mqd,msg_ptr,msg_len,msg_prio,abs_timeout) = syscall_macro(460,mqd,msg_ptr,msg_len,msg_prio,abs_timeout)
        # Macro to call the `kmq_notify` syscall.
        # @param [Register, Integer] mqd
        # @param [Register, Integer] sigev
        # @see https://man.freebsd.org/cgi/man.cgi?query=kmq_notify&sektion=2&apropos=0
        def kmq_notify_syscall(mqd,sigev) = syscall_macro(461,mqd,sigev)
        # Macro to call the `kmq_unlink` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=kmq_unlink&sektion=2&apropos=0
        def kmq_unlink_syscall(path) = syscall_macro(462,path)
        # Macro to call the `abort2` syscall.
        # @param [Register, Integer] why
        # @param [Register, Integer] nargs
        # @param [Register, Integer] args
        # @see https://man.freebsd.org/cgi/man.cgi?query=abort2&sektion=2&apropos=0
        def abort2_syscall(why,nargs,args) = syscall_macro(463,why,nargs,args)
        # Macro to call the `thr_set_name` syscall.
        # @param [Register, Integer] id
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_set_name&sektion=2&apropos=0
        def thr_set_name_syscall(id,name) = syscall_macro(464,id,name)
        # Macro to call the `aio_fsync` syscall.
        # @param [Register, Integer] op
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_fsync&sektion=2&apropos=0
        def aio_fsync_syscall(op,aiocbp) = syscall_macro(465,op,aiocbp)
        # Macro to call the `rtprio_thread` syscall.
        # @param [Register, Integer] function
        # @param [Register, Integer] lwpid
        # @param [Register, Integer] rtp
        # @see https://man.freebsd.org/cgi/man.cgi?query=rtprio_thread&sektion=2&apropos=0
        def rtprio_thread_syscall(function,lwpid,rtp) = syscall_macro(466,function,lwpid,rtp)
        # Macro to call the `sctp_peeloff` syscall.
        # @param [Register, Integer] sd
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=sctp_peeloff&sektion=2&apropos=0
        def sctp_peeloff_syscall(sd,name) = syscall_macro(471,sd,name)
        # Macro to call the `sctp_generic_sendmsg` syscall.
        # @param [Register, Integer] sd
        # @param [Register, Integer] msg
        # @param [Register, Integer] mlen
        # @param [Register, Integer] to
        # @param [Register, Integer] tolen
        # @param [Register, Integer] sinfo
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=sctp_generic_sendmsg&sektion=2&apropos=0
        def sctp_generic_sendmsg_syscall(sd,msg,mlen,to,tolen,sinfo,flags) = syscall_macro(472,sd,msg,mlen,to,tolen,sinfo,flags)
        # Macro to call the `sctp_generic_sendmsg_iov` syscall.
        # @param [Register, Integer] sd
        # @param [Register, Integer] iov
        # @param [Register, Integer] iovlen
        # @param [Register, Integer] to
        # @param [Register, Integer] tolen
        # @param [Register, Integer] sinfo
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=sctp_generic_sendmsg_iov&sektion=2&apropos=0
        def sctp_generic_sendmsg_iov_syscall(sd,iov,iovlen,to,tolen,sinfo,flags) = syscall_macro(473,sd,iov,iovlen,to,tolen,sinfo,flags)
        # Macro to call the `sctp_generic_recvmsg` syscall.
        # @param [Register, Integer] sd
        # @param [Register, Integer] iov
        # @param [Register, Integer] iovlen
        # @param [Register, Integer] from
        # @param [Register, Integer] fromlenaddr
        # @param [Register, Integer] sinfo
        # @param [Register, Integer] msg_flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=sctp_generic_recvmsg&sektion=2&apropos=0
        def sctp_generic_recvmsg_syscall(sd,iov,iovlen,from,fromlenaddr,sinfo,msg_flags) = syscall_macro(474,sd,iov,iovlen,from,fromlenaddr,sinfo,msg_flags)
        # Macro to call the `pread` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://man.freebsd.org/cgi/man.cgi?query=pread&sektion=2&apropos=0
        def pread_syscall(fd,buf,nbyte,offset) = syscall_macro(475,fd,buf,nbyte,offset)
        # Macro to call the `pwrite` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] nbyte
        # @param [Register, Integer] offset
        # @see https://man.freebsd.org/cgi/man.cgi?query=pwrite&sektion=2&apropos=0
        def pwrite_syscall(fd,buf,nbyte,offset) = syscall_macro(476,fd,buf,nbyte,offset)
        # Macro to call the `mmap` syscall.
        # @param [Register, Integer] addr
        # @param [Register, Integer] len
        # @param [Register, Integer] prot
        # @param [Register, Integer] flags
        # @param [Register, Integer] fd
        # @param [Register, Integer] pos
        # @see https://man.freebsd.org/cgi/man.cgi?query=mmap&sektion=2&apropos=0
        def mmap_syscall(addr,len,prot,flags,fd,pos) = syscall_macro(477,addr,len,prot,flags,fd,pos)
        # Macro to call the `lseek` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] offset
        # @param [Register, Integer] whence
        # @see https://man.freebsd.org/cgi/man.cgi?query=lseek&sektion=2&apropos=0
        def lseek_syscall(fd,offset,whence) = syscall_macro(478,fd,offset,whence)
        # Macro to call the `truncate` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] length
        # @see https://man.freebsd.org/cgi/man.cgi?query=truncate&sektion=2&apropos=0
        def truncate_syscall(path,length) = syscall_macro(479,path,length)
        # Macro to call the `ftruncate` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] length
        # @see https://man.freebsd.org/cgi/man.cgi?query=ftruncate&sektion=2&apropos=0
        def ftruncate_syscall(fd,length) = syscall_macro(480,fd,length)
        # Macro to call the `thr_kill2` syscall.
        # @param [Register, Integer] pid
        # @param [Register, Integer] id
        # @param [Register, Integer] sig
        # @see https://man.freebsd.org/cgi/man.cgi?query=thr_kill2&sektion=2&apropos=0
        def thr_kill2_syscall(pid,id,sig) = syscall_macro(481,pid,id,sig)
        # Macro to call the `shm_unlink` syscall.
        # @param [Register, Integer] path
        # @see https://man.freebsd.org/cgi/man.cgi?query=shm_unlink&sektion=2&apropos=0
        def shm_unlink_syscall(path) = syscall_macro(483,path)
        # Macro to call the `cpuset` syscall.
        # @param [Register, Integer] setid
        # @see https://man.freebsd.org/cgi/man.cgi?query=cpuset&sektion=2&apropos=0
        def cpuset_syscall(setid) = syscall_macro(484,setid)
        # Macro to call the `cpuset_setid` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] id
        # @param [Register, Integer] setid
        # @see https://man.freebsd.org/cgi/man.cgi?query=cpuset_setid&sektion=2&apropos=0
        def cpuset_setid_syscall(which,id,setid) = syscall_macro(485,which,id,setid)
        # Macro to call the `cpuset_getid` syscall.
        # @param [Register, Integer] level
        # @param [Register, Integer] which
        # @param [Register, Integer] id
        # @param [Register, Integer] setid
        # @see https://man.freebsd.org/cgi/man.cgi?query=cpuset_getid&sektion=2&apropos=0
        def cpuset_getid_syscall(level,which,id,setid) = syscall_macro(486,level,which,id,setid)
        # Macro to call the `cpuset_getaffinity` syscall.
        # @param [Register, Integer] level
        # @param [Register, Integer] which
        # @param [Register, Integer] id
        # @param [Register, Integer] cpusetsize
        # @param [Register, Integer] mask
        # @see https://man.freebsd.org/cgi/man.cgi?query=cpuset_getaffinity&sektion=2&apropos=0
        def cpuset_getaffinity_syscall(level,which,id,cpusetsize,mask) = syscall_macro(487,level,which,id,cpusetsize,mask)
        # Macro to call the `cpuset_setaffinity` syscall.
        # @param [Register, Integer] level
        # @param [Register, Integer] which
        # @param [Register, Integer] id
        # @param [Register, Integer] cpusetsize
        # @param [Register, Integer] mask
        # @see https://man.freebsd.org/cgi/man.cgi?query=cpuset_setaffinity&sektion=2&apropos=0
        def cpuset_setaffinity_syscall(level,which,id,cpusetsize,mask) = syscall_macro(488,level,which,id,cpusetsize,mask)
        # Macro to call the `faccessat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] amode
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=faccessat&sektion=2&apropos=0
        def faccessat_syscall(fd,path,amode,flag) = syscall_macro(489,fd,path,amode,flag)
        # Macro to call the `fchmodat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=fchmodat&sektion=2&apropos=0
        def fchmodat_syscall(fd,path,mode,flag) = syscall_macro(490,fd,path,mode,flag)
        # Macro to call the `fchownat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] uid
        # @param [Register, Integer] gid
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=fchownat&sektion=2&apropos=0
        def fchownat_syscall(fd,path,uid,gid,flag) = syscall_macro(491,fd,path,uid,gid,flag)
        # Macro to call the `fexecve` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] argv
        # @param [Register, Integer] envv
        # @see https://man.freebsd.org/cgi/man.cgi?query=fexecve&sektion=2&apropos=0
        def fexecve_syscall(fd,argv,envv) = syscall_macro(492,fd,argv,envv)
        # Macro to call the `futimesat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] times
        # @see https://man.freebsd.org/cgi/man.cgi?query=futimesat&sektion=2&apropos=0
        def futimesat_syscall(fd,path,times) = syscall_macro(494,fd,path,times)
        # Macro to call the `linkat` syscall.
        # @param [Register, Integer] fd1
        # @param [Register, Integer] path1
        # @param [Register, Integer] fd2
        # @param [Register, Integer] path2
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=linkat&sektion=2&apropos=0
        def linkat_syscall(fd1,path1,fd2,path2,flag) = syscall_macro(495,fd1,path1,fd2,path2,flag)
        # Macro to call the `mkdirat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=mkdirat&sektion=2&apropos=0
        def mkdirat_syscall(fd,path,mode) = syscall_macro(496,fd,path,mode)
        # Macro to call the `mkfifoat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=mkfifoat&sektion=2&apropos=0
        def mkfifoat_syscall(fd,path,mode) = syscall_macro(497,fd,path,mode)
        # Macro to call the `openat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flag
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=openat&sektion=2&apropos=0
        def openat_syscall(fd,path,flag,mode) = syscall_macro(499,fd,path,flag,mode)
        # Macro to call the `readlinkat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @see https://man.freebsd.org/cgi/man.cgi?query=readlinkat&sektion=2&apropos=0
        def readlinkat_syscall(fd,path,buf,bufsize) = syscall_macro(500,fd,path,buf,bufsize)
        # Macro to call the `renameat` syscall.
        # @param [Register, Integer] oldfd
        # @param [Register, Integer] old
        # @param [Register, Integer] newfd
        # @param [Register, Integer] new
        # @see https://man.freebsd.org/cgi/man.cgi?query=renameat&sektion=2&apropos=0
        def renameat_syscall(oldfd,old,newfd,new) = syscall_macro(501,oldfd,old,newfd,new)
        # Macro to call the `symlinkat` syscall.
        # @param [Register, Integer] path1
        # @param [Register, Integer] fd
        # @param [Register, Integer] path2
        # @see https://man.freebsd.org/cgi/man.cgi?query=symlinkat&sektion=2&apropos=0
        def symlinkat_syscall(path1,fd,path2) = syscall_macro(502,path1,fd,path2)
        # Macro to call the `unlinkat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=unlinkat&sektion=2&apropos=0
        def unlinkat_syscall(fd,path,flag) = syscall_macro(503,fd,path,flag)
        # Macro to call the `posix_openpt` syscall.
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=posix_openpt&sektion=2&apropos=0
        def posix_openpt_syscall(flags) = syscall_macro(504,flags)
        # Macro to call the `jail_get` syscall.
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=jail_get&sektion=2&apropos=0
        def jail_get_syscall(iovp,iovcnt,flags) = syscall_macro(506,iovp,iovcnt,flags)
        # Macro to call the `jail_set` syscall.
        # @param [Register, Integer] iovp
        # @param [Register, Integer] iovcnt
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=jail_set&sektion=2&apropos=0
        def jail_set_syscall(iovp,iovcnt,flags) = syscall_macro(507,iovp,iovcnt,flags)
        # Macro to call the `jail_remove` syscall.
        # @param [Register, Integer] jid
        # @see https://man.freebsd.org/cgi/man.cgi?query=jail_remove&sektion=2&apropos=0
        def jail_remove_syscall(jid) = syscall_macro(508,jid)
        # Macro to call the `__semctl` syscall.
        # @param [Register, Integer] semid
        # @param [Register, Integer] semnum
        # @param [Register, Integer] cmd
        # @param [Register, Integer] arg
        # @see https://man.freebsd.org/cgi/man.cgi?query=__semctl&sektion=2&apropos=0
        def __semctl_syscall(semid,semnum,cmd,arg) = syscall_macro(510,semid,semnum,cmd,arg)
        # Macro to call the `msgctl` syscall.
        # @param [Register, Integer] msqid
        # @param [Register, Integer] cmd
        # @param [Register, Integer] buf
        # @see https://man.freebsd.org/cgi/man.cgi?query=msgctl&sektion=2&apropos=0
        def msgctl_syscall(msqid,cmd,buf) = syscall_macro(511,msqid,cmd,buf)
        # Macro to call the `shmctl` syscall.
        # @param [Register, Integer] shmid
        # @param [Register, Integer] cmd
        # @param [Register, Integer] buf
        # @see https://man.freebsd.org/cgi/man.cgi?query=shmctl&sektion=2&apropos=0
        def shmctl_syscall(shmid,cmd,buf) = syscall_macro(512,shmid,cmd,buf)
        # Macro to call the `lpathconf` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=lpathconf&sektion=2&apropos=0
        def lpathconf_syscall(path,name) = syscall_macro(513,path,name)
        # Macro to call the `__cap_rights_get` syscall.
        # @param [Register, Integer] version
        # @param [Register, Integer] fd
        # @param [Register, Integer] rightsp
        # @see https://man.freebsd.org/cgi/man.cgi?query=__cap_rights_get&sektion=2&apropos=0
        def __cap_rights_get_syscall(version,fd,rightsp) = syscall_macro(515,version,fd,rightsp)
        # Macro to call the `cap_enter` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=cap_enter&sektion=2&apropos=0
        def cap_enter_syscall = syscall_macro(516)
        # Macro to call the `cap_getmode` syscall.
        # @param [Register, Integer] modep
        # @see https://man.freebsd.org/cgi/man.cgi?query=cap_getmode&sektion=2&apropos=0
        def cap_getmode_syscall(modep) = syscall_macro(517,modep)
        # Macro to call the `pdfork` syscall.
        # @param [Register, Integer] fdp
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=pdfork&sektion=2&apropos=0
        def pdfork_syscall(fdp,flags) = syscall_macro(518,fdp,flags)
        # Macro to call the `pdkill` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] signum
        # @see https://man.freebsd.org/cgi/man.cgi?query=pdkill&sektion=2&apropos=0
        def pdkill_syscall(fd,signum) = syscall_macro(519,fd,signum)
        # Macro to call the `pdgetpid` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] pidp
        # @see https://man.freebsd.org/cgi/man.cgi?query=pdgetpid&sektion=2&apropos=0
        def pdgetpid_syscall(fd,pidp) = syscall_macro(520,fd,pidp)
        # Macro to call the `pselect` syscall.
        # @param [Register, Integer] nd
        # @param [Register, Integer] in_
        # @param [Register, Integer] ou
        # @param [Register, Integer] ex
        # @param [Register, Integer] ts
        # @param [Register, Integer] sm
        # @see https://man.freebsd.org/cgi/man.cgi?query=pselect&sektion=2&apropos=0
        def pselect_syscall(nd,in_,ou,ex,ts,sm) = syscall_macro(522,nd,in_,ou,ex,ts,sm)
        # Macro to call the `getloginclass` syscall.
        # @param [Register, Integer] namebuf
        # @param [Register, Integer] namelen
        # @see https://man.freebsd.org/cgi/man.cgi?query=getloginclass&sektion=2&apropos=0
        def getloginclass_syscall(namebuf,namelen) = syscall_macro(523,namebuf,namelen)
        # Macro to call the `setloginclass` syscall.
        # @param [Register, Integer] namebuf
        # @see https://man.freebsd.org/cgi/man.cgi?query=setloginclass&sektion=2&apropos=0
        def setloginclass_syscall(namebuf) = syscall_macro(524,namebuf)
        # Macro to call the `rctl_get_racct` syscall.
        # @param [Register, Integer] inbufp
        # @param [Register, Integer] inbuflen
        # @param [Register, Integer] outbufp
        # @param [Register, Integer] outbuflen
        # @see https://man.freebsd.org/cgi/man.cgi?query=rctl_get_racct&sektion=2&apropos=0
        def rctl_get_racct_syscall(inbufp,inbuflen,outbufp,outbuflen) = syscall_macro(525,inbufp,inbuflen,outbufp,outbuflen)
        # Macro to call the `rctl_get_rules` syscall.
        # @param [Register, Integer] inbufp
        # @param [Register, Integer] inbuflen
        # @param [Register, Integer] outbufp
        # @param [Register, Integer] outbuflen
        # @see https://man.freebsd.org/cgi/man.cgi?query=rctl_get_rules&sektion=2&apropos=0
        def rctl_get_rules_syscall(inbufp,inbuflen,outbufp,outbuflen) = syscall_macro(526,inbufp,inbuflen,outbufp,outbuflen)
        # Macro to call the `rctl_get_limits` syscall.
        # @param [Register, Integer] inbufp
        # @param [Register, Integer] inbuflen
        # @param [Register, Integer] outbufp
        # @param [Register, Integer] outbuflen
        # @see https://man.freebsd.org/cgi/man.cgi?query=rctl_get_limits&sektion=2&apropos=0
        def rctl_get_limits_syscall(inbufp,inbuflen,outbufp,outbuflen) = syscall_macro(527,inbufp,inbuflen,outbufp,outbuflen)
        # Macro to call the `rctl_add_rule` syscall.
        # @param [Register, Integer] inbufp
        # @param [Register, Integer] inbuflen
        # @param [Register, Integer] outbufp
        # @param [Register, Integer] outbuflen
        # @see https://man.freebsd.org/cgi/man.cgi?query=rctl_add_rule&sektion=2&apropos=0
        def rctl_add_rule_syscall(inbufp,inbuflen,outbufp,outbuflen) = syscall_macro(528,inbufp,inbuflen,outbufp,outbuflen)
        # Macro to call the `rctl_remove_rule` syscall.
        # @param [Register, Integer] inbufp
        # @param [Register, Integer] inbuflen
        # @param [Register, Integer] outbufp
        # @param [Register, Integer] outbuflen
        # @see https://man.freebsd.org/cgi/man.cgi?query=rctl_remove_rule&sektion=2&apropos=0
        def rctl_remove_rule_syscall(inbufp,inbuflen,outbufp,outbuflen) = syscall_macro(529,inbufp,inbuflen,outbufp,outbuflen)
        # Macro to call the `posix_fallocate` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] offset
        # @param [Register, Integer] len
        # @see https://man.freebsd.org/cgi/man.cgi?query=posix_fallocate&sektion=2&apropos=0
        def posix_fallocate_syscall(fd,offset,len) = syscall_macro(530,fd,offset,len)
        # Macro to call the `posix_fadvise` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] offset
        # @param [Register, Integer] len
        # @param [Register, Integer] advice
        # @see https://man.freebsd.org/cgi/man.cgi?query=posix_fadvise&sektion=2&apropos=0
        def posix_fadvise_syscall(fd,offset,len,advice) = syscall_macro(531,fd,offset,len,advice)
        # Macro to call the `wait6` syscall.
        # @param [Register, Integer] idtype
        # @param [Register, Integer] id
        # @param [Register, Integer] status
        # @param [Register, Integer] options
        # @param [Register, Integer] wrusage
        # @param [Register, Integer] info
        # @see https://man.freebsd.org/cgi/man.cgi?query=wait6&sektion=2&apropos=0
        def wait6_syscall(idtype,id,status,options,wrusage,info) = syscall_macro(532,idtype,id,status,options,wrusage,info)
        # Macro to call the `cap_rights_limit` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] rightsp
        # @see https://man.freebsd.org/cgi/man.cgi?query=cap_rights_limit&sektion=2&apropos=0
        def cap_rights_limit_syscall(fd,rightsp) = syscall_macro(533,fd,rightsp)
        # Macro to call the `cap_ioctls_limit` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmds
        # @param [Register, Integer] ncmds
        # @see https://man.freebsd.org/cgi/man.cgi?query=cap_ioctls_limit&sektion=2&apropos=0
        def cap_ioctls_limit_syscall(fd,cmds,ncmds) = syscall_macro(534,fd,cmds,ncmds)
        # Macro to call the `cap_ioctls_get` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmds
        # @param [Register, Integer] maxcmds
        # @see https://man.freebsd.org/cgi/man.cgi?query=cap_ioctls_get&sektion=2&apropos=0
        def cap_ioctls_get_syscall(fd,cmds,maxcmds) = syscall_macro(535,fd,cmds,maxcmds)
        # Macro to call the `cap_fcntls_limit` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] fcntlrights
        # @see https://man.freebsd.org/cgi/man.cgi?query=cap_fcntls_limit&sektion=2&apropos=0
        def cap_fcntls_limit_syscall(fd,fcntlrights) = syscall_macro(536,fd,fcntlrights)
        # Macro to call the `cap_fcntls_get` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] fcntlrightsp
        # @see https://man.freebsd.org/cgi/man.cgi?query=cap_fcntls_get&sektion=2&apropos=0
        def cap_fcntls_get_syscall(fd,fcntlrightsp) = syscall_macro(537,fd,fcntlrightsp)
        # Macro to call the `bindat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://man.freebsd.org/cgi/man.cgi?query=bindat&sektion=2&apropos=0
        def bindat_syscall(fd,s,name,namelen) = syscall_macro(538,fd,s,name,namelen)
        # Macro to call the `connectat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @see https://man.freebsd.org/cgi/man.cgi?query=connectat&sektion=2&apropos=0
        def connectat_syscall(fd,s,name,namelen) = syscall_macro(539,fd,s,name,namelen)
        # Macro to call the `chflagsat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] atflag
        # @see https://man.freebsd.org/cgi/man.cgi?query=chflagsat&sektion=2&apropos=0
        def chflagsat_syscall(fd,path,flags,atflag) = syscall_macro(540,fd,path,flags,atflag)
        # Macro to call the `accept4` syscall.
        # @param [Register, Integer] s
        # @param [Register, Integer] name
        # @param [Register, Integer] anamelen
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=accept4&sektion=2&apropos=0
        def accept4_syscall(s,name,anamelen,flags) = syscall_macro(541,s,name,anamelen,flags)
        # Macro to call the `pipe2` syscall.
        # @param [Register, Integer] fildes
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=pipe2&sektion=2&apropos=0
        def pipe2_syscall(fildes,flags) = syscall_macro(542,fildes,flags)
        # Macro to call the `aio_mlock` syscall.
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_mlock&sektion=2&apropos=0
        def aio_mlock_syscall(aiocbp) = syscall_macro(543,aiocbp)
        # Macro to call the `procctl` syscall.
        # @param [Register, Integer] idtype
        # @param [Register, Integer] id
        # @param [Register, Integer] com
        # @param [Register, Integer] data
        # @see https://man.freebsd.org/cgi/man.cgi?query=procctl&sektion=2&apropos=0
        def procctl_syscall(idtype,id,com,data) = syscall_macro(544,idtype,id,com,data)
        # Macro to call the `ppoll` syscall.
        # @param [Register, Integer] fds
        # @param [Register, Integer] nfds
        # @param [Register, Integer] ts
        # @param [Register, Integer] set
        # @see https://man.freebsd.org/cgi/man.cgi?query=ppoll&sektion=2&apropos=0
        def ppoll_syscall(fds,nfds,ts,set) = syscall_macro(545,fds,nfds,ts,set)
        # Macro to call the `futimens` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] times
        # @see https://man.freebsd.org/cgi/man.cgi?query=futimens&sektion=2&apropos=0
        def futimens_syscall(fd,times) = syscall_macro(546,fd,times)
        # Macro to call the `utimensat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] times
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=utimensat&sektion=2&apropos=0
        def utimensat_syscall(fd,path,times,flag) = syscall_macro(547,fd,path,times,flag)
        # Macro to call the `fdatasync` syscall.
        # @param [Register, Integer] fd
        # @see https://man.freebsd.org/cgi/man.cgi?query=fdatasync&sektion=2&apropos=0
        def fdatasync_syscall(fd) = syscall_macro(550,fd)
        # Macro to call the `fstat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] sb
        # @see https://man.freebsd.org/cgi/man.cgi?query=fstat&sektion=2&apropos=0
        def fstat_syscall(fd,sb) = syscall_macro(551,fd,sb)
        # Macro to call the `fstatat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=fstatat&sektion=2&apropos=0
        def fstatat_syscall(fd,path,buf,flag) = syscall_macro(552,fd,path,buf,flag)
        # Macro to call the `fhstat` syscall.
        # @param [Register, Integer] u_fhp
        # @param [Register, Integer] sb
        # @see https://man.freebsd.org/cgi/man.cgi?query=fhstat&sektion=2&apropos=0
        def fhstat_syscall(u_fhp,sb) = syscall_macro(553,u_fhp,sb)
        # Macro to call the `getdirentries` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @param [Register, Integer] count
        # @param [Register, Integer] basep
        # @see https://man.freebsd.org/cgi/man.cgi?query=getdirentries&sektion=2&apropos=0
        def getdirentries_syscall(fd,buf,count,basep) = syscall_macro(554,fd,buf,count,basep)
        # Macro to call the `statfs` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @see https://man.freebsd.org/cgi/man.cgi?query=statfs&sektion=2&apropos=0
        def statfs_syscall(path,buf) = syscall_macro(555,path,buf)
        # Macro to call the `fstatfs` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] buf
        # @see https://man.freebsd.org/cgi/man.cgi?query=fstatfs&sektion=2&apropos=0
        def fstatfs_syscall(fd,buf) = syscall_macro(556,fd,buf)
        # Macro to call the `getfsstat` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @param [Register, Integer] mode
        # @see https://man.freebsd.org/cgi/man.cgi?query=getfsstat&sektion=2&apropos=0
        def getfsstat_syscall(buf,bufsize,mode) = syscall_macro(557,buf,bufsize,mode)
        # Macro to call the `fhstatfs` syscall.
        # @param [Register, Integer] u_fhp
        # @param [Register, Integer] buf
        # @see https://man.freebsd.org/cgi/man.cgi?query=fhstatfs&sektion=2&apropos=0
        def fhstatfs_syscall(u_fhp,buf) = syscall_macro(558,u_fhp,buf)
        # Macro to call the `mknodat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] mode
        # @param [Register, Integer] dev
        # @see https://man.freebsd.org/cgi/man.cgi?query=mknodat&sektion=2&apropos=0
        def mknodat_syscall(fd,path,mode,dev) = syscall_macro(559,fd,path,mode,dev)
        # Macro to call the `kevent` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] changelist
        # @param [Register, Integer] nchanges
        # @param [Register, Integer] eventlist
        # @param [Register, Integer] nevents
        # @param [Register, Integer] timeout
        # @see https://man.freebsd.org/cgi/man.cgi?query=kevent&sektion=2&apropos=0
        def kevent_syscall(fd,changelist,nchanges,eventlist,nevents,timeout) = syscall_macro(560,fd,changelist,nchanges,eventlist,nevents,timeout)
        # Macro to call the `cpuset_getdomain` syscall.
        # @param [Register, Integer] level
        # @param [Register, Integer] which
        # @param [Register, Integer] id
        # @param [Register, Integer] domainsetsize
        # @param [Register, Integer] mask
        # @param [Register, Integer] policy
        # @see https://man.freebsd.org/cgi/man.cgi?query=cpuset_getdomain&sektion=2&apropos=0
        def cpuset_getdomain_syscall(level,which,id,domainsetsize,mask,policy) = syscall_macro(561,level,which,id,domainsetsize,mask,policy)
        # Macro to call the `cpuset_setdomain` syscall.
        # @param [Register, Integer] level
        # @param [Register, Integer] which
        # @param [Register, Integer] id
        # @param [Register, Integer] domainsetsize
        # @param [Register, Integer] mask
        # @param [Register, Integer] policy
        # @see https://man.freebsd.org/cgi/man.cgi?query=cpuset_setdomain&sektion=2&apropos=0
        def cpuset_setdomain_syscall(level,which,id,domainsetsize,mask,policy) = syscall_macro(562,level,which,id,domainsetsize,mask,policy)
        # Macro to call the `getrandom` syscall.
        # @param [Register, Integer] buf
        # @param [Register, Integer] buflen
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=getrandom&sektion=2&apropos=0
        def getrandom_syscall(buf,buflen,flags) = syscall_macro(563,buf,buflen,flags)
        # Macro to call the `getfhat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] fhp
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=getfhat&sektion=2&apropos=0
        def getfhat_syscall(fd,path,fhp,flags) = syscall_macro(564,fd,path,fhp,flags)
        # Macro to call the `fhlink` syscall.
        # @param [Register, Integer] fhp
        # @param [Register, Integer] to
        # @see https://man.freebsd.org/cgi/man.cgi?query=fhlink&sektion=2&apropos=0
        def fhlink_syscall(fhp,to) = syscall_macro(565,fhp,to)
        # Macro to call the `fhlinkat` syscall.
        # @param [Register, Integer] fhp
        # @param [Register, Integer] tofd
        # @param [Register, Integer] to
        # @see https://man.freebsd.org/cgi/man.cgi?query=fhlinkat&sektion=2&apropos=0
        def fhlinkat_syscall(fhp,tofd,to) = syscall_macro(566,fhp,tofd,to)
        # Macro to call the `fhreadlink` syscall.
        # @param [Register, Integer] fhp
        # @param [Register, Integer] buf
        # @param [Register, Integer] bufsize
        # @see https://man.freebsd.org/cgi/man.cgi?query=fhreadlink&sektion=2&apropos=0
        def fhreadlink_syscall(fhp,buf,bufsize) = syscall_macro(567,fhp,buf,bufsize)
        # Macro to call the `funlinkat` syscall.
        # @param [Register, Integer] dfd
        # @param [Register, Integer] path
        # @param [Register, Integer] fd
        # @param [Register, Integer] flag
        # @see https://man.freebsd.org/cgi/man.cgi?query=funlinkat&sektion=2&apropos=0
        def funlinkat_syscall(dfd,path,fd,flag) = syscall_macro(568,dfd,path,fd,flag)
        # Macro to call the `copy_file_range` syscall.
        # @param [Register, Integer] infd
        # @param [Register, Integer] inoffp
        # @param [Register, Integer] outfd
        # @param [Register, Integer] outoffp
        # @param [Register, Integer] len
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=copy_file_range&sektion=2&apropos=0
        def copy_file_range_syscall(infd,inoffp,outfd,outoffp,len,flags) = syscall_macro(569,infd,inoffp,outfd,outoffp,len,flags)
        # Macro to call the `__sysctlbyname` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] namelen
        # @param [Register, Integer] old
        # @param [Register, Integer] oldlenp
        # @param [Register, Integer] new
        # @param [Register, Integer] newlen
        # @see https://man.freebsd.org/cgi/man.cgi?query=__sysctlbyname&sektion=2&apropos=0
        def __sysctlbyname_syscall(name,namelen,old,oldlenp,new,newlen) = syscall_macro(570,name,namelen,old,oldlenp,new,newlen)
        # Macro to call the `shm_open2` syscall.
        # @param [Register, Integer] path
        # @param [Register, Integer] flags
        # @param [Register, Integer] mode
        # @param [Register, Integer] shmflags
        # @param [Register, Integer] name
        # @see https://man.freebsd.org/cgi/man.cgi?query=shm_open2&sektion=2&apropos=0
        def shm_open2_syscall(path,flags,mode,shmflags,name) = syscall_macro(571,path,flags,mode,shmflags,name)
        # Macro to call the `shm_rename` syscall.
        # @param [Register, Integer] path_from
        # @param [Register, Integer] path_to
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=shm_rename&sektion=2&apropos=0
        def shm_rename_syscall(path_from,path_to,flags) = syscall_macro(572,path_from,path_to,flags)
        # Macro to call the `sigfastblock` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] ptr
        # @see https://man.freebsd.org/cgi/man.cgi?query=sigfastblock&sektion=2&apropos=0
        def sigfastblock_syscall(cmd,ptr) = syscall_macro(573,cmd,ptr)
        # Macro to call the `__realpathat` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] path
        # @param [Register, Integer] buf
        # @param [Register, Integer] size
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=__realpathat&sektion=2&apropos=0
        def __realpathat_syscall(fd,path,buf,size,flags) = syscall_macro(574,fd,path,buf,size,flags)
        # Macro to call the `close_range` syscall.
        # @param [Register, Integer] lowfd
        # @param [Register, Integer] highfd
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=close_range&sektion=2&apropos=0
        def close_range_syscall(lowfd,highfd,flags) = syscall_macro(575,lowfd,highfd,flags)
        # Macro to call the `rpctls_syscall` syscall.
        # @param [Register, Integer] socookie
        # @see https://man.freebsd.org/cgi/man.cgi?query=rpctls_syscall&sektion=2&apropos=0
        def rpctls_syscall_syscall(socookie) = syscall_macro(576,socookie)
        # Macro to call the `__specialfd` syscall.
        # @param [Register, Integer] type
        # @param [Register, Integer] req
        # @param [Register, Integer] len
        # @see https://man.freebsd.org/cgi/man.cgi?query=__specialfd&sektion=2&apropos=0
        def __specialfd_syscall(type,req,len) = syscall_macro(577,type,req,len)
        # Macro to call the `aio_writev` syscall.
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_writev&sektion=2&apropos=0
        def aio_writev_syscall(aiocbp) = syscall_macro(578,aiocbp)
        # Macro to call the `aio_readv` syscall.
        # @param [Register, Integer] aiocbp
        # @see https://man.freebsd.org/cgi/man.cgi?query=aio_readv&sektion=2&apropos=0
        def aio_readv_syscall(aiocbp) = syscall_macro(579,aiocbp)
        # Macro to call the `fspacectl` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] cmd
        # @param [Register, Integer] rqsr
        # @param [Register, Integer] flags
        # @param [Register, Integer] rmsr
        # @see https://man.freebsd.org/cgi/man.cgi?query=fspacectl&sektion=2&apropos=0
        def fspacectl_syscall(fd,cmd,rqsr,flags,rmsr) = syscall_macro(580,fd,cmd,rqsr,flags,rmsr)
        # Macro to call the `sched_getcpu` syscall.
        # @see https://man.freebsd.org/cgi/man.cgi?query=sched_getcpu&sektion=2&apropos=0
        def sched_getcpu_syscall = syscall_macro(581)
        # Macro to call the `swapoff` syscall.
        # @param [Register, Integer] name
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=swapoff&sektion=2&apropos=0
        def swapoff_syscall(name,flags) = syscall_macro(582,name,flags)
        # Macro to call the `kqueuex` syscall.
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=kqueuex&sektion=2&apropos=0
        def kqueuex_syscall(flags) = syscall_macro(583,flags)
        # Macro to call the `membarrier` syscall.
        # @param [Register, Integer] cmd
        # @param [Register, Integer] flags
        # @param [Register, Integer] cpu_id
        # @see https://man.freebsd.org/cgi/man.cgi?query=membarrier&sektion=2&apropos=0
        def membarrier_syscall(cmd,flags,cpu_id) = syscall_macro(584,cmd,flags,cpu_id)
        # Macro to call the `timerfd_create` syscall.
        # @param [Register, Integer] clockid
        # @param [Register, Integer] flags
        # @see https://man.freebsd.org/cgi/man.cgi?query=timerfd_create&sektion=2&apropos=0
        def timerfd_create_syscall(clockid,flags) = syscall_macro(585,clockid,flags)
        # Macro to call the `timerfd_gettime` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] curr_value
        # @see https://man.freebsd.org/cgi/man.cgi?query=timerfd_gettime&sektion=2&apropos=0
        def timerfd_gettime_syscall(fd,curr_value) = syscall_macro(586,fd,curr_value)
        # Macro to call the `timerfd_settime` syscall.
        # @param [Register, Integer] fd
        # @param [Register, Integer] flags
        # @param [Register, Integer] new_value
        # @param [Register, Integer] old_value
        # @see https://man.freebsd.org/cgi/man.cgi?query=timerfd_settime&sektion=2&apropos=0
        def timerfd_settime_syscall(fd,flags,new_value,old_value) = syscall_macro(587,fd,flags,new_value,old_value)
        # Macro to call the `kcmp` syscall.
        # @param [Register, Integer] pid1
        # @param [Register, Integer] pid2
        # @param [Register, Integer] type
        # @param [Register, Integer] idx1
        # @param [Register, Integer] idx2
        # @see https://man.freebsd.org/cgi/man.cgi?query=kcmp&sektion=2&apropos=0
        def kcmp_syscall(pid1,pid2,type,idx1,idx2) = syscall_macro(588,pid1,pid2,type,idx1,idx2)
        # Macro to call the `getrlimitusage` syscall.
        # @param [Register, Integer] which
        # @param [Register, Integer] flags
        # @param [Register, Integer] res
        # @see https://man.freebsd.org/cgi/man.cgi?query=getrlimitusage&sektion=2&apropos=0
        def getrlimitusage_syscall(which,flags,res) = syscall_macro(589,which,flags,res)
        # Macro to call the `fchroot` syscall.
        # @param [Register, Integer] fd
        # @see https://man.freebsd.org/cgi/man.cgi?query=fchroot&sektion=2&apropos=0
        def fchroot_syscall(fd) = syscall_macro(590,fd)
        # Macro to call the `setcred` syscall.
        # @param [Register, Integer] flags
        # @param [Register, Integer] wcred
        # @param [Register, Integer] size
        # @see https://man.freebsd.org/cgi/man.cgi?query=setcred&sektion=2&apropos=0
        def setcred_syscall(flags,wcred,size) = syscall_macro(591,flags,wcred,size)
      end
    end
  end
end
