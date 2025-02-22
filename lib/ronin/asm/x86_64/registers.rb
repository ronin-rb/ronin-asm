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

require_relative '../register'
require_relative '../x86/registers'

module Ronin
  module ASM
    module X86_64
      #
      # x86-64 register constants.
      #
      # @since 1.0.0
      #
      module Registers
        include X86::Registers

        #
        # @group General Purpose Registers
        #

        # The `rax` 64bit "accumulator" register.
        RAX =  Register.new(:rax, width: 8, general: true)

        # The `rbx` 64bit "accumulator" register.
        RBX =  Register.new(:rbx, width: 8, general: true)

        # The `rcx` 64bit "accumulator" register.
        RCX =  Register.new(:rcx, width: 8, general: true)

        # The `rdx` 64bit "accumulator" register.
        RDX =  Register.new(:rdx, width: 8, general: true)

        # The `rsi` 64bit "source" register.
        RSI =  Register.new(:rsi, width: 8, general: true)

        # The `rdi` 64bit "destination" register.
        RDI =  Register.new(:rdi, width: 8, general: true)

        R8B =  Register.new(:r8b, width: 1, general: true)
        R8W =  Register.new(:r8w, width: 2, general: true)
        R8D =  Register.new(:r8d, width: 4, general: true)
        R8  =  Register.new(:r8, width: 8, general: true)

        R9B =  Register.new(:r9b, width: 1, general: true)
        R9W =  Register.new(:r9w, width: 2, general: true)
        R9D =  Register.new(:r9d, width: 4, general: true)
        R9  =  Register.new(:r9, width: 8, general: true)

        R10B =  Register.new(:r10b, width: 1, general: true)
        R10W =  Register.new(:r10w, width: 2, general: true)
        R10D =  Register.new(:r10d, width: 4, general: true)
        R10  =  Register.new(:r10, width: 8, general: true)

        R11B =  Register.new(:r11b, width: 1, general: true)
        R11W =  Register.new(:r11w, width: 2, general: true)
        R11D =  Register.new(:r11d, width: 4, general: true)
        R11  =  Register.new(:r11, width: 8, general: true)

        R12B =  Register.new(:r12b, width: 1, general: true)
        R12W =  Register.new(:r12w, width: 2, general: true)
        R12D =  Register.new(:r12d, width: 4, general: true)
        R12  =  Register.new(:r12, width: 8, general: true)

        R13B =  Register.new(:r13b, width: 1, general: true)
        R13W =  Register.new(:r13w, width: 2, general: true)
        R13D =  Register.new(:r13d, width: 4, general: true)
        R13  =  Register.new(:r13, width: 8, general: true)

        R14B =  Register.new(:r14b, width: 1, general: true)
        R14W =  Register.new(:r14w, width: 2, general: true)
        R14D =  Register.new(:r14d, width: 4, general: true)
        R14  =  Register.new(:r14, width: 8, general: true)

        R15B =  Register.new(:r15b, width: 1, general: true)
        R15W =  Register.new(:r15w, width: 2, general: true)
        R15D =  Register.new(:r15d, width: 4, general: true)
        R15  =  Register.new(:r15, width: 8, general: true)

        #
        # @group Stack Registers.
        #

        # The `rsp` 64bit stack pointer register.
        RSP =  Register.new(:rsp, width: 8, general: true)

        # The `rbp` 64bit stack base pointer register.
        RBP =  Register.new(:rbp, width: 8, general: true)
      end
    end
  end
end
