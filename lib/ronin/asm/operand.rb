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

module Ronin
  module ASM
    #
    # Base class for all operands.
    #
    # @abstract
    #
    # @since 1.0.0
    #
    class Operand

      #
      # The Assembly class type (ex: `reg32`).
      #
      # @return [Symbol]
      #
      # @abstract
      #
      def type
        raise(NotImplementedError,"#{self.class}##{__method__} was not defined")
      end

      #
      # Determines if the operand is an immediate operand.
      #
      # @return [Boolean]
      #
      def imm? = false

      #
      # Determines if the operand is a 8bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm8? = false

      #
      # Determines if the operand is a 16bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm16? = false

      #
      # Determines if the operand is a 32bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm32? = false

      #
      # Determines if the operand is a 64bit immediate operand.
      #
      # @return [Boolean]
      #
      def imm64? = false

      #
      # Determines if the operand is a register operand.
      #
      # @return [Boolean]
      #
      def reg? = false

    end
  end
end
