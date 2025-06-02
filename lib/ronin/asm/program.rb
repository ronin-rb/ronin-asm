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

require_relative 'exceptions'
require_relative 'x86'
require_relative 'x86_64'
require_relative 'register'
require_relative 'instruction'
require_relative 'immediate'
require_relative 'label'

require 'set'
require 'stringio'

module Ronin
  module ASM
    #
    # The {Program} class allows writing and representing Assembly programs in
    # Ruby.
    # These programs can then be inspected, modified, assembled to a binary
    # String or even converted back into Assembly source code.
    #
    # ## Features
    #
    # * Supports x86 and x86-64 architectures.
    # * Provides a Ruby DSL for representing Assembly that is nearly identical
    #   to Intel Assembly syntax.
    # * Supports nearly every feature of the Assembly programming language:
    #   * Labels
    #   * Symbols
    #   * Instructions
    #   * Registers
    #   * Immediate values
    #   * Memory operands:
    #     * Displacements
    #     * Scale Index Base (SIB) memory addressing
    #     * RIP-relative addressing
    #   * Operand size keywords
    #   * Memory Broadcasts
    #   * Opmasks (aka Write Masks)
    #   * Rounding Control
    #   * Macros
    # * Supports syscalls for Linux, FreeBSD, NetBSD, OpenBSD, and macOS.
    # * Supports assembling {Program}s to a binary String or writing directly
    #   to an output stream.
    # * Supports converting programs back into Assembly syntax (Intel or ATT).
    #
    # ## Examples
    #
    #     asm = Ronin::ASM.new do
    #       xor rdx, rdx                # set rdx (envp) to NULL
    #       mov rbx, 0x68732f6e69622f2f # set rbx to "//bin/sh"
    #       shr rbx, 8                  # add a \0 byte by shifting right one byte
    #       push rbx                    # push "/bin/sh\0" to the stack
    #       mov rdi, rsp                # rdi (pathname) points onto the stack
    #       push rdx                    # push NULL onto the stack
    #       push rdi                    # push pointer to pathname
    #       mov rsi, rsp                # rsi (argv) points to the stack
    #       mov al, 0x3b                # Linux x86-64 syscall number for execve()
    #       syscall                     # call execve(pathname,argv,envp)
    #     end
    #
    #     payload = asm.assemble
    #     # => "H1\xD2H\xBB//bin/shH\xC1\xEB\bSH\x89\xE7PWH\x89\xE6\xC6\xC0;\x0F\x05"
    #
    #     puts asm.to_asm
    #
    # ### Architectures
    #
    # By default all Assembly programs use the x86-64 architecture:
    #
    #     asm = Ronin::ASM::Program.new do
    #       mov rax, 0x112233445566778899
    #       # ...
    #     end
    #
    # An explicit architecture can also be specified:
    #
    #     asm = Ronin::ASM.new(arch: :x86) do
    #       mov eax, 0x11223344
    #       # ...
    #     end
    #
    # The following architectures are supported:
    #
    # * `:x86` - x86, aka i386/i486/i586/i686.
    # * `:x86_64` - x86-64.
    # * `:amd64` - alias for `:x86_64`.
    #
    # ### Registers
    #
    # All user-space registers are available as methods within the Assembly
    # program:
    #
    #     asm = Ronin::ASM::Program.new do
    #       mov al,  0xff
    #       mov ax,  0xffff
    #       mov eax, 0xffffffff
    #       mov rax, 0xffffffffffffffff
    #     end
    #
    # ### Immediates
    #
    # Immediate values are represented as plain-old Ruby Integers:
    #
    #     asm = Ronin::ASM::Program.new do
    #       mov rax, 0x0a   # hexadecimal
    #       mov rax, 10     # decimal
    #       mov rax, 012    # octal
    #       mov rax, 0b1010 # binary
    #     end
    #
    # Immediate values can also have explicit sizes:
    #
    #     asm = Ronin::ASM::Program.new do
    #       mov al,  byte(0xff)
    #       mov ax,  word(0xffff)
    #       mov eax, dword(0xffffffff)
    #       mov rax, qword(0xffffffffffffffff)
    #     end
    #
    # ### Memory
    #
    # Memory operands are represented as Ruby Arrays similar to Intel syntax:
    #
    #     asm = Ronin::ASM::Program.new do
    #       mov rax, [rbx]
    #       mov rax, [rbx+10]
    #       mov rax, [rbx+rsi*8]
    #       mov rax, [rbx+10+rsi*8]
    #     end
    #
    # #### Memory Broadcasts
    #
    # Memory broadcasts can also be added to memory operands:
    #
    #     asm = Ronin::ASM::Program.new do
    #       vcvtpd2qq ymm0, bcst(qword([rbx]), {1=>4})
    #     end
    #
    # ### Opmasks
    #
    # Opmasks (aka Write Masks) can also be added to destination operands:
    #
    #     asm = Ronin::ASM::Program.new do
    #       vaddpd opmask(xmm1, k1, zero: true), xmm2, xmm3
    #     end
    #
    # ### Rounding Control
    #
    # Rounding control can be specified for certain instructions as the last
    # operand:
    #
    #     asm = Ronin::ASM::Program.new do
    #       vaddpd zmm1, zmm2, zmm3, rn_sae
    #       vaddpd zmm1, zmm2, zmm3, rd_sae
    #       vaddpd zmm1, zmm2, zmm3, ru_sae
    #       vaddpd zmm1, zmm2, zmm3, rz_sae
    #       vcomisd xmm1, xmm2, sae
    #     end
    #
    # ### Instructions
    #
    # Instructions are represented as Ruby method calls without the parenthesis,
    # with the destination operand first, similar to Intel syntax:
    #
    #     asm = Ronin::ASM::Program.new do
    #       mov rax, 0x41
    #       push rax
    #       nop
    #     end
    #
    # See {X86::Instructions} and {X86_64::Instructions} for all instruction
    # methods.
    #
    # ### Labels
    #
    # Labels are defined by calling the label name with a block and referenced
    # with a method call without a block:
    #
    #     asm = Ronin::ASM::Program.new do
    #       xor rcx, rcx
    #
    #       _loop do
    #         inc rcx
    #         cmp rcx, 10
    #         jle _loop
    #       end
    #     end
    #
    # Labels can be referenced by jump/call instructions before they
    # are defined.
    #
    #     asm = Ronin::ASM::Program.new do
    #       jnz _label
    #
    #       # ...
    #
    #       _label do
    #         # ...
    #       end
    #     end
    #
    # ### Macros
    #
    # Simply `name=value` macros can be passed in via the `macros:` keyword
    # argument as a Hash and accessed within the program as methods:
    #
    #     asm = Ronin::ASM::Program.new(macros: {port: 1337}) do
    #       # ...
    #       mov ax, port
    #       # ...
    #     end
    #
    # Macro functions can be defined as methods within the Assembly program:
    #
    #     asm = Ronin::ASM::Program.new do
    #       def randdom_port = rand(1024..65535)
    #
    #       mov ax, random_port
    #       mov bx, random_port
    #     end
    #
    # Macro methods can even accept arguments and call other instructions:
    #
    #     asm = Ronin::ASM::Program.new do
    #       def obfus_mov(reg,int)
    #         mov reg, (int - 42)
    #         add reg, 42
    #       end
    #
    #       obfus_mov ax, 1337
    #     end
    #
    # ### Syscalls
    #
    # Builtin syscall macros are provided for Linux, FreeBSD, NetBSD, OpenBSD,
    # and macOS. Specify the `os:` keyword argument to enable syscalls for the
    # specified OS:
    #
    #     asm = Ronin::ASM::Program.new(os: :linux) do
    #       # ...
    #       exit_syscall(42)            # call exit(42)
    #     end
    #
    # Syscall macros can also be passed registers as their arguments:
    #
    #     asm = Ronin::ASM::Program.new(os: :linux) do
    #       xor rdx, rdx                # set rdx (envp) to NULL
    #       mov rbx, 0x68732f6e69622f2f # set rbx to "//bin/sh"
    #       shr rbx, 8                  # add a \0 byte by shifting right
    #       push rbx                    # push "/bin/sh\0" to the stack
    #       mov rdi, rsp                # rdi (pathname) points onto the stack
    #       push rdx                    # push NULL onto the stack
    #       push rdi                    # push pointer to pathname
    #       mov rsi, rsp                # rsi (argv) points to the stack
    #
    #       execve_syscall(rdi,rsi,rdx) # call execve(pathname,argv,envp)
    #     end
    #
    # ### Assembling
    #
    # Assembly programs can be assembled into a String of bytes by calling
    # {Program#assemble assemble}:
    #
    #     asm = Ronin::ASM::Program.new do
    #       pop rbp
    #       ret
    #     end
    #
    #     asm.assemble
    #     # => "]\xC3"
    #
    # Assembly programs can also be assembled and directly written to any IO
    # object:
    #
    #     asm = Ronin::ASM::Program.new do
    #       # ...
    #     end
    #
    #     File.open('output.bin','wb') do |file|
    #       # ...
    #       asm.assemble(file)
    #       # ...
    #     end
    #
    # ### Syntax
    #
    # Assembly programs can be formatted back into Assembly syntax:
    #
    #     asm = Ronin::ASM::Program.new do
    #       push rbx
    #       mov  rax, qword(0xc0ffee)
    #       pop  rbx
    #     end
    #
    #     puts asm.to_asm
    #     # BITS 64
    #     # section .text
    #     # _start:
    #     #	push	rbx
    #     #	mov	rax,	QWORD 0xc0ffee
    #     #	pop	rbx
    #
    # ATT syntax is also supported:
    #
    #     puts asm.to_asm(:att)
    #     # .code64
    #     # .text
    #     # _start:
    #     #	push	%rbx
    #     #	mov	$0xc0ffee,      %rax
    #     #	pop	%rbx
    #
    class Program

      # Mapping of architecture IDs to modules.
      ARCHES = {
        x86:    X86,
        x86_64: X86_64,
        amd64:  X86_64
      }

      # The targeted architecture
      #
      # @return [Symbol]
      attr_reader :arch

      # The targeted Operating System
      #
      # @return [:linux, :freebsd, :netbsd, :openbsd, :macos, nil]
      attr_reader :os

      # The macros defined in the program.
      #
      # @return [Hash{Symbol => Object}]
      #
      # @since 1.0.0
      #
      # @api private
      attr_reader :macros

      # The symbols defined in the program.
      #
      # @return [Hash{String => Label,Integer}]
      #
      # @since 1.0.0
      #
      # @api private
      attr_reader :symbols

      # The symbol references defined in the program.
      #
      # @return [Hash{String => SymbolRef}]
      #
      # @since 1.0.0
      #
      # @api private
      attr_reader :symbol_refs

      # The instructions of the program
      #
      # @return [Array<Instruction>]
      #
      # @api private
      attr_reader :instructions

      #
      # Initializes a new Assembly Program.
      #
      # @param [Symbol] arch
      #   The Architecture to target.
      #
      # @param [:linux, :freebsd, :netbsd, :openbsd, :macos, nil] os
      #   The Operating System to target.
      #
      # @param [Hash{Symbol => Object}] macros
      #   Macros to define in the program.
      #
      # @param [Hash{String => Integer}] symbols
      #   Explicitly defined symbol values.
      #
      # @yield []
      #   The given block will be evaluated within the program.
      #
      # @raise [ArgumentError]
      #   An invalid `arch:` or `os:` keyword argument value was given.
      #
      # @example Create a x86-64 Assembly program:
      #   Program.new do
      #     xor rax, rax
      #     # ...
      #   end
      #
      # @example Create a x86 Assembly program:
      #   Program.new(arch: :x86) do
      #     xor eax, eax
      #   end
      #
      # @example Pass variables into an Assembly program:
      #   Program.new(macros: {port: 1337}) do
      #     # ...
      #     xor eax, eax
      #     mov ax, port
      #     # ...
      #   end
      #
      # @example Create an Assembly program with OS-specific syscalls:
      #   Program.new(os: :linux) do
      #     # ...
      #     exit_syscall(42)
      #   end
      #
      def initialize(arch: :x86_64, os: nil, macros: {}, symbols: {}, &block)
        @arch = arch
        @os   = os

        initialize_arch(arch: arch, os: os)
        initialize_macros(macros)
        initialize_symbols(symbols)

        @symbol_refs  = {}
        @instructions = []

        instance_eval(&block) if block
      end

      private

      #
      # Initializes the architecture metadata for the program.
      #
      # @param [:x86, :x86_64, :amd64] arch
      #   The architecture name.
      #
      # @param [:linux, :freebsd, :netbsd, :openbsd, :macos, nil] os
      #   The OS name.
      #
      # @api private
      #
      def initialize_arch(arch:, os: nil)
        arch_module = ARCHES.fetch(arch) do
          raise(ArgumentError,"unknown architecture: #{arch.inspect}")
        end

        @syntaxes         = arch_module::SYNTAXES
        @immediate_class  = arch_module::Immediate
        @memory_class     = arch_module::Memory
        @symbol_ref_class = arch_module::SymbolRef
        @assembler_class  = arch_module::Assembler

        extend arch_module

        if os
          extend arch_module::OSES.fetch(os) do
            raise(ArgumentError,"architecture does not support OS: #{os.inspect}")
          end
        end
      end

      #
      # Initializes the macros.
      #
      # @param [Hash{Symbol => Object}] macros
      #
      # @api private
      #
      def initialize_macros(macros={})
        @macros = macros

        macros.each do |name,value|
          define_singleton_method(name,&value.method(:itself))
        end
      end

      #
      # Initializes the symbols.
      #
      # @param [Hash{Symbol,String => Object}] symbols
      #
      # @api private
      #
      def initialize_symbols(symbols={})
        @symbols = {}

        symbols.each do |name,value|
          @symbols[name.to_s] = value
        end
      end

      public

      #
      # Coerces an operand value into an operand object.
      #
      # @param [Integer, Register, Memory, nil] value
      #   The input operand value.
      #
      # @return [Immediate, Register, Memory]
      #   The output operand object.
      #
      # @api private
      #
      # @since 1.0.0
      #
      def coerce_operand(value)
        case value
        when Integer, nil then @immediate_class.new(value)
        when Array        then @memory_class[*value]
        else                   value
        end
      end

      #
      # Appends an instruction object to the program.
      #
      # @param [Instruction] instruction
      #   The instruction object to append.
      #
      # @return [self]
      #
      # @api private
      #
      # @since 1.0.0
      #
      def <<(instruction)
        @instructions << instruction
        return self
      end

      #
      # Coerces the given operands, initializes the instruction object, and
      # appends it to the program.
      #
      # @param [Class<Instruction>] instruction_class
      #   The instruction class.
      #
      # @param [Array] operands
      #   The raw operand values.
      #
      # @return [Instruction]
      #   The created instruction object.
      #
      # @api private
      #
      # @since 1.0.0
      #
      def add_instruction(instruction_class,*operands,**kwargs)
        new_instruction = instruction_class.new(*operands.map(&method(:coerce_operand)))
        @instructions << new_instruction
        return new_instruction
      end

      #
      # Determines if another program is compatible with the program.
      #
      # @param [Program] program
      #   The other program to compare.
      #
      # @return [Boolean]
      #   Returns true if both program's have the same architecture, and if the
      #   Operating System (OS) if both program's specify an OS.
      #   Returns false otherwise.
      #
      # @api private
      #
      # @since 1.0.0
      #
      def compatible?(program)
        ARCHES.fetch(@arch) == ARCHES.fetch(program.arch) && (
          (@os && program.os && @os == program.os) ||
          (@os.nil? || program.os.nil?)
        )
      end

      #
      # Creates an operand of size 8bits (1 byte).
      #
      # @param [Memory, Integer] operand
      #   The value of the operand.
      #
      # @return [Memory, Immediate]
      #   The new operand value.
      #
      # @example
      #   byte(0x41)
      #   byte([rax])
      #
      def byte(operand) = coerce_operand(operand).change_size(1)

      #
      # Creates a operand of size 16bits (2 bytes).
      #
      # @param [Memory, Integer] operand
      #   The value of the operand.
      #
      # @return [Memory, Immediate]
      #   The new operand value.
      #
      # @example
      #   word(0x41)
      #   word([rax])
      #
      def word(operand) = coerce_operand(operand).change_size(2)

      #
      # Creates a operand of size 32bits (4 bytes).
      #
      # @param [Memory, Integer] operand
      #   The value of the operand.
      #
      # @return [Immediate]
      #   The new operand value.
      #
      # @example
      #   dword(0x41)
      #   dword([rax])
      #
      def dword(operand) = coerce_operand(operand).change_size(4)

      #
      # Creates a operand of size 64bits (8 bytes).
      #
      # @param [Memory, Integer] operand
      #   The value of the operand.
      #
      # @return [Memory, Immediate]
      #   The new operand.
      #
      # @example
      #   qword(0x41)
      #   qword([rax])
      #
      def qword(operand) = coerce_operand(operand).change_size(8)

      #
      # Adds a label to the program.
      #
      # @param [Symbol, String] name
      #   The name of the label.
      #
      # @yield []
      #   If a block is given, it will be evaluated after the label has been
      #   added.
      #
      # @return [Label]
      #   The new label.
      #
      # @raise [ArgumentError]
      #   A label with the same name has already been defined.
      #
      def label(name,&block)
        name = name.to_s

        if @symbols.has_key?(name)
          raise(ArgumentError,"symbol is already defined: #{name.inspect}")
        end

        new_label = Label.new(name)

        @symbols[name] = new_label
        @instructions << new_label

        if (symbol_ref = @symbol_refs[name])
          symbol_ref.resolve(new_label)
        end

        instance_eval(&block) if block
        return new_label
      end

      #
      # Creates a new label reference.
      #
      # @param [Symbol, String] name
      #   The name of the label being referenced.
      #
      # @return [LabelSymbol]
      #   The new label reference.
      #
      # @since 1.0.0
      #
      def symbol_ref(name)
        name = name.to_s

        @symbol_refs[name] ||= @symbol_ref_class.new(name, value: @symbols[name])
      end

      #
      # Generic method for generating the instruction for causing an interrupt.
      #
      # @param [Integer] number
      #   The interrupt number to call.
      #
      # @abstract
      #
      def interrupt(number)
        raise(NotImplementedError,"#{self.class}#interrupt was not defined by the architecture module")
      end

      #
      # Generic method for pushing onto the stack.
      #
      # @param [Register, Integer] value
      #   The value to push.
      #
      # @abstract
      #
      def stack_push(value)
        raise(NotImplementedError,"#{self.class}#stack_push was not defined by the architecture module")
      end

      #
      # Generic method for popping off the stack.
      #
      # @param [Register] register
      #   The register that will contain the value popped off the stack.
      #
      # @abstract
      #
      def stack_pop(register)
        raise(NotImplementedError,"#{self.class}#stack_pop was not defined by the architecture module")
      end

      #
      # Generic method for clearing a register.
      #
      # @param [Register] register
      #   The register to clear.
      #
      # @abstract
      #
      def clear_register(register)
        raise(NotImplementedError,"#{self.class}#clear_register was not defined by the architecture module")
      end

      #
      # Generic method for setting a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      # @param [Register, Immediate, Integer] value
      #   The new value for the register.
      #
      # @abstract
      #
      def set_register(register,value)
        raise(NotImplementedError,"#{self.class}#set_register was not defined by the architecture module")
      end

      #
      # Generic method for saving a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      # @abstract
      #
      def register_save(register)
        raise(NotImplementedError,"#{self.class}#register_save was not defined by the architecture module")
      end

      #
      # Generic method for loading a register.
      #
      # @param [Register] register
      #   The name of the register.
      #
      # @abstract
      #
      def register_load(register)
        raise(NotImplementedError,"#{self.class}#register_load was not defined by the architecture module")
      end

      #
      # Defines a critical region, where the specified Registers
      # should be saved and then reloaded.
      #
      # @param [Array<Register>] registers
      #   The registers to save and reload.
      #
      # @yield []
      #   The given block will be evaluated after the registers
      #   have been saved.
      #
      def critical(*registers,&block)
        registers.each(&method(:register_save))

        instance_eval(&block)

        registers.reverse_each(&method(:register_load))
      end

      #
      # Evaluates code within the Program.
      #
      # @yield []
      #   The code to evaluate.
      #
      def eval(&block) = instance_eval(&block)

      #
      # Converts the program to Assembly Source Code.
      #
      # @param [Symbol] syntax
      #   The syntax to compile the program to.
      #
      def to_asm(syntax=:intel)
        @syntaxes[syntax].format_program(self)
      end

      #
      # @see #to_asm
      #
      def to_s = to_asm

      #
      # Validates the program before assembly.
      #
      # @return [true]
      #   Indicates no validation errors.
      #
      # @raise [UnresolvedSymbolError]
      #   The program contains a symbol reference that was never resolved.
      #
      # @api private
      #
      # @since 1.0.0
      #
      def validate
        @symbol_refs.each_value do |symbol_ref|
          unless symbol_ref.resolved?
            raise(UnresolvedSymbolError,"unresolved reference to symbol: #{symbol_ref.name.inspect}")
          end
        end

        return true
      end

      #
      # Assembles the program.
      #
      # @overload assemble
      #   @return [String]
      #     Assembles the program and returns the encoded assembled instructions.
      # @overload assemble(output)
      #   @param [IO, StringIO] output
      #     The output stream to write the encoded assembled instructions to.
      #   @return [Integer]
      #     The number of bytes written.
      #
      # @raise [UnresolvedSymbolError]
      #   The program contains a reference to a label that does not exist.
      #
      def assemble(output=nil)
        if output
          validate

          return @assembler_class.assemble(self,output)
        else
          output = StringIO.new(encoding: Encoding::ASCII_8BIT)

          assemble(output)
          return output.string
        end
      end

      #
      # Assembles the program and returns the encoded assembly instructions as a
      # String.
      #
      # @return [String]
      #
      # @since 1.0.0
      #
      def to_bin = assemble

      #
      # Determines if the program responds to the method name.
      #
      # @param [Symbol] name
      #
      # @param [Boolean] include_private
      #
      # @return [Boolean]
      #
      # @api private
      #
      def respond_to_missing?(name,include_private=false)
        # prevents `puts` from thinking `Program` responds to `.to_ary`.
        name != :to_ary
      end

      protected

      #
      # Allows adding unknown instructions to the program.
      #
      # @param [Symbol] name
      #   The name of the instruction.
      #
      # @param [Array] arguments
      #   Additional operands.
      #
      # @param [Hash{Symbol => Object}] kwargs
      #   Additional keyword arguments.
      #
      def method_missing(name,*arguments,**kwargs,&block)
        if (block && arguments.empty? && kwargs.empty?)
          label(name.id2name,&block)
        elsif (block.nil? && arguments.empty? && kwargs.empty?)
          symbol_ref(name.id2name)
        else
          super(name,*arguments,&block)
        end
      end

    end
  end
end
