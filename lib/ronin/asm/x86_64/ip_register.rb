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

require_relative 'register'
require_relative 'memory'

module Ronin
  module ASM
    module X86_64
      #
      # Class for the `rip` and `eip` special registers used for RIP-relative
      # addressing.
      #
      # @since 1.0.0
      #
      class IPRegister < Register

        #
        # Adds an offset to the RIP register.
        #
        # @param [Integer] displacement
        #   The value to add to the RIP register.
        #
        # @return [Memory]
        #   The new Memory operand.
        #
        # @raise [TypeError]
        #   Attempted to add a non-Integer value to the RIP register.
        #
        def +(displacement)
          case displacement
          when Integer
            Memory.new(base: self, displacement: displacement)
          else
            raise(TypeError,"cannot use #{@name} in base+index*scale expressions")
          end
        end

        #
        # Subtracts an offset from the RIP register.
        #
        # @param [Integer] displacement
        #   The value to subtract from the RIP register.
        #
        # @return [Memory]
        #   The new Memory operand.
        #
        # @raise [TypeError]
        #   Attempted to subtract a non-Integer value to the RIP register.
        #
        def -(displacement)
          case displacement
          when Integer
            Memory.new(base: self, displacement: -displacement)
          else
            raise(TypeError,"cannot use #{@name} in base+index*scale expressions")
          end
        end

        #
        # Overrides {Register#*} to always raise a `TypeError` since the `rip`
        # register cannot be used as a memory index.
        #
        # @raise [TypeError]
        #
        # @abstract
        #
        def *(operand)
          raise(TypeError,"cannot use #{@name} in base+index*scale expressions")
        end

      end
    end
  end
end
