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

require_relative 'operand'

module Ronin
  module ASM
    module X86
      #
      # Represents a memory offset (`memoffs32` or `memoffs64`).
      #
      # @since 1.0.0
      #
      class MemoryOffset

        include Operand

        # The memory offset value.
        #
        # @return [Integer]
        attr_reader :value

        # The size of the memory offset operand.
        #
        # @return [4, 8]
        attr_reader :width

        # The operand type.
        #
        # @return [:memoffs32, :memoffs64]
        attr_reader :type

        #
        # Initializes the memory offset.
        #
        # @param [Integer] value
        #   The memory offset value.
        #
        # @param [Integer, nil] width
        #   The optional width of the value.
        #
        def initialize(value, width: nil)
          @value = value
          @width = width || if value.bit_length <= 32 then 4
                            else                           8
                            end

          @type = :"memoffs#{@width * 8}"
        end

        alias to_i value

      end
    end
  end
end
