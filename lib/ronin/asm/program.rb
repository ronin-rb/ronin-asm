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
require_relative 'syscalls'
require_relative 'register'
require_relative 'instruction'
require_relative 'immediate'
require_relative 'label'

require 'set'
require 'stringio'

module Ronin
  module ASM
    #
    # Represents Assembly code.
    #
    class Program

      # Mapping of architecture IDs to modules.
      ARCHES = {
        x86:    X86,
        x86_64: X86_64,
        amd64:  X86_64
      }

      # Mapping of Operating System names and modules.
      SYSCALLS = {
        linux:   Syscalls::Linux,
        freebsd: Syscalls::FreeBSD
      }

      # The targeted architecture
      #
      # @return [Symbol]
      attr_reader :arch

      # The targeted Operating System
      #
      # @return [:linux, :freebsd, nil]
      attr_reader :os

      # The syscalls available to the program
      #
      # @return [Hash{Symbol => Integer}]
      #   The syscall names and numbers.
      attr_reader :syscalls

      # The macros defined in the program.
      #
      # @return [Hash{Symbol => Object}]
      #
      # @since 1.0.0
      attr_reader :macros

      # The symbols defined in the program.
      #
      # @return [Hash{String => Label,Integer}]
      attr_reader :symbols

      # The symbol references defined in the program.
      #
      # @return [Hash{String => Label,Integer}]
      attr_reader :symbol_refs

      # The instructions of the program
      #
      # @return [Array<Instruction>]
      attr_reader :instructions

      #
      # Initializes a new Assembly Program.
      #
      # @param [Symbol] arch
      #   The Architecture to target.
      #
      # @param [:linux, :freebsd, nil] os
      #   The Operating System to target.
      #
      # @param [Hash{Symbol => Object}] macros
      #   Macros to define in the program.
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
      # @example Create an Assembly program with Linux syscalls:
      #   Program.new(os: :linux) do
      #     # ...
      #     mov al, syscalls[:execve]
      #     syscall
      #   end
      #
      def initialize(arch: :x86_64, os: nil, macros: {}, &block)
        initialize_arch(arch)

        if os
          initialize_os(os)
        else
          @syscalls = {}
        end

        @macros = macros

        macros.each do |name,value|
          define_singleton_method(name) { value }
        end

        @symbols      = {}
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
      # @api private
      #
      def initialize_arch(arch)
        @arch = arch

        arch_module = ARCHES.fetch(arch) do
          raise(ArgumentError,"unknown architecture: #{arch.inspect}")
        end

        @syntaxes = arch_module::SYNTAXES

        @immediate_class  = arch_module::Immediate
        @memory_class     = arch_module::Memory
        @symbol_ref_class = arch_module::SymbolRef

        @assembler_class = arch_module::Assembler

        extend arch_module
      end

      #
      # Initializes the Operating System metadata for the program.
      #
      # @param [:linux, :freebsd] os
      #   The OS name.
      #
      # @api private
      #
      def initialize_os(os)
        @os = os

        syscall_module = SYSCALLS.fetch(os) do
          raise(ArgumentError,"unknown OS: #{os.inspect}")
        end

        @syscalls = syscall_module::SYSCALLS

        extend syscall_module
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

        instance_eval(&block)
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
      # Generic method for generating the instruction for invoking a syscall.
      #
      # @abstract
      #
      def syscall
        raise(NotImplementedError,"#{self.class}#syscall was not defined by the architecture module")
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
      def register_clear(register)
        raise(NotImplementedError,"#{self.class}#register_clear was not defined by the architecture module")
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
      def register_set(register,value)
        raise(NotImplementedError,"#{self.class}#register_set was not defined by the architecture module")
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
          label(name,&block)
        elsif (block.nil? && arguments.empty? && kwargs.empty?)
          symbol_ref(name)
        else
          super(name,*arguments,&block)
        end
      end

    end
  end
end
