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

require_relative '../x86/register'
require_relative 'operand'

module Ronin
  module ASM
    module X86_64
      #
      # Base class for all x86-64 registers.
      #
      # @since 1.0.0
      #
      class Register < X86::Register

        include Operand

        #
        # Adds a displacement to the value within the register and dereferences
        # the address.
        #
        # @param [Memory, Register, Integer] value
        #   The value to add to the value of the register.
        #
        # @return [Memory]
        #   The new Memory Operand.
        #
        # @raise [TypeError]
        #   the value was not an {Memory}, {Register} or Integer.
        #
        def +(value)
          case value
          when Memory
            Memory.new(
              base: self,
              displacement: value.displacement,
              index: value.index,
              scale: value.scale
            )
          when Register
            Memory.new(base: self, index: value)
          when Integer
            Memory.new(base: self, displacement: value)
          else
            raise(TypeError,"value was not an Memory, Register or Integer")
          end
        end

        #
        # Subtracts from the value within the register and dereferences the
        # address.
        #
        # @param [Integer] displacement
        #   The value to subtract from the value of the register.
        #
        # @return [Memory]
        #   The new Memory Operand.
        #
        def -(displacement)
          Memory.new(base: self, displacement: -displacement)
        end

        #
        # Multiples the value within the register.
        #
        # @param [Integer] scale
        #   The scale to multiply the value within register by.
        #
        # @return [Memory]
        #   The new Memory Operand.
        #
        def *(scale)
          Memory.new(index: self, scale: scale)
        end

      end
    end
  end
end
