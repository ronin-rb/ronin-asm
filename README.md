# ronin-asm

[![CI](https://github.com/ronin-rb/ronin-asm/actions/workflows/ruby.yml/badge.svg)](https://github.com/ronin-rb/ronin-asm/actions/workflows/ruby.yml)
[![Code Climate](https://codeclimate.com/github/ronin-rb/ronin-asm.svg)](https://codeclimate.com/github/ronin-rb/ronin-asm)
[![Gem Version](https://badge.fury.io/rb/ronin-asm.svg)](https://badge.fury.io/rb/ronin-asm)

* [Source](https://github.com/ronin-rb/ronin-asm)
* [Issues](https://github.com/ronin-rb/ronin-asm/issues)
* [Documentation](https://ronin-rb.dev/docs/ronin-asm/frames)
* [Discord](https://discord.gg/6WAb3PsVX9) |
  [Mastodon](https://infosec.exchange/@ronin_rb)

## Description

ronin-asm is a Ruby DSL for crafting Assembly programs and shellcode.

## Features

* Supports the x86 and x86-64 architectures.
* Implements nearly the *entire* x86 and x86-64 Instruction Set Architecture
  (ISA).
* Provides a Ruby DSL for representing Assembly that is nearly identical
  to Intel Assembly syntax.
* Supports syscalls for Linux, FreeBSD, NetBSD, OpenBSD, and macOS.
* Implements a pure-Ruby multi-architecture multi-pass Assembler that produces
  100% identical Assembly code compared to GNU Assembler (GAS).
* Supports converting programs back into Assembly syntax (Intel or ATT).
* Has 95% documentation coverage.
* Has 99% test coverage.

### Limitations

* Does not currently support Privileged-Mode instructions or registers.
* Does not currently support Segment Offset Addressing.
* Does not currently support defining `.data` or `.bss` sections.
* Does not currently support creating ELF files.
* Does not currently support most NASM or GNU Assembler (GAS) builtin macros.

## Synopsis

```
Usage: ronin-asm [options] [COMMAND [ARGS...]]

Options:
    -V, --version                    Prints the version and exits
    -h, --help                       Print help information

Arguments:
    [COMMAND]                        The command name to run
    [ARGS ...]                       Additional arguments for the command

Commands:
    completion
    help
    irb
```

## Examples

Create x86-64 shellcode:

```ruby
asm = Ronin::ASM.new do
  xor rdx, rdx                # set rdx (envp) to NULL
  mov rbx, 0x68732f6e69622f2f # set rbx to "//bin/sh"
  shr rbx, 8                  # add a \0 byte by shifting right one byte
  push rbx                    # push "/bin/sh\0" to the stack
  mov rdi, rsp                # rdi (pathname) points onto the stack
  push rdx                    # push NULL onto the stack
  push rdi                    # push pointer to pathname
  mov rsi, rsp                # rsi (argv) points to the stack
  mov al, 0x3b                # Linux x86-64 syscall number for execve()
  syscall                     # call execve(pathname,argv,envp)
end

payload = asm.assemble
# => "H1\xD2H\xBB//bin/shH\xC1\xEB\bSH\x89\xE7RWH\x89\xE6\xB0;\x0F\x05"
```

Create x86 shellcode:

```ruby
asm = Ronin::ASM.new(arch: :x86) do
  xor   eax, eax   # set eax to zero
  push  eax        # push a \0 byte onto the stack
  push  0x68732f2f # push "//sh" onto the stack
  push  0x6e69622f # push "/bin" onto the stack (note: stack grows down)
  mov   ebx, esp   # ebx (pathname) points to the stack
  push  eax        # push NULL onto the stack
  push  ebx        # push pointer to pathname
  mov   ecx, esp   # ecx (argv) points to the stack
  xor   edx, edx   # set edx (envp) to zero
  mov   al, 0xb    # Linux x86 syscall number for execve()
  int   0x80       # call execve(pathname,argv,envp)
end

payload = asm.assemble
# => "1\xC0Ph//shh/bin\x89\xE3PS\x89\xE11\xD2\xC6\xC0\v\xCD\x80"
```

### Immediate Operands

Immediate operands can be Integers or `nil`:

```ruby
mov rax, 0xff
mov rbx, nil
```

The size of the operand can also be specified explicitly:

```ruby
push byte(0xff)
push word(0xffff)
push dword(0xffffffff)
push qword(0xffffffffffffffff)
```

### Registers

All user-space registers for the architecture are defined as methods and can be
used as operands:

```ruby
mov al, bl
mov ax, bx
mov eax, ebx
mov rax, rbx

mov bpl, spl
mov bp, sp
mov ebp, esp
mov rbp, rsp

mov r15b, r14b
mov r15w, r14w
mov r15d, r14d
mov r15, r14

kmov k1, k2

movq mm0, mm1
movapd xmm0, xmm1
vmovapd ymm0, ymm1
vmovapd zmm0, zmm1
```

### Memory Operands

Memory operands can be expressed as arithmetic on registers:

```ruby
mov rbx, [rsp+10]
mov rbx, [rsp-10]
mov rbx, [rsp+rsi]
mov rbx, [rsp+(rsi*8)]
mov rbx, [rsp+(rsi*8)+10]
```

#### x86-64 RIP-relative Addressing

x86-64 RIP-relative or EIP-relative addressing is also supported:

```ruby
jmp [rip+10]
jmp [rip-10]

lea ebx, [eip+10]
lea ebx, [eip-10]
```

### Labels

Labels can be expressed with blocks:

```ruby
_loop do
  inc rax
  cmp al, 10
  jl _loop
end
```

### Variables

Pass variables into the Assembly program:

```ruby
Ronin::ASM.new(defines: {port: 1337}) do
  # ...
  mov ax, @port
  # ...
end
```

### Syscalls

Builtin syscall macros are provided for Linux, FreeBSD, NetBSD, OpenBSD, and
macOS. Specify the `os:` keyword argument to enable syscalls for the specified
OS:

```ruby
asm = Ronin::ASM.new(os: :linux) do
  # ...
  exit_syscall(42)            # call exit(42)
end
```

Registers can also be passed to syscall macros as arguments:

```ruby
Ronin::ASM.new(os: :linux) do
  xor rdx, rdx                # set rdx (envp) to NULL
  mov rbx, 0x68732f6e69622f2f # set rbx to "//bin/sh"
  shr rbx, 8                  # add a \0 byte by shifting right one byte
  push rbx                    # push "/bin/sh\0" to the stack
  mov rdi, rsp                # rdi (pathname) points onto the stack
  push rdx                    # push NULL onto the stack
  push rdi                    # push pointer to pathname
  mov rsi, rsp                # rsi (argv) points to the stack

  execve_syscall(rdi,rsi,rdx) # call execve(pathname,argv,envp)
end
```

### ASM Output

Output a [Ronin::ASM::Program] object to ASM syntax:

```ruby
asm = Ronin::ASM.new do
  push rbx
  mov  rax, qword(0xc0ffee)
  pop  rbx
end

puts asm.to_asm
# BITS 64
# section .text
# _start:
#	push	rbx
#	mov	rax,	QWORD 0xc0ffee
#	pop	rbx
```

Or output the program as ATT Assembly syntax:

```ruby
puts asm.to_asm(:att)
# .code64
# .text
# _start:
#	push	%rbx
#	mov	$0xc0ffee,      %rax
#	pop	%rbx
```

## Requirements

* [Ruby] >= 3.0.0
* [ronin-core] ~> 0.2

## Install

```shell
$ gem install ronin-asm
```

### Gemfile

```ruby
gem 'ronin-asm', '~> 1.0'
```

### gemspec

```ruby
gem.add_dependency 'ronin-asm', '~> 1.0'
```

## Development

1. [Fork It!](https://github.com/ronin-rb/ronin-asm/fork)
2. Clone It!
3. `cd ronin-asm/`
4. `bundle install`
5. `git checkout -b my_feature`
6. Code It!
7. `bundle exec rake spec`
8. `git push origin my_feature`

## License

ronin-asm - A Ruby DSL for crafting Assembly programs and shellcode.

Copyright (c) 2007-2025 Hal Brodigan (postmodern.mod3 at gmail.com)

ronin-asm is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

ronin-asm is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with ronin-asm.  If not, see <https://www.gnu.org/licenses/>.

[Ruby]: https://www.ruby-lang.org

[ronin-core]: https://github.com/ronin-rb/ronin-core#readme

[Ronin::ASM::Program]: https://ronin-rb.dev/docs/ronin-asm/Ronin/ASM/Program.html
[Ronin::ASM::Program#syscalls]: https://ronin-rb.dev/docs/ronin-asm/Ronin/ASM/Program.html#syscalls-instance_method
