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

require_relative 'registers'
require_relative '../syscalls/linux/x86_64'

module Ronin
  module ASM
    module X86_64
      #
      # x86-64-specific Linux methods.
      #
      module Linux
        include Syscalls::Linux::X86_64

        # Registers used to pass syscall arguments to the kernel.
        SYSCALL_REGISTERS = [
          Registers::RDI,
          Registers::RSI,
          Registers::RDX,
          Registers::R10,
          Registers::R8,
          Registers::R9
        ]

        #
        # Macro that generates a syscall.
        #
        # @param [Integer, Register] number
        #   The syscall number to set the `rax` register to.
        #
        # @param [Array<Register, Memory, Immediate, Integer>] arguments
        #   Additional arguments for the syscall.
        #
        # @raise [ArgumentError]
        #   More than six arguments were given.
        #
        # @note
        #   Additional arguments will be `mov`ed into the `rdi`, `rsi`, `rdx`,
        #   `r10`, `r8`, and `r9` registers, respectively.
        #
        # @example Call the `exit` syscall with error code 42:
        #   syscall_macro 0x3c, 42
        #
        def syscall_macro(number,*arguments)
          if arguments.length > SYSCALL_REGISTERS.length
            raise(ArgumentError,"x86-64 Linux does not support more than six syscall arguments")
          end

          syscall_registers = SYSCALL_REGISTERS[0,arguments.length]

          syscall_registers.zip(arguments).reverse_each do |reg,value|
            # NOTE: do not set the register to itself
            unless reg == value
              mov reg, value
            end
          end

          mov Registers::RAX, number
          syscall
        end
      end
    end
  end
end
