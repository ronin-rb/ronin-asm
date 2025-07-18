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

require_relative '../x86/immediate'
require_relative 'operand'

module Ronin
  module ASM
    module X86_64
      #
      # Represents a x86-64 immediate operand.
      #
      # @since 1.0.0
      #
      class Immediate < X86::Immediate

        include Operand

        #
        # Initializes the x86-64 immediate value.
        #
        # @param [Integer, nil] value
        #   The value.
        #
        # @param [nil, 1, 2, 4, 8] size
        #   The size in bytes of the value.
        #
        # @raise [ArgumentError]
        #   * A value greater than 64bits was given.
        #   * An invalid size was given.
        #
        def initialize(value, size: nil)
          check_value(value)

          super(value, size: size)
        end

        private

        #
        # Checks if the given value is valid.
        #
        # @param [Integer, nil] value
        # @raise [ArgumentError]
        #
        def check_value(value)
          if (value && value.bit_length > 64)
            raise(ArgumentError,"x86-64 does not support immediate values greater than 64bits: #{value.inspect}")
          end
        end

        public

        #
        # Infers the size of the immediate operand based on the bit length of
        # it's value.
        #
        # @return [1, 2, 4, 8]
        #   The size of the immediate value in bytes.
        #
        # @raise [TypeError]
        #   The immediate's value is larger than 64bits.
        #
        def infer_size
          bit_length = @value.bit_length

          if    bit_length <= 8  then 1
          elsif bit_length <= 16 then 2
          elsif bit_length <= 32 then 4
          elsif bit_length <= 64 then 8
          else
            raise(TypeError,"immediate operand has a value larger than 64 bits: #{self.inspect}")
          end
        end

        #
        # Determines if the operand is an 64bit immediate operand.
        #
        # @return [Boolean]
        #
        def imm64?
          @size == 8
        end

        #
        # Determines if the immediate operand is equal to or compatible with the
        # given type.
        #
        # @param [Symbol] type
        # @return [Boolean]
        #
        # @example
        #   imm64.type_of?(:imm)
        #   # => true
        #   imm64.type_of?(:imm64)
        #   # => true
        #   imm64.type_of?(:imm32)
        #   # => false
        #   imm64.type_of?(:reg32)
        #   # => false
        #
        # @note
        #   Immediate operands without a defined size will match `:imm8`,
        #   `:imm16`, `:imm32`, and `:imm64`, as a size-less immediate operand
        #   can be implicitly typecast to a sized immediate operand.
        #
        def type_of?(type)
          (@type == :imm && type == :imm64 && @value.bit_length <= 64) ||
          (@type == :imm64 && type == :imm) ||
          super(type)
        end

        #
        # Converts the immediate into a String.
        #
        # @return [String]
        #
        def to_s = Syntaxes::Intel.format_immediate(self)

      end
    end
  end
end

require_relative 'syntaxes/intel'
