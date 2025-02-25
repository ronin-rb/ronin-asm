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
    class Immediate < Operand

      # The assembly class type.
      #
      # @return [:imm8, :imm16, :imm32, :imm64]
      attr_reader :type

      # The immediate operand's value.
      #
      # @return [Integer]
      attr_reader :value

      # The width of the immediate operand.
      #
      # @return [1, 2, 4, 8]
      attr_reader :width

      #
      # Initializes a new Immediate Operand.
      #
      # @param [Integer, nil] value
      #   The value.
      #
      # @param [nil, 1, 2, 4, 8] width
      #   The size in bytes of the value.
      #
      def initialize(value, width: nil)
        @value = value.to_i
        @width = width || if @value == 0
                            1
                          else
                            (@value.bit_length / 8.0).ceil
                          end
        @type  = :"imm#{@width * 8}"
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
        @type == :imm8
      end

      #
      # Determines if the operand is an 16bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm16?
        @type == :imm16
      end

      #
      # Determines if the operand is an 32bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm32?
        @type == :imm32
      end

      #
      # Converts the operand to an Integer.
      #
      # @return [Integer]
      #   The value.
      #
      def to_i
        @value
      end

      #
      # Converts the operand to a String.
      #
      # @return [String]
      #   The value in String form.
      #
      def to_s
        @value.to_s
      end

    end
  end
end
