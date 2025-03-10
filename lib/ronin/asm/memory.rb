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

      # The width of the memory operand.
      #
      # @return [Integer, nil]
      attr_reader :width

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
      # @param [Integer, nil] width
      #   The optional width of the memory operand.
      #
      def initialize(base, width: nil)
        @base  = base
        @width = width || if base
                            base.width
                          end

        if @width
          @type = :"mem#{@width * 8}"
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
        @width == 1
      end

      #
      # Determines if the operand is a 16bit memory operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def mem16?
        @width == 2
      end

      #
      # Determines if the operand is a 32bit memory operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def mem32?
        @width == 4
      end

      #
      # Determines if the operand is a 64bit memory operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def mem64?
        @width == 8
      end

      #
      # Changes the width of the memory.
      #
      # @return [Memory]
      #   A new memory operand object with the new width.
      #
      def change_width(new_width)
        self.class.new(@base, width: new_width)
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
