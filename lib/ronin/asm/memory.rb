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
require_relative 'register'

module Ronin
  module ASM
    #
    # Represents a Memory Operand.
    #
    # @see http://asm.sourceforge.net/articles/linasm.html#Memory
    #
    # @since 1.0.0
    #
    class Memory

      include Operand

      # The base of the memory operand.
      #
      # @return [Register, nil]
      attr_reader :base

      # The size of the memory operand.
      #
      # @return [Integer, nil]
      attr_reader :size

      # The assembly type class.
      #
      # @return [:mem8, :mem16, :mem32, :mem64, nil]
      attr_reader :type

      #
      # Creates a new Memory Operand.
      #
      # @param [Register] base
      #   The base of the value.
      #
      # @param [Integer, nil] size
      #   The optional size of the memory operand.
      #
      def initialize(base, size: nil)
        @base = base
        @size = size || if base
                          base.size
                        end

        if @size
          @type = :"mem#{@size * 8}"
        end
      end

      #
      # Coerces an Array of arguments into a Memory object.
      #
      # @param [Array] arguments
      #   The Array arguments to convert.
      #
      # @return [Memory]
      #   The converted memory object.
      #
      # @abstract
      #
      def self.[](*arguments)
        raise(NotImplementedError,"#{self}.[] was not implemented")
      end

      #
      # Specifies that the operand is a memory operand.
      #
      # @return [true]
      #
      # @since 1.0.0
      #
      def mem? = true

      #
      # Determines if the operand is a 8bit memory operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def mem8?
        @size == 1
      end

      #
      # Determines if the operand is a 16bit memory operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def mem16?
        @size == 2
      end

      #
      # Determines if the operand is a 32bit memory operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def mem32?
        @size == 4
      end

      #
      # Determines if the operand is a 64bit memory operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def mem64?
        @size == 8
      end

      #
      # Changes the size of the memory.
      #
      # @return [Memory]
      #   A new memory operand object with the new size.
      #
      def change_size(new_size)
        self.class.new(@base, size: new_size)
      end

      #
      # Converts the memory to an integer value.
      #
      # @return [Integer]
      #
      def to_i = @base.to_i

    end
  end
end
