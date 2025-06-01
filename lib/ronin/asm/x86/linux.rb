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
require_relative '../syscalls/linux/x86'

module Ronin
  module ASM
    module X86
      #
      # x86-specific Linux methods.
      #
      module Linux
        include Syscalls::Linux::X86

        # Registers used to pass syscall arguments to the kernel.
        SYSCALL_REGISTERS = [
          Registers::EBX,
          Registers::ECX,
          Registers::EDX,
          Registers::ESI,
          Registers::EDI,
          Registers::EBP
        ]

        #
        # Macro that generates a syscall.
        #
        # @param [Integer, Register] number
        #   The syscall number to set the `eax` register to.
        #
        # @param [Array<Register, Memory, Immediate, Integer>] arguments
        #   Additional arguments for the syscall.
        #
        # @raise [ArgumentError]
        #   More than six arguments were given.
        #
        # @note
        #   Additional arguments will be `mov`ed into the `ebx`, `ecx`, `edx`,
        #   `esi`, `edi`, and `ebp` registers, respectively.
        #
        # @example Call the `exit` syscall with error code 42:
        #   syscall_macro 0x1, 42
        #
        def syscall_macro(number,*arguments)
          if arguments.length > SYSCALL_REGISTERS.length
            raise(ArgumentError,"x86 Linux does not support more than six syscall arguments")
          end

          syscall_registers = SYSCALL_REGISTERS[0,arguments.length]

          syscall_registers.zip(arguments).reverse_each do |reg,value|
            # NOTE: do not set the register to itself
            unless reg == value
              mov reg, value
            end
          end

          mov Registers::EAX, number
          int 0x80
        end
      end
    end
  end
end
