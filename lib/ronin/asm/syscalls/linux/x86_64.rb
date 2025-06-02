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
        # Linux x86-64 syscall macros.
        #
        # @since 1.0.0
        #
        module X86_64
          # Macro to call the `read` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/read.2.html
          def read_syscall(fd,buf,count) = syscall_macro(0,fd,buf,count)
          # Macro to call the `write` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/write.2.html
          def write_syscall(fd,buf,count) = syscall_macro(1,fd,buf,count)
          # Macro to call the `open` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] flags
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/open.2.html
          def open_syscall(filename,flags,mode) = syscall_macro(2,filename,flags,mode)
          # Macro to call the `close` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/close.2.html
          def close_syscall(fd) = syscall_macro(3,fd)
          # Macro to call the `stat` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/stat.2.html
          def stat_syscall(filename,statbuf) = syscall_macro(4,filename,statbuf)
          # Macro to call the `fstat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/fstat.2.html
          def fstat_syscall(fd,statbuf) = syscall_macro(5,fd,statbuf)
          # Macro to call the `lstat` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @see https://www.man7.org/linux/man-pages/man2/lstat.2.html
          def lstat_syscall(filename,statbuf) = syscall_macro(6,filename,statbuf)
          # Macro to call the `poll` syscall.
          # @param [Register, Integer] ufds
          # @param [Register, Integer] nfds
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/poll.2.html
          def poll_syscall(ufds,nfds,timeout) = syscall_macro(7,ufds,nfds,timeout)
          # Macro to call the `lseek` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] whence
          # @see https://www.man7.org/linux/man-pages/man2/lseek.2.html
          def lseek_syscall(fd,offset,whence) = syscall_macro(8,fd,offset,whence)
          # Macro to call the `mmap` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/mmap.2.html
          def mmap_syscall = syscall_macro(9)
          # Macro to call the `mprotect` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] prot
          # @see https://www.man7.org/linux/man-pages/man2/mprotect.2.html
          def mprotect_syscall(start,len,prot) = syscall_macro(10,start,len,prot)
          # Macro to call the `munmap` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/munmap.2.html
          def munmap_syscall(addr,len) = syscall_macro(11,addr,len)
          # Macro to call the `brk` syscall.
          # @param [Register, Integer] brk
          # @see https://www.man7.org/linux/man-pages/man2/brk.2.html
          def brk_syscall(brk) = syscall_macro(12,brk)
          # Macro to call the `rt_sigaction` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigaction.2.html
          def rt_sigaction_syscall(arg1,arg2,arg3,arg4) = syscall_macro(13,arg1,arg2,arg3,arg4)
          # Macro to call the `rt_sigprocmask` syscall.
          # @param [Register, Integer] how
          # @param [Register, Integer] set
          # @param [Register, Integer] oset
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigprocmask.2.html
          def rt_sigprocmask_syscall(how,set,oset,sigsetsize) = syscall_macro(14,how,set,oset,sigsetsize)
          # Macro to call the `rt_sigreturn` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigreturn.2.html
          def rt_sigreturn_syscall = syscall_macro(15)
          # Macro to call the `ioctl` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/ioctl.2.html
          def ioctl_syscall(fd,cmd,arg) = syscall_macro(16,fd,cmd,arg)
          # Macro to call the `pread64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @param [Register, Integer] pos
          # @see https://www.man7.org/linux/man-pages/man2/pread64.2.html
          def pread64_syscall(fd,buf,count,pos) = syscall_macro(17,fd,buf,count,pos)
          # Macro to call the `pwrite64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @param [Register, Integer] pos
          # @see https://www.man7.org/linux/man-pages/man2/pwrite64.2.html
          def pwrite64_syscall(fd,buf,count,pos) = syscall_macro(18,fd,buf,count,pos)
          # Macro to call the `readv` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @see https://www.man7.org/linux/man-pages/man2/readv.2.html
          def readv_syscall(fd,vec,vlen) = syscall_macro(19,fd,vec,vlen)
          # Macro to call the `writev` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @see https://www.man7.org/linux/man-pages/man2/writev.2.html
          def writev_syscall(fd,vec,vlen) = syscall_macro(20,fd,vec,vlen)
          # Macro to call the `access` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/access.2.html
          def access_syscall(filename,mode) = syscall_macro(21,filename,mode)
          # Macro to call the `pipe` syscall.
          # @param [Register, Integer] fildes
          # @see https://www.man7.org/linux/man-pages/man2/pipe.2.html
          def pipe_syscall(fildes) = syscall_macro(22,fildes)
          # Macro to call the `select` syscall.
          # @param [Register, Integer] n
          # @param [Register, Integer] inp
          # @param [Register, Integer] outp
          # @param [Register, Integer] exp
          # @param [Register, Integer] tvp
          # @see https://www.man7.org/linux/man-pages/man2/select.2.html
          def select_syscall(n,inp,outp,exp,tvp) = syscall_macro(23,n,inp,outp,exp,tvp)
          # Macro to call the `sched_yield` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sched_yield.2.html
          def sched_yield_syscall = syscall_macro(24)
          # Macro to call the `mremap` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] old_len
          # @param [Register, Integer] new_len
          # @param [Register, Integer] flags
          # @param [Register, Integer] new_addr
          # @see https://www.man7.org/linux/man-pages/man2/mremap.2.html
          def mremap_syscall(addr,old_len,new_len,flags,new_addr) = syscall_macro(25,addr,old_len,new_len,flags,new_addr)
          # Macro to call the `msync` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/msync.2.html
          def msync_syscall(start,len,flags) = syscall_macro(26,start,len,flags)
          # Macro to call the `mincore` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] vec
          # @see https://www.man7.org/linux/man-pages/man2/mincore.2.html
          def mincore_syscall(start,len,vec) = syscall_macro(27,start,len,vec)
          # Macro to call the `madvise` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] behavior
          # @see https://www.man7.org/linux/man-pages/man2/madvise.2.html
          def madvise_syscall(start,len,behavior) = syscall_macro(28,start,len,behavior)
          # Macro to call the `shmget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] size
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/shmget.2.html
          def shmget_syscall(key,size,flag) = syscall_macro(29,key,size,flag)
          # Macro to call the `shmat` syscall.
          # @param [Register, Integer] shmid
          # @param [Register, Integer] shmaddr
          # @param [Register, Integer] shmflg
          # @see https://www.man7.org/linux/man-pages/man2/shmat.2.html
          def shmat_syscall(shmid,shmaddr,shmflg) = syscall_macro(30,shmid,shmaddr,shmflg)
          # Macro to call the `shmctl` syscall.
          # @param [Register, Integer] shmid
          # @param [Register, Integer] cmd
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/shmctl.2.html
          def shmctl_syscall(shmid,cmd,buf) = syscall_macro(31,shmid,cmd,buf)
          # Macro to call the `dup` syscall.
          # @param [Register, Integer] fildes
          # @see https://www.man7.org/linux/man-pages/man2/dup.2.html
          def dup_syscall(fildes) = syscall_macro(32,fildes)
          # Macro to call the `dup2` syscall.
          # @param [Register, Integer] oldfd
          # @param [Register, Integer] newfd
          # @see https://www.man7.org/linux/man-pages/man2/dup2.2.html
          def dup2_syscall(oldfd,newfd) = syscall_macro(33,oldfd,newfd)
          # Macro to call the `pause` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/pause.2.html
          def pause_syscall = syscall_macro(34)
          # Macro to call the `nanosleep` syscall.
          # @param [Register, Integer] rqtp
          # @param [Register, Integer] rmtp
          # @see https://www.man7.org/linux/man-pages/man2/nanosleep.2.html
          def nanosleep_syscall(rqtp,rmtp) = syscall_macro(35,rqtp,rmtp)
          # Macro to call the `getitimer` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] value
          # @see https://www.man7.org/linux/man-pages/man2/getitimer.2.html
          def getitimer_syscall(which,value) = syscall_macro(36,which,value)
          # Macro to call the `alarm` syscall.
          # @param [Register, Integer] seconds
          # @see https://www.man7.org/linux/man-pages/man2/alarm.2.html
          def alarm_syscall(seconds) = syscall_macro(37,seconds)
          # Macro to call the `setitimer` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] value
          # @param [Register, Integer] ovalue
          # @see https://www.man7.org/linux/man-pages/man2/setitimer.2.html
          def setitimer_syscall(which,value,ovalue) = syscall_macro(38,which,value,ovalue)
          # Macro to call the `getpid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getpid.2.html
          def getpid_syscall = syscall_macro(39)
          # Macro to call the `sendfile` syscall.
          # @param [Register, Integer] out_fd
          # @param [Register, Integer] in_fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/sendfile.2.html
          def sendfile_syscall(out_fd,in_fd,offset,count) = syscall_macro(40,out_fd,in_fd,offset,count)
          # Macro to call the `socket` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/socket.2.html
          def socket_syscall(arg1,arg2,arg3) = syscall_macro(41,arg1,arg2,arg3)
          # Macro to call the `connect` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/connect.2.html
          def connect_syscall(arg1,arg2,arg3) = syscall_macro(42,arg1,arg2,arg3)
          # Macro to call the `accept` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/accept.2.html
          def accept_syscall(arg1,arg2,arg3) = syscall_macro(43,arg1,arg2,arg3)
          # Macro to call the `sendto` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @param [Register, Integer] arg6
          # @see https://www.man7.org/linux/man-pages/man2/sendto.2.html
          def sendto_syscall(arg1,arg2,arg3,arg4,arg5,arg6) = syscall_macro(44,arg1,arg2,arg3,arg4,arg5,arg6)
          # Macro to call the `recvfrom` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @param [Register, Integer] arg6
          # @see https://www.man7.org/linux/man-pages/man2/recvfrom.2.html
          def recvfrom_syscall(arg1,arg2,arg3,arg4,arg5,arg6) = syscall_macro(45,arg1,arg2,arg3,arg4,arg5,arg6)
          # Macro to call the `sendmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sendmsg.2.html
          def sendmsg_syscall(fd,msg,flags) = syscall_macro(46,fd,msg,flags)
          # Macro to call the `recvmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/recvmsg.2.html
          def recvmsg_syscall(fd,msg,flags) = syscall_macro(47,fd,msg,flags)
          # Macro to call the `shutdown` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @see https://www.man7.org/linux/man-pages/man2/shutdown.2.html
          def shutdown_syscall(arg1,arg2) = syscall_macro(48,arg1,arg2)
          # Macro to call the `bind` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/bind.2.html
          def bind_syscall(arg1,arg2,arg3) = syscall_macro(49,arg1,arg2,arg3)
          # Macro to call the `listen` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @see https://www.man7.org/linux/man-pages/man2/listen.2.html
          def listen_syscall(arg1,arg2) = syscall_macro(50,arg1,arg2)
          # Macro to call the `getsockname` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/getsockname.2.html
          def getsockname_syscall(arg1,arg2,arg3) = syscall_macro(51,arg1,arg2,arg3)
          # Macro to call the `getpeername` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/getpeername.2.html
          def getpeername_syscall(arg1,arg2,arg3) = syscall_macro(52,arg1,arg2,arg3)
          # Macro to call the `socketpair` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @see https://www.man7.org/linux/man-pages/man2/socketpair.2.html
          def socketpair_syscall(arg1,arg2,arg3,arg4) = syscall_macro(53,arg1,arg2,arg3,arg4)
          # Macro to call the `setsockopt` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] level
          # @param [Register, Integer] optname
          # @param [Register, Integer] optval
          # @param [Register, Integer] optlen
          # @see https://www.man7.org/linux/man-pages/man2/setsockopt.2.html
          def setsockopt_syscall(fd,level,optname,optval,optlen) = syscall_macro(54,fd,level,optname,optval,optlen)
          # Macro to call the `getsockopt` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] level
          # @param [Register, Integer] optname
          # @param [Register, Integer] optval
          # @param [Register, Integer] optlen
          # @see https://www.man7.org/linux/man-pages/man2/getsockopt.2.html
          def getsockopt_syscall(fd,level,optname,optval,optlen) = syscall_macro(55,fd,level,optname,optval,optlen)
          # Macro to call the `clone` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/clone.2.html
          def clone_syscall(arg1,arg2,arg3,arg4,arg5) = syscall_macro(56,arg1,arg2,arg3,arg4,arg5)
          # Macro to call the `fork` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/fork.2.html
          def fork_syscall = syscall_macro(57)
          # Macro to call the `vfork` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vfork.2.html
          def vfork_syscall = syscall_macro(58)
          # Macro to call the `execve` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] argv
          # @param [Register, Integer] envp
          # @see https://www.man7.org/linux/man-pages/man2/execve.2.html
          def execve_syscall(filename,argv,envp) = syscall_macro(59,filename,argv,envp)
          # Macro to call the `exit` syscall.
          # @param [Register, Integer] error_code
          # @see https://www.man7.org/linux/man-pages/man2/exit.2.html
          def exit_syscall(error_code) = syscall_macro(60,error_code)
          # Macro to call the `wait4` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] stat_addr
          # @param [Register, Integer] options
          # @param [Register, Integer] ru
          # @see https://www.man7.org/linux/man-pages/man2/wait4.2.html
          def wait4_syscall(pid,stat_addr,options,ru) = syscall_macro(61,pid,stat_addr,options,ru)
          # Macro to call the `kill` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/kill.2.html
          def kill_syscall(pid,sig) = syscall_macro(62,pid,sig)
          # Macro to call the `uname` syscall.
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/uname.2.html
          def uname_syscall(name) = syscall_macro(63,name)
          # Macro to call the `semget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] nsems
          # @param [Register, Integer] semflg
          # @see https://www.man7.org/linux/man-pages/man2/semget.2.html
          def semget_syscall(key,nsems,semflg) = syscall_macro(64,key,nsems,semflg)
          # Macro to call the `semop` syscall.
          # @param [Register, Integer] semid
          # @param [Register, Integer] sops
          # @param [Register, Integer] nsops
          # @see https://www.man7.org/linux/man-pages/man2/semop.2.html
          def semop_syscall(semid,sops,nsops) = syscall_macro(65,semid,sops,nsops)
          # Macro to call the `semctl` syscall.
          # @param [Register, Integer] semid
          # @param [Register, Integer] semnum
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/semctl.2.html
          def semctl_syscall(semid,semnum,cmd,arg) = syscall_macro(66,semid,semnum,cmd,arg)
          # Macro to call the `shmdt` syscall.
          # @param [Register, Integer] shmaddr
          # @see https://www.man7.org/linux/man-pages/man2/shmdt.2.html
          def shmdt_syscall(shmaddr) = syscall_macro(67,shmaddr)
          # Macro to call the `msgget` syscall.
          # @param [Register, Integer] key
          # @param [Register, Integer] msgflg
          # @see https://www.man7.org/linux/man-pages/man2/msgget.2.html
          def msgget_syscall(key,msgflg) = syscall_macro(68,key,msgflg)
          # Macro to call the `msgsnd` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] msgp
          # @param [Register, Integer] msgsz
          # @param [Register, Integer] msgflg
          # @see https://www.man7.org/linux/man-pages/man2/msgsnd.2.html
          def msgsnd_syscall(msqid,msgp,msgsz,msgflg) = syscall_macro(69,msqid,msgp,msgsz,msgflg)
          # Macro to call the `msgrcv` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] msgp
          # @param [Register, Integer] msgsz
          # @param [Register, Integer] msgtyp
          # @param [Register, Integer] msgflg
          # @see https://www.man7.org/linux/man-pages/man2/msgrcv.2.html
          def msgrcv_syscall(msqid,msgp,msgsz,msgtyp,msgflg) = syscall_macro(70,msqid,msgp,msgsz,msgtyp,msgflg)
          # Macro to call the `msgctl` syscall.
          # @param [Register, Integer] msqid
          # @param [Register, Integer] cmd
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/msgctl.2.html
          def msgctl_syscall(msqid,cmd,buf) = syscall_macro(71,msqid,cmd,buf)
          # Macro to call the `fcntl` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/fcntl.2.html
          def fcntl_syscall(fd,cmd,arg) = syscall_macro(72,fd,cmd,arg)
          # Macro to call the `flock` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @see https://www.man7.org/linux/man-pages/man2/flock.2.html
          def flock_syscall(fd,cmd) = syscall_macro(73,fd,cmd)
          # Macro to call the `fsync` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/fsync.2.html
          def fsync_syscall(fd) = syscall_macro(74,fd)
          # Macro to call the `fdatasync` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/fdatasync.2.html
          def fdatasync_syscall(fd) = syscall_macro(75,fd)
          # Macro to call the `truncate` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] length
          # @see https://www.man7.org/linux/man-pages/man2/truncate.2.html
          def truncate_syscall(path,length) = syscall_macro(76,path,length)
          # Macro to call the `ftruncate` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] length
          # @see https://www.man7.org/linux/man-pages/man2/ftruncate.2.html
          def ftruncate_syscall(fd,length) = syscall_macro(77,fd,length)
          # Macro to call the `getdents` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] dirent
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/getdents.2.html
          def getdents_syscall(fd,dirent,count) = syscall_macro(78,fd,dirent,count)
          # Macro to call the `getcwd` syscall.
          # @param [Register, Integer] buf
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/getcwd.2.html
          def getcwd_syscall(buf,size) = syscall_macro(79,buf,size)
          # Macro to call the `chdir` syscall.
          # @param [Register, Integer] filename
          # @see https://www.man7.org/linux/man-pages/man2/chdir.2.html
          def chdir_syscall(filename) = syscall_macro(80,filename)
          # Macro to call the `fchdir` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/fchdir.2.html
          def fchdir_syscall(fd) = syscall_macro(81,fd)
          # Macro to call the `rename` syscall.
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/rename.2.html
          def rename_syscall(oldname,newname) = syscall_macro(82,oldname,newname)
          # Macro to call the `mkdir` syscall.
          # @param [Register, Integer] pathname
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/mkdir.2.html
          def mkdir_syscall(pathname,mode) = syscall_macro(83,pathname,mode)
          # Macro to call the `rmdir` syscall.
          # @param [Register, Integer] pathname
          # @see https://www.man7.org/linux/man-pages/man2/rmdir.2.html
          def rmdir_syscall(pathname) = syscall_macro(84,pathname)
          # Macro to call the `creat` syscall.
          # @param [Register, Integer] pathname
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/creat.2.html
          def creat_syscall(pathname,mode) = syscall_macro(85,pathname,mode)
          # Macro to call the `link` syscall.
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/link.2.html
          def link_syscall(oldname,newname) = syscall_macro(86,oldname,newname)
          # Macro to call the `unlink` syscall.
          # @param [Register, Integer] pathname
          # @see https://www.man7.org/linux/man-pages/man2/unlink.2.html
          def unlink_syscall(pathname) = syscall_macro(87,pathname)
          # Macro to call the `symlink` syscall.
          # @param [Register, Integer] old
          # @param [Register, Integer] new
          # @see https://www.man7.org/linux/man-pages/man2/symlink.2.html
          def symlink_syscall(old,new) = syscall_macro(88,old,new)
          # Macro to call the `readlink` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @param [Register, Integer] bufsiz
          # @see https://www.man7.org/linux/man-pages/man2/readlink.2.html
          def readlink_syscall(path,buf,bufsiz) = syscall_macro(89,path,buf,bufsiz)
          # Macro to call the `chmod` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/chmod.2.html
          def chmod_syscall(filename,mode) = syscall_macro(90,filename,mode)
          # Macro to call the `fchmod` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/fchmod.2.html
          def fchmod_syscall(fd,mode) = syscall_macro(91,fd,mode)
          # Macro to call the `chown` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @see https://www.man7.org/linux/man-pages/man2/chown.2.html
          def chown_syscall(filename,user,group) = syscall_macro(92,filename,user,group)
          # Macro to call the `fchown` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @see https://www.man7.org/linux/man-pages/man2/fchown.2.html
          def fchown_syscall(fd,user,group) = syscall_macro(93,fd,user,group)
          # Macro to call the `lchown` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @see https://www.man7.org/linux/man-pages/man2/lchown.2.html
          def lchown_syscall(filename,user,group) = syscall_macro(94,filename,user,group)
          # Macro to call the `umask` syscall.
          # @param [Register, Integer] mask
          # @see https://www.man7.org/linux/man-pages/man2/umask.2.html
          def umask_syscall(mask) = syscall_macro(95,mask)
          # Macro to call the `gettimeofday` syscall.
          # @param [Register, Integer] tv
          # @param [Register, Integer] tz
          # @see https://www.man7.org/linux/man-pages/man2/gettimeofday.2.html
          def gettimeofday_syscall(tv,tz) = syscall_macro(96,tv,tz)
          # Macro to call the `getrlimit` syscall.
          # @param [Register, Integer] resource
          # @param [Register, Integer] rlim
          # @see https://www.man7.org/linux/man-pages/man2/getrlimit.2.html
          def getrlimit_syscall(resource,rlim) = syscall_macro(97,resource,rlim)
          # Macro to call the `getrusage` syscall.
          # @param [Register, Integer] who
          # @param [Register, Integer] ru
          # @see https://www.man7.org/linux/man-pages/man2/getrusage.2.html
          def getrusage_syscall(who,ru) = syscall_macro(98,who,ru)
          # Macro to call the `sysinfo` syscall.
          # @param [Register, Integer] info
          # @see https://www.man7.org/linux/man-pages/man2/sysinfo.2.html
          def sysinfo_syscall(info) = syscall_macro(99,info)
          # Macro to call the `times` syscall.
          # @param [Register, Integer] tbuf
          # @see https://www.man7.org/linux/man-pages/man2/times.2.html
          def times_syscall(tbuf) = syscall_macro(100,tbuf)
          # Macro to call the `ptrace` syscall.
          # @param [Register, Integer] request
          # @param [Register, Integer] pid
          # @param [Register, Integer] addr
          # @param [Register, Integer] data
          # @see https://www.man7.org/linux/man-pages/man2/ptrace.2.html
          def ptrace_syscall(request,pid,addr,data) = syscall_macro(101,request,pid,addr,data)
          # Macro to call the `getuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getuid.2.html
          def getuid_syscall = syscall_macro(102)
          # Macro to call the `syslog` syscall.
          # @param [Register, Integer] type
          # @param [Register, Integer] buf
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/syslog.2.html
          def syslog_syscall(type,buf,len) = syscall_macro(103,type,buf,len)
          # Macro to call the `getgid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getgid.2.html
          def getgid_syscall = syscall_macro(104)
          # Macro to call the `setuid` syscall.
          # @param [Register, Integer] uid
          # @see https://www.man7.org/linux/man-pages/man2/setuid.2.html
          def setuid_syscall(uid) = syscall_macro(105,uid)
          # Macro to call the `setgid` syscall.
          # @param [Register, Integer] gid
          # @see https://www.man7.org/linux/man-pages/man2/setgid.2.html
          def setgid_syscall(gid) = syscall_macro(106,gid)
          # Macro to call the `geteuid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/geteuid.2.html
          def geteuid_syscall = syscall_macro(107)
          # Macro to call the `getegid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getegid.2.html
          def getegid_syscall = syscall_macro(108)
          # Macro to call the `setpgid` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] pgid
          # @see https://www.man7.org/linux/man-pages/man2/setpgid.2.html
          def setpgid_syscall(pid,pgid) = syscall_macro(109,pid,pgid)
          # Macro to call the `getppid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getppid.2.html
          def getppid_syscall = syscall_macro(110)
          # Macro to call the `getpgrp` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getpgrp.2.html
          def getpgrp_syscall = syscall_macro(111)
          # Macro to call the `setsid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/setsid.2.html
          def setsid_syscall = syscall_macro(112)
          # Macro to call the `setreuid` syscall.
          # @param [Register, Integer] ruid
          # @param [Register, Integer] euid
          # @see https://www.man7.org/linux/man-pages/man2/setreuid.2.html
          def setreuid_syscall(ruid,euid) = syscall_macro(113,ruid,euid)
          # Macro to call the `setregid` syscall.
          # @param [Register, Integer] rgid
          # @param [Register, Integer] egid
          # @see https://www.man7.org/linux/man-pages/man2/setregid.2.html
          def setregid_syscall(rgid,egid) = syscall_macro(114,rgid,egid)
          # Macro to call the `getgroups` syscall.
          # @param [Register, Integer] gidsetsize
          # @param [Register, Integer] grouplist
          # @see https://www.man7.org/linux/man-pages/man2/getgroups.2.html
          def getgroups_syscall(gidsetsize,grouplist) = syscall_macro(115,gidsetsize,grouplist)
          # Macro to call the `setgroups` syscall.
          # @param [Register, Integer] gidsetsize
          # @param [Register, Integer] grouplist
          # @see https://www.man7.org/linux/man-pages/man2/setgroups.2.html
          def setgroups_syscall(gidsetsize,grouplist) = syscall_macro(116,gidsetsize,grouplist)
          # Macro to call the `setresuid` syscall.
          # @param [Register, Integer] ruid
          # @param [Register, Integer] euid
          # @param [Register, Integer] suid
          # @see https://www.man7.org/linux/man-pages/man2/setresuid.2.html
          def setresuid_syscall(ruid,euid,suid) = syscall_macro(117,ruid,euid,suid)
          # Macro to call the `getresuid` syscall.
          # @param [Register, Integer] ruid
          # @param [Register, Integer] euid
          # @param [Register, Integer] suid
          # @see https://www.man7.org/linux/man-pages/man2/getresuid.2.html
          def getresuid_syscall(ruid,euid,suid) = syscall_macro(118,ruid,euid,suid)
          # Macro to call the `setresgid` syscall.
          # @param [Register, Integer] rgid
          # @param [Register, Integer] egid
          # @param [Register, Integer] sgid
          # @see https://www.man7.org/linux/man-pages/man2/setresgid.2.html
          def setresgid_syscall(rgid,egid,sgid) = syscall_macro(119,rgid,egid,sgid)
          # Macro to call the `getresgid` syscall.
          # @param [Register, Integer] rgid
          # @param [Register, Integer] egid
          # @param [Register, Integer] sgid
          # @see https://www.man7.org/linux/man-pages/man2/getresgid.2.html
          def getresgid_syscall(rgid,egid,sgid) = syscall_macro(120,rgid,egid,sgid)
          # Macro to call the `getpgid` syscall.
          # @param [Register, Integer] pid
          # @see https://www.man7.org/linux/man-pages/man2/getpgid.2.html
          def getpgid_syscall(pid) = syscall_macro(121,pid)
          # Macro to call the `setfsuid` syscall.
          # @param [Register, Integer] uid
          # @see https://www.man7.org/linux/man-pages/man2/setfsuid.2.html
          def setfsuid_syscall(uid) = syscall_macro(122,uid)
          # Macro to call the `setfsgid` syscall.
          # @param [Register, Integer] gid
          # @see https://www.man7.org/linux/man-pages/man2/setfsgid.2.html
          def setfsgid_syscall(gid) = syscall_macro(123,gid)
          # Macro to call the `getsid` syscall.
          # @param [Register, Integer] pid
          # @see https://www.man7.org/linux/man-pages/man2/getsid.2.html
          def getsid_syscall(pid) = syscall_macro(124,pid)
          # Macro to call the `capget` syscall.
          # @param [Register, Integer] header
          # @param [Register, Integer] dataptr
          # @see https://www.man7.org/linux/man-pages/man2/capget.2.html
          def capget_syscall(header,dataptr) = syscall_macro(125,header,dataptr)
          # Macro to call the `capset` syscall.
          # @param [Register, Integer] header
          # @param [Register, Integer] data
          # @see https://www.man7.org/linux/man-pages/man2/capset.2.html
          def capset_syscall(header,data) = syscall_macro(126,header,data)
          # Macro to call the `rt_sigpending` syscall.
          # @param [Register, Integer] set
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigpending.2.html
          def rt_sigpending_syscall(set,sigsetsize) = syscall_macro(127,set,sigsetsize)
          # Macro to call the `rt_sigtimedwait` syscall.
          # @param [Register, Integer] uthese
          # @param [Register, Integer] uinfo
          # @param [Register, Integer] uts
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigtimedwait.2.html
          def rt_sigtimedwait_syscall(uthese,uinfo,uts,sigsetsize) = syscall_macro(128,uthese,uinfo,uts,sigsetsize)
          # Macro to call the `rt_sigqueueinfo` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @param [Register, Integer] uinfo
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigqueueinfo.2.html
          def rt_sigqueueinfo_syscall(pid,sig,uinfo) = syscall_macro(129,pid,sig,uinfo)
          # Macro to call the `rt_sigsuspend` syscall.
          # @param [Register, Integer] unewset
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/rt_sigsuspend.2.html
          def rt_sigsuspend_syscall(unewset,sigsetsize) = syscall_macro(130,unewset,sigsetsize)
          # Macro to call the `sigaltstack` syscall.
          # @param [Register, Integer] uss
          # @param [Register, Integer] uoss
          # @see https://www.man7.org/linux/man-pages/man2/sigaltstack.2.html
          def sigaltstack_syscall(uss,uoss) = syscall_macro(131,uss,uoss)
          # Macro to call the `utime` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] times
          # @see https://www.man7.org/linux/man-pages/man2/utime.2.html
          def utime_syscall(filename,times) = syscall_macro(132,filename,times)
          # Macro to call the `mknod` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] dev
          # @see https://www.man7.org/linux/man-pages/man2/mknod.2.html
          def mknod_syscall(filename,mode,dev) = syscall_macro(133,filename,mode,dev)
          # Macro to call the `uselib` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/uselib.2.html
          def uselib_syscall = syscall_macro(134)
          # Macro to call the `personality` syscall.
          # @param [Register, Integer] personality
          # @see https://www.man7.org/linux/man-pages/man2/personality.2.html
          def personality_syscall(personality) = syscall_macro(135,personality)
          # Macro to call the `ustat` syscall.
          # @param [Register, Integer] dev
          # @param [Register, Integer] ubuf
          # @see https://www.man7.org/linux/man-pages/man2/ustat.2.html
          def ustat_syscall(dev,ubuf) = syscall_macro(136,dev,ubuf)
          # Macro to call the `statfs` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/statfs.2.html
          def statfs_syscall(path,buf) = syscall_macro(137,path,buf)
          # Macro to call the `fstatfs` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] buf
          # @see https://www.man7.org/linux/man-pages/man2/fstatfs.2.html
          def fstatfs_syscall(fd,buf) = syscall_macro(138,fd,buf)
          # Macro to call the `sysfs` syscall.
          # @param [Register, Integer] option
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @see https://www.man7.org/linux/man-pages/man2/sysfs.2.html
          def sysfs_syscall(option,arg1,arg2) = syscall_macro(139,option,arg1,arg2)
          # Macro to call the `getpriority` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @see https://www.man7.org/linux/man-pages/man2/getpriority.2.html
          def getpriority_syscall(which,who) = syscall_macro(140,which,who)
          # Macro to call the `setpriority` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @param [Register, Integer] niceval
          # @see https://www.man7.org/linux/man-pages/man2/setpriority.2.html
          def setpriority_syscall(which,who,niceval) = syscall_macro(141,which,who,niceval)
          # Macro to call the `sched_setparam` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] param
          # @see https://www.man7.org/linux/man-pages/man2/sched_setparam.2.html
          def sched_setparam_syscall(pid,param) = syscall_macro(142,pid,param)
          # Macro to call the `sched_getparam` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] param
          # @see https://www.man7.org/linux/man-pages/man2/sched_getparam.2.html
          def sched_getparam_syscall(pid,param) = syscall_macro(143,pid,param)
          # Macro to call the `sched_setscheduler` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] policy
          # @param [Register, Integer] param
          # @see https://www.man7.org/linux/man-pages/man2/sched_setscheduler.2.html
          def sched_setscheduler_syscall(pid,policy,param) = syscall_macro(144,pid,policy,param)
          # Macro to call the `sched_getscheduler` syscall.
          # @param [Register, Integer] pid
          # @see https://www.man7.org/linux/man-pages/man2/sched_getscheduler.2.html
          def sched_getscheduler_syscall(pid) = syscall_macro(145,pid)
          # Macro to call the `sched_get_priority_max` syscall.
          # @param [Register, Integer] policy
          # @see https://www.man7.org/linux/man-pages/man2/sched_get_priority_max.2.html
          def sched_get_priority_max_syscall(policy) = syscall_macro(146,policy)
          # Macro to call the `sched_get_priority_min` syscall.
          # @param [Register, Integer] policy
          # @see https://www.man7.org/linux/man-pages/man2/sched_get_priority_min.2.html
          def sched_get_priority_min_syscall(policy) = syscall_macro(147,policy)
          # Macro to call the `sched_rr_get_interval` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] interval
          # @see https://www.man7.org/linux/man-pages/man2/sched_rr_get_interval.2.html
          def sched_rr_get_interval_syscall(pid,interval) = syscall_macro(148,pid,interval)
          # Macro to call the `mlock` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/mlock.2.html
          def mlock_syscall(start,len) = syscall_macro(149,start,len)
          # Macro to call the `munlock` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/munlock.2.html
          def munlock_syscall(start,len) = syscall_macro(150,start,len)
          # Macro to call the `mlockall` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mlockall.2.html
          def mlockall_syscall(flags) = syscall_macro(151,flags)
          # Macro to call the `munlockall` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/munlockall.2.html
          def munlockall_syscall = syscall_macro(152)
          # Macro to call the `vhangup` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vhangup.2.html
          def vhangup_syscall = syscall_macro(153)
          # Macro to call the `modify_ldt` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/modify_ldt.2.html
          def modify_ldt_syscall = syscall_macro(154)
          # Macro to call the `pivot_root` syscall.
          # @param [Register, Integer] new_root
          # @param [Register, Integer] put_old
          # @see https://www.man7.org/linux/man-pages/man2/pivot_root.2.html
          def pivot_root_syscall(new_root,put_old) = syscall_macro(155,new_root,put_old)
          # Macro to call the `_sysctl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/_sysctl.2.html
          def _sysctl_syscall = syscall_macro(156)
          # Macro to call the `prctl` syscall.
          # @param [Register, Integer] option
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/prctl.2.html
          def prctl_syscall(option,arg2,arg3,arg4,arg5) = syscall_macro(157,option,arg2,arg3,arg4,arg5)
          # Macro to call the `arch_prctl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/arch_prctl.2.html
          def arch_prctl_syscall = syscall_macro(158)
          # Macro to call the `adjtimex` syscall.
          # @param [Register, Integer] txc_p
          # @see https://www.man7.org/linux/man-pages/man2/adjtimex.2.html
          def adjtimex_syscall(txc_p) = syscall_macro(159,txc_p)
          # Macro to call the `setrlimit` syscall.
          # @param [Register, Integer] resource
          # @param [Register, Integer] rlim
          # @see https://www.man7.org/linux/man-pages/man2/setrlimit.2.html
          def setrlimit_syscall(resource,rlim) = syscall_macro(160,resource,rlim)
          # Macro to call the `chroot` syscall.
          # @param [Register, Integer] filename
          # @see https://www.man7.org/linux/man-pages/man2/chroot.2.html
          def chroot_syscall(filename) = syscall_macro(161,filename)
          # Macro to call the `sync` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/sync.2.html
          def sync_syscall = syscall_macro(162)
          # Macro to call the `acct` syscall.
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/acct.2.html
          def acct_syscall(name) = syscall_macro(163,name)
          # Macro to call the `settimeofday` syscall.
          # @param [Register, Integer] tv
          # @param [Register, Integer] tz
          # @see https://www.man7.org/linux/man-pages/man2/settimeofday.2.html
          def settimeofday_syscall(tv,tz) = syscall_macro(164,tv,tz)
          # Macro to call the `mount` syscall.
          # @param [Register, Integer] dev_name
          # @param [Register, Integer] dir_name
          # @param [Register, Integer] type
          # @param [Register, Integer] flags
          # @param [Register, Integer] data
          # @see https://www.man7.org/linux/man-pages/man2/mount.2.html
          def mount_syscall(dev_name,dir_name,type,flags,data) = syscall_macro(165,dev_name,dir_name,type,flags,data)
          # Macro to call the `umount2` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/umount2.2.html
          def umount2_syscall(name,flags) = syscall_macro(166,name,flags)
          # Macro to call the `swapon` syscall.
          # @param [Register, Integer] specialfile
          # @param [Register, Integer] swap_flags
          # @see https://www.man7.org/linux/man-pages/man2/swapon.2.html
          def swapon_syscall(specialfile,swap_flags) = syscall_macro(167,specialfile,swap_flags)
          # Macro to call the `swapoff` syscall.
          # @param [Register, Integer] specialfile
          # @see https://www.man7.org/linux/man-pages/man2/swapoff.2.html
          def swapoff_syscall(specialfile) = syscall_macro(168,specialfile)
          # Macro to call the `reboot` syscall.
          # @param [Register, Integer] magic1
          # @param [Register, Integer] magic2
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg
          # @see https://www.man7.org/linux/man-pages/man2/reboot.2.html
          def reboot_syscall(magic1,magic2,cmd,arg) = syscall_macro(169,magic1,magic2,cmd,arg)
          # Macro to call the `sethostname` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/sethostname.2.html
          def sethostname_syscall(name,len) = syscall_macro(170,name,len)
          # Macro to call the `setdomainname` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/setdomainname.2.html
          def setdomainname_syscall(name,len) = syscall_macro(171,name,len)
          # Macro to call the `iopl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/iopl.2.html
          def iopl_syscall = syscall_macro(172)
          # Macro to call the `ioperm` syscall.
          # @param [Register, Integer] from
          # @param [Register, Integer] num
          # @param [Register, Integer] on
          # @see https://www.man7.org/linux/man-pages/man2/ioperm.2.html
          def ioperm_syscall(from,num,on) = syscall_macro(173,from,num,on)
          # Macro to call the `create_module` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/create_module.2.html
          def create_module_syscall = syscall_macro(174)
          # Macro to call the `init_module` syscall.
          # @param [Register, Integer] umod
          # @param [Register, Integer] len
          # @param [Register, Integer] uargs
          # @see https://www.man7.org/linux/man-pages/man2/init_module.2.html
          def init_module_syscall(umod,len,uargs) = syscall_macro(175,umod,len,uargs)
          # Macro to call the `delete_module` syscall.
          # @param [Register, Integer] name_user
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/delete_module.2.html
          def delete_module_syscall(name_user,flags) = syscall_macro(176,name_user,flags)
          # Macro to call the `get_kernel_syms` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/get_kernel_syms.2.html
          def get_kernel_syms_syscall = syscall_macro(177)
          # Macro to call the `query_module` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/query_module.2.html
          def query_module_syscall = syscall_macro(178)
          # Macro to call the `quotactl` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] special
          # @param [Register, Integer] id
          # @param [Register, Integer] addr
          # @see https://www.man7.org/linux/man-pages/man2/quotactl.2.html
          def quotactl_syscall(cmd,special,id,addr) = syscall_macro(179,cmd,special,id,addr)
          # Macro to call the `nfsservctl` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/nfsservctl.2.html
          def nfsservctl_syscall = syscall_macro(180)
          # Macro to call the `getpmsg` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/getpmsg.2.html
          def getpmsg_syscall = syscall_macro(181)
          # Macro to call the `putpmsg` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/putpmsg.2.html
          def putpmsg_syscall = syscall_macro(182)
          # Macro to call the `afs_syscall` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/afs_syscall.2.html
          def afs_syscall_syscall = syscall_macro(183)
          # Macro to call the `tuxcall` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/tuxcall.2.html
          def tuxcall_syscall = syscall_macro(184)
          # Macro to call the `security` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/security.2.html
          def security_syscall = syscall_macro(185)
          # Macro to call the `gettid` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/gettid.2.html
          def gettid_syscall = syscall_macro(186)
          # Macro to call the `readahead` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/readahead.2.html
          def readahead_syscall(fd,offset,count) = syscall_macro(187,fd,offset,count)
          # Macro to call the `setxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/setxattr.2.html
          def setxattr_syscall(path,name,value,size,flags) = syscall_macro(188,path,name,value,size,flags)
          # Macro to call the `lsetxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsetxattr.2.html
          def lsetxattr_syscall(path,name,value,size,flags) = syscall_macro(189,path,name,value,size,flags)
          # Macro to call the `fsetxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fsetxattr.2.html
          def fsetxattr_syscall(fd,name,value,size,flags) = syscall_macro(190,fd,name,value,size,flags)
          # Macro to call the `getxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/getxattr.2.html
          def getxattr_syscall(path,name,value,size) = syscall_macro(191,path,name,value,size)
          # Macro to call the `lgetxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/lgetxattr.2.html
          def lgetxattr_syscall(path,name,value,size) = syscall_macro(192,path,name,value,size)
          # Macro to call the `fgetxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @param [Register, Integer] value
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/fgetxattr.2.html
          def fgetxattr_syscall(fd,name,value,size) = syscall_macro(193,fd,name,value,size)
          # Macro to call the `listxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/listxattr.2.html
          def listxattr_syscall(path,list,size) = syscall_macro(194,path,list,size)
          # Macro to call the `llistxattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/llistxattr.2.html
          def llistxattr_syscall(path,list,size) = syscall_macro(195,path,list,size)
          # Macro to call the `flistxattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/flistxattr.2.html
          def flistxattr_syscall(fd,list,size) = syscall_macro(196,fd,list,size)
          # Macro to call the `removexattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/removexattr.2.html
          def removexattr_syscall(path,name) = syscall_macro(197,path,name)
          # Macro to call the `lremovexattr` syscall.
          # @param [Register, Integer] path
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/lremovexattr.2.html
          def lremovexattr_syscall(path,name) = syscall_macro(198,path,name)
          # Macro to call the `fremovexattr` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/fremovexattr.2.html
          def fremovexattr_syscall(fd,name) = syscall_macro(199,fd,name)
          # Macro to call the `tkill` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/tkill.2.html
          def tkill_syscall(pid,sig) = syscall_macro(200,pid,sig)
          # Macro to call the `time` syscall.
          # @param [Register, Integer] tloc
          # @see https://www.man7.org/linux/man-pages/man2/time.2.html
          def time_syscall(tloc) = syscall_macro(201,tloc)
          # Macro to call the `futex` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] op
          # @param [Register, Integer] val
          # @param [Register, Integer] utime
          # @param [Register, Integer] uaddr2
          # @param [Register, Integer] val3
          # @see https://www.man7.org/linux/man-pages/man2/futex.2.html
          def futex_syscall(uaddr,op,val,utime,uaddr2,val3) = syscall_macro(202,uaddr,op,val,utime,uaddr2,val3)
          # Macro to call the `sched_setaffinity` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] len
          # @param [Register, Integer] user_mask_ptr
          # @see https://www.man7.org/linux/man-pages/man2/sched_setaffinity.2.html
          def sched_setaffinity_syscall(pid,len,user_mask_ptr) = syscall_macro(203,pid,len,user_mask_ptr)
          # Macro to call the `sched_getaffinity` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] len
          # @param [Register, Integer] user_mask_ptr
          # @see https://www.man7.org/linux/man-pages/man2/sched_getaffinity.2.html
          def sched_getaffinity_syscall(pid,len,user_mask_ptr) = syscall_macro(204,pid,len,user_mask_ptr)
          # Macro to call the `set_thread_area` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/set_thread_area.2.html
          def set_thread_area_syscall = syscall_macro(205)
          # Macro to call the `io_setup` syscall.
          # @param [Register, Integer] nr_reqs
          # @param [Register, Integer] ctx
          # @see https://www.man7.org/linux/man-pages/man2/io_setup.2.html
          def io_setup_syscall(nr_reqs,ctx) = syscall_macro(206,nr_reqs,ctx)
          # Macro to call the `io_destroy` syscall.
          # @param [Register, Integer] ctx
          # @see https://www.man7.org/linux/man-pages/man2/io_destroy.2.html
          def io_destroy_syscall(ctx) = syscall_macro(207,ctx)
          # Macro to call the `io_getevents` syscall.
          # @param [Register, Integer] ctx_id
          # @param [Register, Integer] min_nr
          # @param [Register, Integer] nr
          # @param [Register, Integer] events
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/io_getevents.2.html
          def io_getevents_syscall(ctx_id,min_nr,nr,events,timeout) = syscall_macro(208,ctx_id,min_nr,nr,events,timeout)
          # Macro to call the `io_submit` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @see https://www.man7.org/linux/man-pages/man2/io_submit.2.html
          def io_submit_syscall(arg1,arg2,arg3) = syscall_macro(209,arg1,arg2,arg3)
          # Macro to call the `io_cancel` syscall.
          # @param [Register, Integer] ctx_id
          # @param [Register, Integer] iocb
          # @param [Register, Integer] result
          # @see https://www.man7.org/linux/man-pages/man2/io_cancel.2.html
          def io_cancel_syscall(ctx_id,iocb,result) = syscall_macro(210,ctx_id,iocb,result)
          # Macro to call the `get_thread_area` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/get_thread_area.2.html
          def get_thread_area_syscall = syscall_macro(211)
          # Macro to call the `lookup_dcookie` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/lookup_dcookie.2.html
          def lookup_dcookie_syscall = syscall_macro(212)
          # Macro to call the `epoll_create` syscall.
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/epoll_create.2.html
          def epoll_create_syscall(size) = syscall_macro(213,size)
          # Macro to call the `epoll_ctl_old` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/epoll_ctl_old.2.html
          def epoll_ctl_old_syscall = syscall_macro(214)
          # Macro to call the `epoll_wait_old` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/epoll_wait_old.2.html
          def epoll_wait_old_syscall = syscall_macro(215)
          # Macro to call the `remap_file_pages` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] size
          # @param [Register, Integer] prot
          # @param [Register, Integer] pgoff
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/remap_file_pages.2.html
          def remap_file_pages_syscall(start,size,prot,pgoff,flags) = syscall_macro(216,start,size,prot,pgoff,flags)
          # Macro to call the `getdents64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] dirent
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/getdents64.2.html
          def getdents64_syscall(fd,dirent,count) = syscall_macro(217,fd,dirent,count)
          # Macro to call the `set_tid_address` syscall.
          # @param [Register, Integer] tidptr
          # @see https://www.man7.org/linux/man-pages/man2/set_tid_address.2.html
          def set_tid_address_syscall(tidptr) = syscall_macro(218,tidptr)
          # Macro to call the `restart_syscall` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/restart_syscall.2.html
          def restart_syscall_syscall = syscall_macro(219)
          # Macro to call the `semtimedop` syscall.
          # @param [Register, Integer] semid
          # @param [Register, Integer] sops
          # @param [Register, Integer] nsops
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/semtimedop.2.html
          def semtimedop_syscall(semid,sops,nsops,timeout) = syscall_macro(220,semid,sops,nsops,timeout)
          # Macro to call the `fadvise64` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] len
          # @param [Register, Integer] advice
          # @see https://www.man7.org/linux/man-pages/man2/fadvise64.2.html
          def fadvise64_syscall(fd,offset,len,advice) = syscall_macro(221,fd,offset,len,advice)
          # Macro to call the `timer_create` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] timer_event_spec
          # @param [Register, Integer] created_timer_id
          # @see https://www.man7.org/linux/man-pages/man2/timer_create.2.html
          def timer_create_syscall(which_clock,timer_event_spec,created_timer_id) = syscall_macro(222,which_clock,timer_event_spec,created_timer_id)
          # Macro to call the `timer_settime` syscall.
          # @param [Register, Integer] timer_id
          # @param [Register, Integer] flags
          # @param [Register, Integer] new_setting
          # @param [Register, Integer] old_setting
          # @see https://www.man7.org/linux/man-pages/man2/timer_settime.2.html
          def timer_settime_syscall(timer_id,flags,new_setting,old_setting) = syscall_macro(223,timer_id,flags,new_setting,old_setting)
          # Macro to call the `timer_gettime` syscall.
          # @param [Register, Integer] timer_id
          # @param [Register, Integer] setting
          # @see https://www.man7.org/linux/man-pages/man2/timer_gettime.2.html
          def timer_gettime_syscall(timer_id,setting) = syscall_macro(224,timer_id,setting)
          # Macro to call the `timer_getoverrun` syscall.
          # @param [Register, Integer] timer_id
          # @see https://www.man7.org/linux/man-pages/man2/timer_getoverrun.2.html
          def timer_getoverrun_syscall(timer_id) = syscall_macro(225,timer_id)
          # Macro to call the `timer_delete` syscall.
          # @param [Register, Integer] timer_id
          # @see https://www.man7.org/linux/man-pages/man2/timer_delete.2.html
          def timer_delete_syscall(timer_id) = syscall_macro(226,timer_id)
          # Macro to call the `clock_settime` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_settime.2.html
          def clock_settime_syscall(which_clock,tp) = syscall_macro(227,which_clock,tp)
          # Macro to call the `clock_gettime` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_gettime.2.html
          def clock_gettime_syscall(which_clock,tp) = syscall_macro(228,which_clock,tp)
          # Macro to call the `clock_getres` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tp
          # @see https://www.man7.org/linux/man-pages/man2/clock_getres.2.html
          def clock_getres_syscall(which_clock,tp) = syscall_macro(229,which_clock,tp)
          # Macro to call the `clock_nanosleep` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] flags
          # @param [Register, Integer] rqtp
          # @param [Register, Integer] rmtp
          # @see https://www.man7.org/linux/man-pages/man2/clock_nanosleep.2.html
          def clock_nanosleep_syscall(which_clock,flags,rqtp,rmtp) = syscall_macro(230,which_clock,flags,rqtp,rmtp)
          # Macro to call the `exit_group` syscall.
          # @param [Register, Integer] error_code
          # @see https://www.man7.org/linux/man-pages/man2/exit_group.2.html
          def exit_group_syscall(error_code) = syscall_macro(231,error_code)
          # Macro to call the `epoll_wait` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] events
          # @param [Register, Integer] maxevents
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/epoll_wait.2.html
          def epoll_wait_syscall(epfd,events,maxevents,timeout) = syscall_macro(232,epfd,events,maxevents,timeout)
          # Macro to call the `epoll_ctl` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] op
          # @param [Register, Integer] fd
          # @param [Register, Integer] event
          # @see https://www.man7.org/linux/man-pages/man2/epoll_ctl.2.html
          def epoll_ctl_syscall(epfd,op,fd,event) = syscall_macro(233,epfd,op,fd,event)
          # Macro to call the `tgkill` syscall.
          # @param [Register, Integer] tgid
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/tgkill.2.html
          def tgkill_syscall(tgid,pid,sig) = syscall_macro(234,tgid,pid,sig)
          # Macro to call the `utimes` syscall.
          # @param [Register, Integer] filename
          # @param [Register, Integer] utimes
          # @see https://www.man7.org/linux/man-pages/man2/utimes.2.html
          def utimes_syscall(filename,utimes) = syscall_macro(235,filename,utimes)
          # Macro to call the `vserver` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/vserver.2.html
          def vserver_syscall = syscall_macro(236)
          # Macro to call the `mbind` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] mode
          # @param [Register, Integer] nmask
          # @param [Register, Integer] maxnode
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mbind.2.html
          def mbind_syscall(start,len,mode,nmask,maxnode,flags) = syscall_macro(237,start,len,mode,nmask,maxnode,flags)
          # Macro to call the `set_mempolicy` syscall.
          # @param [Register, Integer] mode
          # @param [Register, Integer] nmask
          # @param [Register, Integer] maxnode
          # @see https://www.man7.org/linux/man-pages/man2/set_mempolicy.2.html
          def set_mempolicy_syscall(mode,nmask,maxnode) = syscall_macro(238,mode,nmask,maxnode)
          # Macro to call the `get_mempolicy` syscall.
          # @param [Register, Integer] policy
          # @param [Register, Integer] nmask
          # @param [Register, Integer] maxnode
          # @param [Register, Integer] addr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/get_mempolicy.2.html
          def get_mempolicy_syscall(policy,nmask,maxnode,addr,flags) = syscall_macro(239,policy,nmask,maxnode,addr,flags)
          # Macro to call the `mq_open` syscall.
          # @param [Register, Integer] name
          # @param [Register, Integer] oflag
          # @param [Register, Integer] mode
          # @param [Register, Integer] attr
          # @see https://www.man7.org/linux/man-pages/man2/mq_open.2.html
          def mq_open_syscall(name,oflag,mode,attr) = syscall_macro(240,name,oflag,mode,attr)
          # Macro to call the `mq_unlink` syscall.
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/mq_unlink.2.html
          def mq_unlink_syscall(name) = syscall_macro(241,name)
          # Macro to call the `mq_timedsend` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] msg_prio
          # @param [Register, Integer] abs_timeout
          # @see https://www.man7.org/linux/man-pages/man2/mq_timedsend.2.html
          def mq_timedsend_syscall(mqdes,msg_ptr,msg_len,msg_prio,abs_timeout) = syscall_macro(242,mqdes,msg_ptr,msg_len,msg_prio,abs_timeout)
          # Macro to call the `mq_timedreceive` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] msg_ptr
          # @param [Register, Integer] msg_len
          # @param [Register, Integer] msg_prio
          # @param [Register, Integer] abs_timeout
          # @see https://www.man7.org/linux/man-pages/man2/mq_timedreceive.2.html
          def mq_timedreceive_syscall(mqdes,msg_ptr,msg_len,msg_prio,abs_timeout) = syscall_macro(243,mqdes,msg_ptr,msg_len,msg_prio,abs_timeout)
          # Macro to call the `mq_notify` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] notification
          # @see https://www.man7.org/linux/man-pages/man2/mq_notify.2.html
          def mq_notify_syscall(mqdes,notification) = syscall_macro(244,mqdes,notification)
          # Macro to call the `mq_getsetattr` syscall.
          # @param [Register, Integer] mqdes
          # @param [Register, Integer] mqstat
          # @param [Register, Integer] omqstat
          # @see https://www.man7.org/linux/man-pages/man2/mq_getsetattr.2.html
          def mq_getsetattr_syscall(mqdes,mqstat,omqstat) = syscall_macro(245,mqdes,mqstat,omqstat)
          # Macro to call the `kexec_load` syscall.
          # @param [Register, Integer] entry
          # @param [Register, Integer] nr_segments
          # @param [Register, Integer] segments
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/kexec_load.2.html
          def kexec_load_syscall(entry,nr_segments,segments,flags) = syscall_macro(246,entry,nr_segments,segments,flags)
          # Macro to call the `waitid` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] pid
          # @param [Register, Integer] infop
          # @param [Register, Integer] options
          # @param [Register, Integer] ru
          # @see https://www.man7.org/linux/man-pages/man2/waitid.2.html
          def waitid_syscall(which,pid,infop,options,ru) = syscall_macro(247,which,pid,infop,options,ru)
          # Macro to call the `add_key` syscall.
          # @param [Register, Integer] _type
          # @param [Register, Integer] _description
          # @param [Register, Integer] _payload
          # @param [Register, Integer] plen
          # @param [Register, Integer] destringid
          # @see https://www.man7.org/linux/man-pages/man2/add_key.2.html
          def add_key_syscall(_type,_description,_payload,plen,destringid) = syscall_macro(248,_type,_description,_payload,plen,destringid)
          # Macro to call the `request_key` syscall.
          # @param [Register, Integer] _type
          # @param [Register, Integer] _description
          # @param [Register, Integer] _callout_info
          # @param [Register, Integer] destringid
          # @see https://www.man7.org/linux/man-pages/man2/request_key.2.html
          def request_key_syscall(_type,_description,_callout_info,destringid) = syscall_macro(249,_type,_description,_callout_info,destringid)
          # Macro to call the `keyctl` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/keyctl.2.html
          def keyctl_syscall(cmd,arg2,arg3,arg4,arg5) = syscall_macro(250,cmd,arg2,arg3,arg4,arg5)
          # Macro to call the `ioprio_set` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @param [Register, Integer] ioprio
          # @see https://www.man7.org/linux/man-pages/man2/ioprio_set.2.html
          def ioprio_set_syscall(which,who,ioprio) = syscall_macro(251,which,who,ioprio)
          # Macro to call the `ioprio_get` syscall.
          # @param [Register, Integer] which
          # @param [Register, Integer] who
          # @see https://www.man7.org/linux/man-pages/man2/ioprio_get.2.html
          def ioprio_get_syscall(which,who) = syscall_macro(252,which,who)
          # Macro to call the `inotify_init` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/inotify_init.2.html
          def inotify_init_syscall = syscall_macro(253)
          # Macro to call the `inotify_add_watch` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] path
          # @param [Register, Integer] mask
          # @see https://www.man7.org/linux/man-pages/man2/inotify_add_watch.2.html
          def inotify_add_watch_syscall(fd,path,mask) = syscall_macro(254,fd,path,mask)
          # Macro to call the `inotify_rm_watch` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] wd
          # @see https://www.man7.org/linux/man-pages/man2/inotify_rm_watch.2.html
          def inotify_rm_watch_syscall(fd,wd) = syscall_macro(255,fd,wd)
          # Macro to call the `migrate_pages` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] maxnode
          # @param [Register, Integer] from
          # @param [Register, Integer] to
          # @see https://www.man7.org/linux/man-pages/man2/migrate_pages.2.html
          def migrate_pages_syscall(pid,maxnode,from,to) = syscall_macro(256,pid,maxnode,from,to)
          # Macro to call the `openat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] flags
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/openat.2.html
          def openat_syscall(dfd,filename,flags,mode) = syscall_macro(257,dfd,filename,flags,mode)
          # Macro to call the `mkdirat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] pathname
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/mkdirat.2.html
          def mkdirat_syscall(dfd,pathname,mode) = syscall_macro(258,dfd,pathname,mode)
          # Macro to call the `mknodat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] dev
          # @see https://www.man7.org/linux/man-pages/man2/mknodat.2.html
          def mknodat_syscall(dfd,filename,mode,dev) = syscall_macro(259,dfd,filename,mode,dev)
          # Macro to call the `fchownat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] user
          # @param [Register, Integer] group
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/fchownat.2.html
          def fchownat_syscall(dfd,filename,user,group,flag) = syscall_macro(260,dfd,filename,user,group,flag)
          # Macro to call the `futimesat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] utimes
          # @see https://www.man7.org/linux/man-pages/man2/futimesat.2.html
          def futimesat_syscall(dfd,filename,utimes) = syscall_macro(261,dfd,filename,utimes)
          # Macro to call the `newfstatat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] statbuf
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/newfstatat.2.html
          def newfstatat_syscall(dfd,filename,statbuf,flag) = syscall_macro(262,dfd,filename,statbuf,flag)
          # Macro to call the `unlinkat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] pathname
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/unlinkat.2.html
          def unlinkat_syscall(dfd,pathname,flag) = syscall_macro(263,dfd,pathname,flag)
          # Macro to call the `renameat` syscall.
          # @param [Register, Integer] olddfd
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/renameat.2.html
          def renameat_syscall(olddfd,oldname,newdfd,newname) = syscall_macro(264,olddfd,oldname,newdfd,newname)
          # Macro to call the `linkat` syscall.
          # @param [Register, Integer] olddfd
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/linkat.2.html
          def linkat_syscall(olddfd,oldname,newdfd,newname,flags) = syscall_macro(265,olddfd,oldname,newdfd,newname,flags)
          # Macro to call the `symlinkat` syscall.
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @see https://www.man7.org/linux/man-pages/man2/symlinkat.2.html
          def symlinkat_syscall(oldname,newdfd,newname) = syscall_macro(266,oldname,newdfd,newname)
          # Macro to call the `readlinkat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] buf
          # @param [Register, Integer] bufsiz
          # @see https://www.man7.org/linux/man-pages/man2/readlinkat.2.html
          def readlinkat_syscall(dfd,path,buf,bufsiz) = syscall_macro(267,dfd,path,buf,bufsiz)
          # Macro to call the `fchmodat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/fchmodat.2.html
          def fchmodat_syscall(dfd,filename,mode) = syscall_macro(268,dfd,filename,mode)
          # Macro to call the `faccessat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @see https://www.man7.org/linux/man-pages/man2/faccessat.2.html
          def faccessat_syscall(dfd,filename,mode) = syscall_macro(269,dfd,filename,mode)
          # Macro to call the `pselect6` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @param [Register, Integer] arg6
          # @see https://www.man7.org/linux/man-pages/man2/pselect6.2.html
          def pselect6_syscall(arg1,arg2,arg3,arg4,arg5,arg6) = syscall_macro(270,arg1,arg2,arg3,arg4,arg5,arg6)
          # Macro to call the `ppoll` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @param [Register, Integer] arg5
          # @see https://www.man7.org/linux/man-pages/man2/ppoll.2.html
          def ppoll_syscall(arg1,arg2,arg3,arg4,arg5) = syscall_macro(271,arg1,arg2,arg3,arg4,arg5)
          # Macro to call the `unshare` syscall.
          # @param [Register, Integer] unshare_flags
          # @see https://www.man7.org/linux/man-pages/man2/unshare.2.html
          def unshare_syscall(unshare_flags) = syscall_macro(272,unshare_flags)
          # Macro to call the `set_robust_list` syscall.
          # @param [Register, Integer] head
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/set_robust_list.2.html
          def set_robust_list_syscall(head,len) = syscall_macro(273,head,len)
          # Macro to call the `get_robust_list` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] head_ptr
          # @param [Register, Integer] len_ptr
          # @see https://www.man7.org/linux/man-pages/man2/get_robust_list.2.html
          def get_robust_list_syscall(pid,head_ptr,len_ptr) = syscall_macro(274,pid,head_ptr,len_ptr)
          # Macro to call the `splice` syscall.
          # @param [Register, Integer] fd_in
          # @param [Register, Integer] off_in
          # @param [Register, Integer] fd_out
          # @param [Register, Integer] off_out
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/splice.2.html
          def splice_syscall(fd_in,off_in,fd_out,off_out,len,flags) = syscall_macro(275,fd_in,off_in,fd_out,off_out,len,flags)
          # Macro to call the `tee` syscall.
          # @param [Register, Integer] fdin
          # @param [Register, Integer] fdout
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/tee.2.html
          def tee_syscall(fdin,fdout,len,flags) = syscall_macro(276,fdin,fdout,len,flags)
          # Macro to call the `sync_file_range` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] offset
          # @param [Register, Integer] nbytes
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sync_file_range.2.html
          def sync_file_range_syscall(fd,offset,nbytes,flags) = syscall_macro(277,fd,offset,nbytes,flags)
          # Macro to call the `vmsplice` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] iov
          # @param [Register, Integer] nr_segs
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/vmsplice.2.html
          def vmsplice_syscall(fd,iov,nr_segs,flags) = syscall_macro(278,fd,iov,nr_segs,flags)
          # Macro to call the `move_pages` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] nr_pages
          # @param [Register, Integer] pages
          # @param [Register, Integer] nodes
          # @param [Register, Integer] status
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/move_pages.2.html
          def move_pages_syscall(pid,nr_pages,pages,nodes,status,flags) = syscall_macro(279,pid,nr_pages,pages,nodes,status,flags)
          # Macro to call the `utimensat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] utimes
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/utimensat.2.html
          def utimensat_syscall(dfd,filename,utimes,flags) = syscall_macro(280,dfd,filename,utimes,flags)
          # Macro to call the `epoll_pwait` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] events
          # @param [Register, Integer] maxevents
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sigmask
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/epoll_pwait.2.html
          def epoll_pwait_syscall(epfd,events,maxevents,timeout,sigmask,sigsetsize) = syscall_macro(281,epfd,events,maxevents,timeout,sigmask,sigsetsize)
          # Macro to call the `signalfd` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] user_mask
          # @param [Register, Integer] sizemask
          # @see https://www.man7.org/linux/man-pages/man2/signalfd.2.html
          def signalfd_syscall(ufd,user_mask,sizemask) = syscall_macro(282,ufd,user_mask,sizemask)
          # Macro to call the `timerfd_create` syscall.
          # @param [Register, Integer] clockid
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_create.2.html
          def timerfd_create_syscall(clockid,flags) = syscall_macro(283,clockid,flags)
          # Macro to call the `eventfd` syscall.
          # @param [Register, Integer] count
          # @see https://www.man7.org/linux/man-pages/man2/eventfd.2.html
          def eventfd_syscall(count) = syscall_macro(284,count)
          # Macro to call the `fallocate` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] mode
          # @param [Register, Integer] offset
          # @param [Register, Integer] len
          # @see https://www.man7.org/linux/man-pages/man2/fallocate.2.html
          def fallocate_syscall(fd,mode,offset,len) = syscall_macro(285,fd,mode,offset,len)
          # Macro to call the `timerfd_settime` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] flags
          # @param [Register, Integer] utmr
          # @param [Register, Integer] otmr
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_settime.2.html
          def timerfd_settime_syscall(ufd,flags,utmr,otmr) = syscall_macro(286,ufd,flags,utmr,otmr)
          # Macro to call the `timerfd_gettime` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] otmr
          # @see https://www.man7.org/linux/man-pages/man2/timerfd_gettime.2.html
          def timerfd_gettime_syscall(ufd,otmr) = syscall_macro(287,ufd,otmr)
          # Macro to call the `accept4` syscall.
          # @param [Register, Integer] arg1
          # @param [Register, Integer] arg2
          # @param [Register, Integer] arg3
          # @param [Register, Integer] arg4
          # @see https://www.man7.org/linux/man-pages/man2/accept4.2.html
          def accept4_syscall(arg1,arg2,arg3,arg4) = syscall_macro(288,arg1,arg2,arg3,arg4)
          # Macro to call the `signalfd4` syscall.
          # @param [Register, Integer] ufd
          # @param [Register, Integer] user_mask
          # @param [Register, Integer] sizemask
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/signalfd4.2.html
          def signalfd4_syscall(ufd,user_mask,sizemask,flags) = syscall_macro(289,ufd,user_mask,sizemask,flags)
          # Macro to call the `eventfd2` syscall.
          # @param [Register, Integer] count
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/eventfd2.2.html
          def eventfd2_syscall(count,flags) = syscall_macro(290,count,flags)
          # Macro to call the `epoll_create1` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/epoll_create1.2.html
          def epoll_create1_syscall(flags) = syscall_macro(291,flags)
          # Macro to call the `dup3` syscall.
          # @param [Register, Integer] oldfd
          # @param [Register, Integer] newfd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/dup3.2.html
          def dup3_syscall(oldfd,newfd,flags) = syscall_macro(292,oldfd,newfd,flags)
          # Macro to call the `pipe2` syscall.
          # @param [Register, Integer] fildes
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pipe2.2.html
          def pipe2_syscall(fildes,flags) = syscall_macro(293,fildes,flags)
          # Macro to call the `inotify_init1` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/inotify_init1.2.html
          def inotify_init1_syscall(flags) = syscall_macro(294,flags)
          # Macro to call the `preadv` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @see https://www.man7.org/linux/man-pages/man2/preadv.2.html
          def preadv_syscall(fd,vec,vlen,pos_l,pos_h) = syscall_macro(295,fd,vec,vlen,pos_l,pos_h)
          # Macro to call the `pwritev` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @see https://www.man7.org/linux/man-pages/man2/pwritev.2.html
          def pwritev_syscall(fd,vec,vlen,pos_l,pos_h) = syscall_macro(296,fd,vec,vlen,pos_l,pos_h)
          # Macro to call the `rt_tgsigqueueinfo` syscall.
          # @param [Register, Integer] tgid
          # @param [Register, Integer] pid
          # @param [Register, Integer] sig
          # @param [Register, Integer] uinfo
          # @see https://www.man7.org/linux/man-pages/man2/rt_tgsigqueueinfo.2.html
          def rt_tgsigqueueinfo_syscall(tgid,pid,sig,uinfo) = syscall_macro(297,tgid,pid,sig,uinfo)
          # Macro to call the `perf_event_open` syscall.
          # @param [Register, Integer] attr_uptr
          # @param [Register, Integer] pid
          # @param [Register, Integer] cpu
          # @param [Register, Integer] group_fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/perf_event_open.2.html
          def perf_event_open_syscall(attr_uptr,pid,cpu,group_fd,flags) = syscall_macro(298,attr_uptr,pid,cpu,group_fd,flags)
          # Macro to call the `recvmmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] vlen
          # @param [Register, Integer] flags
          # @param [Register, Integer] timeout
          # @see https://www.man7.org/linux/man-pages/man2/recvmmsg.2.html
          def recvmmsg_syscall(fd,msg,vlen,flags,timeout) = syscall_macro(299,fd,msg,vlen,flags,timeout)
          # Macro to call the `fanotify_init` syscall.
          # @param [Register, Integer] flags
          # @param [Register, Integer] event_f_flags
          # @see https://www.man7.org/linux/man-pages/man2/fanotify_init.2.html
          def fanotify_init_syscall(flags,event_f_flags) = syscall_macro(300,flags,event_f_flags)
          # Macro to call the `fanotify_mark` syscall.
          # @param [Register, Integer] fanotify_fd
          # @param [Register, Integer] flags
          # @param [Register, Integer] mask
          # @param [Register, Integer] fd
          # @param [Register, Integer] pathname
          # @see https://www.man7.org/linux/man-pages/man2/fanotify_mark.2.html
          def fanotify_mark_syscall(fanotify_fd,flags,mask,fd,pathname) = syscall_macro(301,fanotify_fd,flags,mask,fd,pathname)
          # Macro to call the `prlimit64` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] resource
          # @param [Register, Integer] new_rlim
          # @param [Register, Integer] old_rlim
          # @see https://www.man7.org/linux/man-pages/man2/prlimit64.2.html
          def prlimit64_syscall(pid,resource,new_rlim,old_rlim) = syscall_macro(302,pid,resource,new_rlim,old_rlim)
          # Macro to call the `name_to_handle_at` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] name
          # @param [Register, Integer] handle
          # @param [Register, Integer] mnt_id
          # @param [Register, Integer] flag
          # @see https://www.man7.org/linux/man-pages/man2/name_to_handle_at.2.html
          def name_to_handle_at_syscall(dfd,name,handle,mnt_id,flag) = syscall_macro(303,dfd,name,handle,mnt_id,flag)
          # Macro to call the `open_by_handle_at` syscall.
          # @param [Register, Integer] mountdirfd
          # @param [Register, Integer] handle
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/open_by_handle_at.2.html
          def open_by_handle_at_syscall(mountdirfd,handle,flags) = syscall_macro(304,mountdirfd,handle,flags)
          # Macro to call the `clock_adjtime` syscall.
          # @param [Register, Integer] which_clock
          # @param [Register, Integer] tx
          # @see https://www.man7.org/linux/man-pages/man2/clock_adjtime.2.html
          def clock_adjtime_syscall(which_clock,tx) = syscall_macro(305,which_clock,tx)
          # Macro to call the `syncfs` syscall.
          # @param [Register, Integer] fd
          # @see https://www.man7.org/linux/man-pages/man2/syncfs.2.html
          def syncfs_syscall(fd) = syscall_macro(306,fd)
          # Macro to call the `sendmmsg` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] msg
          # @param [Register, Integer] vlen
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sendmmsg.2.html
          def sendmmsg_syscall(fd,msg,vlen,flags) = syscall_macro(307,fd,msg,vlen,flags)
          # Macro to call the `setns` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] nstype
          # @see https://www.man7.org/linux/man-pages/man2/setns.2.html
          def setns_syscall(fd,nstype) = syscall_macro(308,fd,nstype)
          # Macro to call the `getcpu` syscall.
          # @param [Register, Integer] cpu
          # @param [Register, Integer] node
          # @param [Register, Integer] cache
          # @see https://www.man7.org/linux/man-pages/man2/getcpu.2.html
          def getcpu_syscall(cpu,node,cache) = syscall_macro(309,cpu,node,cache)
          # Macro to call the `process_vm_readv` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lvec
          # @param [Register, Integer] liovcnt
          # @param [Register, Integer] rvec
          # @param [Register, Integer] riovcnt
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_vm_readv.2.html
          def process_vm_readv_syscall(pid,lvec,liovcnt,rvec,riovcnt,flags) = syscall_macro(310,pid,lvec,liovcnt,rvec,riovcnt,flags)
          # Macro to call the `process_vm_writev` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] lvec
          # @param [Register, Integer] liovcnt
          # @param [Register, Integer] rvec
          # @param [Register, Integer] riovcnt
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_vm_writev.2.html
          def process_vm_writev_syscall(pid,lvec,liovcnt,rvec,riovcnt,flags) = syscall_macro(311,pid,lvec,liovcnt,rvec,riovcnt,flags)
          # Macro to call the `kcmp` syscall.
          # @param [Register, Integer] pid1
          # @param [Register, Integer] pid2
          # @param [Register, Integer] type
          # @param [Register, Integer] idx1
          # @param [Register, Integer] idx2
          # @see https://www.man7.org/linux/man-pages/man2/kcmp.2.html
          def kcmp_syscall(pid1,pid2,type,idx1,idx2) = syscall_macro(312,pid1,pid2,type,idx1,idx2)
          # Macro to call the `finit_module` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] uargs
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/finit_module.2.html
          def finit_module_syscall(fd,uargs,flags) = syscall_macro(313,fd,uargs,flags)
          # Macro to call the `sched_setattr` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] attr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sched_setattr.2.html
          def sched_setattr_syscall(pid,attr,flags) = syscall_macro(314,pid,attr,flags)
          # Macro to call the `sched_getattr` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] attr
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/sched_getattr.2.html
          def sched_getattr_syscall(pid,attr,size,flags) = syscall_macro(315,pid,attr,size,flags)
          # Macro to call the `renameat2` syscall.
          # @param [Register, Integer] olddfd
          # @param [Register, Integer] oldname
          # @param [Register, Integer] newdfd
          # @param [Register, Integer] newname
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/renameat2.2.html
          def renameat2_syscall(olddfd,oldname,newdfd,newname,flags) = syscall_macro(316,olddfd,oldname,newdfd,newname,flags)
          # Macro to call the `seccomp` syscall.
          # @param [Register, Integer] op
          # @param [Register, Integer] flags
          # @param [Register, Integer] uargs
          # @see https://www.man7.org/linux/man-pages/man2/seccomp.2.html
          def seccomp_syscall(op,flags,uargs) = syscall_macro(317,op,flags,uargs)
          # Macro to call the `getrandom` syscall.
          # @param [Register, Integer] buf
          # @param [Register, Integer] count
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/getrandom.2.html
          def getrandom_syscall(buf,count,flags) = syscall_macro(318,buf,count,flags)
          # Macro to call the `memfd_create` syscall.
          # @param [Register, Integer] uname_ptr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/memfd_create.2.html
          def memfd_create_syscall(uname_ptr,flags) = syscall_macro(319,uname_ptr,flags)
          # Macro to call the `kexec_file_load` syscall.
          # @param [Register, Integer] kernel_fd
          # @param [Register, Integer] initrd_fd
          # @param [Register, Integer] cmdline_len
          # @param [Register, Integer] cmdline_ptr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/kexec_file_load.2.html
          def kexec_file_load_syscall(kernel_fd,initrd_fd,cmdline_len,cmdline_ptr,flags) = syscall_macro(320,kernel_fd,initrd_fd,cmdline_len,cmdline_ptr,flags)
          # Macro to call the `bpf` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] attr
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/bpf.2.html
          def bpf_syscall(cmd,attr,size) = syscall_macro(321,cmd,attr,size)
          # Macro to call the `execveat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] argv
          # @param [Register, Integer] envp
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/execveat.2.html
          def execveat_syscall(dfd,filename,argv,envp,flags) = syscall_macro(322,dfd,filename,argv,envp,flags)
          # Macro to call the `userfaultfd` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/userfaultfd.2.html
          def userfaultfd_syscall(flags) = syscall_macro(323,flags)
          # Macro to call the `membarrier` syscall.
          # @param [Register, Integer] cmd
          # @param [Register, Integer] flags
          # @param [Register, Integer] cpu_id
          # @see https://www.man7.org/linux/man-pages/man2/membarrier.2.html
          def membarrier_syscall(cmd,flags,cpu_id) = syscall_macro(324,cmd,flags,cpu_id)
          # Macro to call the `mlock2` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mlock2.2.html
          def mlock2_syscall(start,len,flags) = syscall_macro(325,start,len,flags)
          # Macro to call the `copy_file_range` syscall.
          # @param [Register, Integer] fd_in
          # @param [Register, Integer] off_in
          # @param [Register, Integer] fd_out
          # @param [Register, Integer] off_out
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/copy_file_range.2.html
          def copy_file_range_syscall(fd_in,off_in,fd_out,off_out,len,flags) = syscall_macro(326,fd_in,off_in,fd_out,off_out,len,flags)
          # Macro to call the `preadv2` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/preadv2.2.html
          def preadv2_syscall(fd,vec,vlen,pos_l,pos_h,flags) = syscall_macro(327,fd,vec,vlen,pos_l,pos_h,flags)
          # Macro to call the `pwritev2` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] pos_l
          # @param [Register, Integer] pos_h
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pwritev2.2.html
          def pwritev2_syscall(fd,vec,vlen,pos_l,pos_h,flags) = syscall_macro(328,fd,vec,vlen,pos_l,pos_h,flags)
          # Macro to call the `pkey_mprotect` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] prot
          # @param [Register, Integer] pkey
          # @see https://www.man7.org/linux/man-pages/man2/pkey_mprotect.2.html
          def pkey_mprotect_syscall(start,len,prot,pkey) = syscall_macro(329,start,len,prot,pkey)
          # Macro to call the `pkey_alloc` syscall.
          # @param [Register, Integer] flags
          # @param [Register, Integer] init_val
          # @see https://www.man7.org/linux/man-pages/man2/pkey_alloc.2.html
          def pkey_alloc_syscall(flags,init_val) = syscall_macro(330,flags,init_val)
          # Macro to call the `pkey_free` syscall.
          # @param [Register, Integer] pkey
          # @see https://www.man7.org/linux/man-pages/man2/pkey_free.2.html
          def pkey_free_syscall(pkey) = syscall_macro(331,pkey)
          # Macro to call the `statx` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @param [Register, Integer] mask
          # @param [Register, Integer] buffer
          # @see https://www.man7.org/linux/man-pages/man2/statx.2.html
          def statx_syscall(dfd,path,flags,mask,buffer) = syscall_macro(332,dfd,path,flags,mask,buffer)
          # Macro to call the `io_pgetevents` syscall.
          # @param [Register, Integer] ctx_id
          # @param [Register, Integer] min_nr
          # @param [Register, Integer] nr
          # @param [Register, Integer] events
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/io_pgetevents.2.html
          def io_pgetevents_syscall(ctx_id,min_nr,nr,events,timeout,sig) = syscall_macro(333,ctx_id,min_nr,nr,events,timeout,sig)
          # Macro to call the `rseq` syscall.
          # @param [Register, Integer] rseq
          # @param [Register, Integer] rseq_len
          # @param [Register, Integer] flags
          # @param [Register, Integer] sig
          # @see https://www.man7.org/linux/man-pages/man2/rseq.2.html
          def rseq_syscall(rseq,rseq_len,flags,sig) = syscall_macro(334,rseq,rseq_len,flags,sig)
          # Macro to call the `uretprobe` syscall.
          # @see https://www.man7.org/linux/man-pages/man2/uretprobe.2.html
          def uretprobe_syscall = syscall_macro(335)
          # Macro to call the `pidfd_send_signal` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] sig
          # @param [Register, Integer] info
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pidfd_send_signal.2.html
          def pidfd_send_signal_syscall(pidfd,sig,info,flags) = syscall_macro(424,pidfd,sig,info,flags)
          # Macro to call the `io_uring_setup` syscall.
          # @param [Register, Integer] entries
          # @param [Register, Integer] p
          # @see https://www.man7.org/linux/man-pages/man2/io_uring_setup.2.html
          def io_uring_setup_syscall(entries,p) = syscall_macro(425,entries,p)
          # Macro to call the `io_uring_enter` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] to_submit
          # @param [Register, Integer] min_complete
          # @param [Register, Integer] flags
          # @param [Register, Integer] argp
          # @param [Register, Integer] argsz
          # @see https://www.man7.org/linux/man-pages/man2/io_uring_enter.2.html
          def io_uring_enter_syscall(fd,to_submit,min_complete,flags,argp,argsz) = syscall_macro(426,fd,to_submit,min_complete,flags,argp,argsz)
          # Macro to call the `io_uring_register` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] op
          # @param [Register, Integer] arg
          # @param [Register, Integer] nr_args
          # @see https://www.man7.org/linux/man-pages/man2/io_uring_register.2.html
          def io_uring_register_syscall(fd,op,arg,nr_args) = syscall_macro(427,fd,op,arg,nr_args)
          # Macro to call the `open_tree` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/open_tree.2.html
          def open_tree_syscall(dfd,path,flags) = syscall_macro(428,dfd,path,flags)
          # Macro to call the `move_mount` syscall.
          # @param [Register, Integer] from_dfd
          # @param [Register, Integer] from_path
          # @param [Register, Integer] to_dfd
          # @param [Register, Integer] to_path
          # @param [Register, Integer] ms_flags
          # @see https://www.man7.org/linux/man-pages/man2/move_mount.2.html
          def move_mount_syscall(from_dfd,from_path,to_dfd,to_path,ms_flags) = syscall_macro(429,from_dfd,from_path,to_dfd,to_path,ms_flags)
          # Macro to call the `fsopen` syscall.
          # @param [Register, Integer] fs_name
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fsopen.2.html
          def fsopen_syscall(fs_name,flags) = syscall_macro(430,fs_name,flags)
          # Macro to call the `fsconfig` syscall.
          # @param [Register, Integer] fs_fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] key
          # @param [Register, Integer] value
          # @param [Register, Integer] aux
          # @see https://www.man7.org/linux/man-pages/man2/fsconfig.2.html
          def fsconfig_syscall(fs_fd,cmd,key,value,aux) = syscall_macro(431,fs_fd,cmd,key,value,aux)
          # Macro to call the `fsmount` syscall.
          # @param [Register, Integer] fs_fd
          # @param [Register, Integer] flags
          # @param [Register, Integer] ms_flags
          # @see https://www.man7.org/linux/man-pages/man2/fsmount.2.html
          def fsmount_syscall(fs_fd,flags,ms_flags) = syscall_macro(432,fs_fd,flags,ms_flags)
          # Macro to call the `fspick` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fspick.2.html
          def fspick_syscall(dfd,path,flags) = syscall_macro(433,dfd,path,flags)
          # Macro to call the `pidfd_open` syscall.
          # @param [Register, Integer] pid
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pidfd_open.2.html
          def pidfd_open_syscall(pid,flags) = syscall_macro(434,pid,flags)
          # Macro to call the `clone3` syscall.
          # @param [Register, Integer] uargs
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/clone3.2.html
          def clone3_syscall(uargs,size) = syscall_macro(435,uargs,size)
          # Macro to call the `close_range` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] max_fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/close_range.2.html
          def close_range_syscall(fd,max_fd,flags) = syscall_macro(436,fd,max_fd,flags)
          # Macro to call the `openat2` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] how
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/openat2.2.html
          def openat2_syscall(dfd,filename,how,size) = syscall_macro(437,dfd,filename,how,size)
          # Macro to call the `pidfd_getfd` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/pidfd_getfd.2.html
          def pidfd_getfd_syscall(pidfd,fd,flags) = syscall_macro(438,pidfd,fd,flags)
          # Macro to call the `faccessat2` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/faccessat2.2.html
          def faccessat2_syscall(dfd,filename,mode,flags) = syscall_macro(439,dfd,filename,mode,flags)
          # Macro to call the `process_madvise` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] vec
          # @param [Register, Integer] vlen
          # @param [Register, Integer] behavior
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_madvise.2.html
          def process_madvise_syscall(pidfd,vec,vlen,behavior,flags) = syscall_macro(440,pidfd,vec,vlen,behavior,flags)
          # Macro to call the `epoll_pwait2` syscall.
          # @param [Register, Integer] epfd
          # @param [Register, Integer] events
          # @param [Register, Integer] maxevents
          # @param [Register, Integer] timeout
          # @param [Register, Integer] sigmask
          # @param [Register, Integer] sigsetsize
          # @see https://www.man7.org/linux/man-pages/man2/epoll_pwait2.2.html
          def epoll_pwait2_syscall(epfd,events,maxevents,timeout,sigmask,sigsetsize) = syscall_macro(441,epfd,events,maxevents,timeout,sigmask,sigsetsize)
          # Macro to call the `mount_setattr` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @param [Register, Integer] uattr
          # @param [Register, Integer] usize
          # @see https://www.man7.org/linux/man-pages/man2/mount_setattr.2.html
          def mount_setattr_syscall(dfd,path,flags,uattr,usize) = syscall_macro(442,dfd,path,flags,uattr,usize)
          # Macro to call the `quotactl_fd` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cmd
          # @param [Register, Integer] id
          # @param [Register, Integer] addr
          # @see https://www.man7.org/linux/man-pages/man2/quotactl_fd.2.html
          def quotactl_fd_syscall(fd,cmd,id,addr) = syscall_macro(443,fd,cmd,id,addr)
          # Macro to call the `landlock_create_ruleset` syscall.
          # @param [Register, Integer] attr
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/landlock_create_ruleset.2.html
          def landlock_create_ruleset_syscall(attr,size,flags) = syscall_macro(444,attr,size,flags)
          # Macro to call the `landlock_add_rule` syscall.
          # @param [Register, Integer] ruleset_fd
          # @param [Register, Integer] rule_type
          # @param [Register, Integer] rule_attr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/landlock_add_rule.2.html
          def landlock_add_rule_syscall(ruleset_fd,rule_type,rule_attr,flags) = syscall_macro(445,ruleset_fd,rule_type,rule_attr,flags)
          # Macro to call the `landlock_restrict_self` syscall.
          # @param [Register, Integer] ruleset_fd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/landlock_restrict_self.2.html
          def landlock_restrict_self_syscall(ruleset_fd,flags) = syscall_macro(446,ruleset_fd,flags)
          # Macro to call the `memfd_secret` syscall.
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/memfd_secret.2.html
          def memfd_secret_syscall(flags) = syscall_macro(447,flags)
          # Macro to call the `process_mrelease` syscall.
          # @param [Register, Integer] pidfd
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/process_mrelease.2.html
          def process_mrelease_syscall(pidfd,flags) = syscall_macro(448,pidfd,flags)
          # Macro to call the `futex_waitv` syscall.
          # @param [Register, Integer] waiters
          # @param [Register, Integer] nr_futexes
          # @param [Register, Integer] flags
          # @param [Register, Integer] timeout
          # @param [Register, Integer] clockid
          # @see https://www.man7.org/linux/man-pages/man2/futex_waitv.2.html
          def futex_waitv_syscall(waiters,nr_futexes,flags,timeout,clockid) = syscall_macro(449,waiters,nr_futexes,flags,timeout,clockid)
          # Macro to call the `set_mempolicy_home_node` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] home_node
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/set_mempolicy_home_node.2.html
          def set_mempolicy_home_node_syscall(start,len,home_node,flags) = syscall_macro(450,start,len,home_node,flags)
          # Macro to call the `cachestat` syscall.
          # @param [Register, Integer] fd
          # @param [Register, Integer] cstat_range
          # @param [Register, Integer] cstat
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/cachestat.2.html
          def cachestat_syscall(fd,cstat_range,cstat,flags) = syscall_macro(451,fd,cstat_range,cstat,flags)
          # Macro to call the `fchmodat2` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] filename
          # @param [Register, Integer] mode
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/fchmodat2.2.html
          def fchmodat2_syscall(dfd,filename,mode,flags) = syscall_macro(452,dfd,filename,mode,flags)
          # Macro to call the `map_shadow_stack` syscall.
          # @param [Register, Integer] addr
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/map_shadow_stack.2.html
          def map_shadow_stack_syscall(addr,size,flags) = syscall_macro(453,addr,size,flags)
          # Macro to call the `futex_wake` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] mask
          # @param [Register, Integer] nr
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/futex_wake.2.html
          def futex_wake_syscall(uaddr,mask,nr,flags) = syscall_macro(454,uaddr,mask,nr,flags)
          # Macro to call the `futex_wait` syscall.
          # @param [Register, Integer] uaddr
          # @param [Register, Integer] val
          # @param [Register, Integer] mask
          # @param [Register, Integer] flags
          # @param [Register, Integer] timespec
          # @param [Register, Integer] clockid
          # @see https://www.man7.org/linux/man-pages/man2/futex_wait.2.html
          def futex_wait_syscall(uaddr,val,mask,flags,timespec,clockid) = syscall_macro(455,uaddr,val,mask,flags,timespec,clockid)
          # Macro to call the `futex_requeue` syscall.
          # @param [Register, Integer] waiters
          # @param [Register, Integer] flags
          # @param [Register, Integer] nr_wake
          # @param [Register, Integer] nr_requeue
          # @see https://www.man7.org/linux/man-pages/man2/futex_requeue.2.html
          def futex_requeue_syscall(waiters,flags,nr_wake,nr_requeue) = syscall_macro(456,waiters,flags,nr_wake,nr_requeue)
          # Macro to call the `statmount` syscall.
          # @param [Register, Integer] req
          # @param [Register, Integer] buf
          # @param [Register, Integer] bufsize
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/statmount.2.html
          def statmount_syscall(req,buf,bufsize,flags) = syscall_macro(457,req,buf,bufsize,flags)
          # Macro to call the `listmount` syscall.
          # @param [Register, Integer] req
          # @param [Register, Integer] mnt_ids
          # @param [Register, Integer] nr_mnt_ids
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/listmount.2.html
          def listmount_syscall(req,mnt_ids,nr_mnt_ids,flags) = syscall_macro(458,req,mnt_ids,nr_mnt_ids,flags)
          # Macro to call the `lsm_get_self_attr` syscall.
          # @param [Register, Integer] attr
          # @param [Register, Integer] ctx
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsm_get_self_attr.2.html
          def lsm_get_self_attr_syscall(attr,ctx,size,flags) = syscall_macro(459,attr,ctx,size,flags)
          # Macro to call the `lsm_set_self_attr` syscall.
          # @param [Register, Integer] attr
          # @param [Register, Integer] ctx
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsm_set_self_attr.2.html
          def lsm_set_self_attr_syscall(attr,ctx,size,flags) = syscall_macro(460,attr,ctx,size,flags)
          # Macro to call the `lsm_list_modules` syscall.
          # @param [Register, Integer] ids
          # @param [Register, Integer] size
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/lsm_list_modules.2.html
          def lsm_list_modules_syscall(ids,size,flags) = syscall_macro(461,ids,size,flags)
          # Macro to call the `mseal` syscall.
          # @param [Register, Integer] start
          # @param [Register, Integer] len
          # @param [Register, Integer] flags
          # @see https://www.man7.org/linux/man-pages/man2/mseal.2.html
          def mseal_syscall(start,len,flags) = syscall_macro(462,start,len,flags)
          # Macro to call the `setxattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] name
          # @param [Register, Integer] args
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/setxattrat.2.html
          def setxattrat_syscall(dfd,path,at_flags,name,args,size) = syscall_macro(463,dfd,path,at_flags,name,args,size)
          # Macro to call the `getxattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] name
          # @param [Register, Integer] args
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/getxattrat.2.html
          def getxattrat_syscall(dfd,path,at_flags,name,args,size) = syscall_macro(464,dfd,path,at_flags,name,args,size)
          # Macro to call the `listxattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] list
          # @param [Register, Integer] size
          # @see https://www.man7.org/linux/man-pages/man2/listxattrat.2.html
          def listxattrat_syscall(dfd,path,at_flags,list,size) = syscall_macro(465,dfd,path,at_flags,list,size)
          # Macro to call the `removexattrat` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] at_flags
          # @param [Register, Integer] name
          # @see https://www.man7.org/linux/man-pages/man2/removexattrat.2.html
          def removexattrat_syscall(dfd,path,at_flags,name) = syscall_macro(466,dfd,path,at_flags,name)
          # Macro to call the `open_tree_attr` syscall.
          # @param [Register, Integer] dfd
          # @param [Register, Integer] path
          # @param [Register, Integer] flags
          # @param [Register, Integer] uattr
          # @param [Register, Integer] usize
          # @see https://www.man7.org/linux/man-pages/man2/open_tree_attr.2.html
          def open_tree_attr_syscall(dfd,path,flags,uattr,usize) = syscall_macro(467,dfd,path,flags,uattr,usize)
        end
      end
    end
  end
end
