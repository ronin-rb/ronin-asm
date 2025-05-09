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
      # Represents a memory offset (`moffset32` or `moffset64`).
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
        attr_reader :size

        # The operand type.
        #
        # @return [:moffset32, :moffset64]
        attr_reader :type

        #
        # Initializes the memory offset.
        #
        # @param [Integer] value
        #   The memory offset value.
        #
        # @param [Integer, nil] size
        #   The optional size of the value.
        #
        def initialize(value, size: nil)
          @value = value
          @size  = size || if value.bit_length <= 32 then 4
                           else                           8
                           end

          @type = :"moffset#{@size * 8}"
        end

        #
        # Determines if the memory offset operand is equal to or compatible with
        # the given type.
        #
        # @param [Symbol] type
        # @return [Boolean]
        #
        # @example
        #   moffset32.type_of?(:moffset32)
        #   # => true
        #   moffset32.type_of?(:moffset64)
        #   # => false
        #   moffset32.type_of?(:mem32)
        #   # => true
        #   moffset32.type_of?(:mem)
        #   # => true
        #   mem32.type_of?(:reg32)
        #   # => false
        #
        # @note
        #   Memory offset operands may also match the `:mem`, `:mem32`, or
        #   `:mem64` types.
        #
        def type_of?(type)
          (@type == type) ||
          (type == :mem) ||
          (type == :mem32 && @type == :moffset32) ||
          (type == :mem64 && @type == :moffset64)
        end

        alias to_i value

      end
    end
  end
end
