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
        def to_s = Syntax::Intel.format_immediate(self)

      end
    end
  end
end

require_relative 'syntax/intel'
