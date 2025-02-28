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

require_relative '../operand'

module Ronin
  module ASM
    module X86
      #
      # Represents a relative offset (`rel8` or `rel32`).
      #
      # @since 1.0.0
      #
      class RelativeOffset < Operand

        # The relative offset value.
        #
        # @return [Integer]
        attr_reader :value

        # The size of the relative offset operand.
        #
        # @return [1, 4]
        attr_reader :width

        # The operand type.
        #
        # @return [:rel8, :rel32]
        attr_reader :type

        #
        # Initializes the relative offset.
        #
        # @param [Integer] value
        #   The relative offset value.
        #
        def initialize(value)
          @value = value
          @width = if value.bit_length <= 8 then 1
                   else                          4
                   end

          @type = :"rel#{@width * 8}"
        end

        alias to_i value

      end
    end
  end
end
