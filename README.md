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

* Provides a Ruby DSL for writing Assembly programs.
  * Supports x86 and x86-64 instruction sets.
  * Supports ATT and Intel syntax.
* Supports assembling shellcode.
* Has 95% documentation coverage.
* Has 99% test coverage.

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
  xor rdx, rdx
  mov rbx, 0x68732f6e69622f2f
  shr rbx, 8
  push rbx
  mov rdi, rsp
  push rax
  push rdi
  mov rsi, rsp
  mov al, 0x3b
  syscall
end

payload = asm.assemble
# => "H1\xD2H\xBB//bin/shH\xC1\xEB\bSH\x89\xE7PWH\x89\xE6\xC6\xC0;\x0F\x05"
```

Create x86 shellcode:

```ruby
asm = Ronin::ASM.new(arch: :x86) do
  xor   eax, eax
  push  eax
  push  0x68732f2f
  push  0x6e69622f
  mov   ebx, esp
  push  eax
  push  ebx
  mov   ecx, esp
  xor   edx, edx
  mov   al, 0xb
  int   0x80
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

If the `os:` keyword argument is specified, then syscall numbers can be looked
up via the [syscalls][Ronin::ASM::Program#syscalls] Hash:

```ruby
Ronin::ASM.new(os: :linux) do
  # ...
  mov al, syscalls[:execve]
  syscall
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
