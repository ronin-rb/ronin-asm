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
    module Operand

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

      #
      # Determines if the operand is a 8bit register operand.
      #
      # @return [Boolean]
      #
      def reg8? = false

      #
      # Determines if the operand is a 16bit register operand.
      #
      # @return [Boolean]
      #
      def reg16? = false

      #
      # Determines if the operand is a 32bit register operand.
      #
      # @return [Boolean]
      #
      def reg32? = false

      #
      # Determines if the operand is a 64bit register operand.
      #
      # @return [Boolean]
      #
      def reg64? = false

      #
      # Determines if the operand is a memory operand.
      #
      # @return [Boolean]
      #
      def mem? = false

      #
      # Determines if the operand is a 8bit memory operand.
      #
      # @return [Boolean]
      #
      def mem8? = false

      #
      # Determines if the operand is a 16bit memory operand.
      #
      # @return [Boolean]
      #
      def mem16? = false

      #
      # Determines if the operand is a 32bit memory operand.
      #
      # @return [Boolean]
      #
      def mem32? = false

      #
      # Determines if the operand is a 64bit memory operand.
      #
      # @return [Boolean]
      #
      def mem64? = false

      #
      # Determines if the immediate operand is equal to the given type.
      #
      # @param [Symbol] type
      # @return [Boolean]
      #
      def type_of?(type)
        self.type == type
      end

      #
      # Changes the size of the operand.
      #
      # @return [Operand]
      #
      # @abstract
      #
      def change_size(new_size)
        raise(NotImplementedError,"#{self.class}##{__method__} was not defined")
      end
    end
  end
end
