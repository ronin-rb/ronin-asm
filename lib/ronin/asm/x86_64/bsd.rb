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

module Ronin
  module ASM
    module X86_64
      #
      # x86-64-specific BSD methods.
      #
      module BSD
        #
        # Macro that generates a syscall.
        #
        # @param [Integer, Register] number
        #   The syscall number to set the `rax` register to.
        #
        # @param [Array<Register, Memory, Immediate, Integer>] arguments
        #   Additional arguments for the syscall.
        #
        # @note
        #   Additional arguments will be `push`ed onto the stack in reverse
        #   order.
        #
        def syscall_macro(number,*arguments)
          arguments.reverse_each do |value|
            push value
          end

          mov Registers::RAX, number
          syscall
        end
      end
    end
  end
end
