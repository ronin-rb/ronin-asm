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
    #
    # Represents an Immediate Data Operand.
    #
    # @see http://asm.sourceforge.net/articles/linasm.html#Prefixes
    #
    # @since 1.0.0
    #
    class Immediate

      include Operand

      # The immediate operand's value.
      #
      # @return [Integer]
      attr_reader :value

      # The size of the immediate operand.
      #
      # @return [1, 2, 4, 8, nil]
      attr_reader :size

      # The x86 assembly class type.
      #
      # @return [:imm8, :imm16, :imm32, :imm64, nil]
      attr_reader :type

      #
      # Initializes a new Immediate Operand.
      #
      # @param [Integer, nil] value
      #   The value.
      #
      # @param [nil, 1, 2, 4, 8] size
      #   The size in bytes of the value.
      #
      def initialize(value, size: nil)
        @value = value.to_i
        @size  = size
        @type  = if size then :"imm#{size * 8}"
                 else         :imm
                 end
      end

      #
      # Specifies that the operand is an immediate operand.
      #
      # @return [true]
      #
      def imm? = true

      #
      # Determines if the operand is an 8bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm8?
        @size == 1
      end

      #
      # Determines if the operand is an 16bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm16?
        @size == 2
      end

      #
      # Determines if the operand is an 32bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm32?
        @size == 4
      end

      #
      # Determines if the immediate operand is equal to or compatible with the
      # given type.
      #
      # @param [Symbol] type
      # @return [Boolean]
      #
      # @example
      #   imm32.type_of?(:imm)
      #   # => true
      #   imm32.type_of?(:imm32)
      #   # => true
      #   imm32.type_of?(:imm16)
      #   # => false
      #   imm32.type_of?(:reg32)
      #   # => false
      #
      # @note
      #   Immediate operands without a defined size will match `:imm8`, `:imm16`,
      #   `:imm32`, as a size-less immediate operand can be implicitly typecast
      #   to a sized immediate operand.
      #
      def type_of?(type)
        (@type == type) ||
        (@type == :imm && (
          (type == :imm8  && @value.bit_length <= 8)  ||
          (type == :imm16 && @value.bit_length <= 16) ||
          (type == :imm32 && @value.bit_length <= 32)
        )) ||
        (type == :imm)
      end

      #
      # Changes the size of the immediate operand.
      #
      # @param [Integer] new_size
      #   The new size for the immediate operand.
      #
      # @return [Immediate]
      #   A new immediate operand object with the new size.
      #
      def change_size(new_size)
        self.class.new(@value, size: new_size)
      end

      #
      # Converts the operand to an Integer.
      #
      # @return [Integer]
      #   The value.
      #
      def to_i = @value

      #
      # Converts the operand to a String.
      #
      # @return [String]
      #   The value in String form.
      #
      def to_s = @value.to_s

    end
  end
end
