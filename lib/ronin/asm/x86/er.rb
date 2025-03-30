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

require_relative '../special_operand'
require_relative 'operand'

module Ronin
  module ASM
    module X86
      #
      # Base class for all x86 `{er}` type decorator operands.
      #
      # * `{rn-sae}` - round to nearest + Suppress All Exceptions (SAE).
      # * `{rd-sae}` - round down + Suppress All Exceptions (SAE).
      # * `{ru-sae}` - round up + Suppress All Exceptions (SAE).
      # * `{rz-sae}` - round towards zero + Suppress All Exceptions (SAE).
      #
      # @since 1.0.0
      #
      class ER < ASM::SpecialOperand

        include Operand

        # The specific name of the `{er}` decorator operand.
        #
        # @return [Symbol]
        attr_reader :name

        #
        # Initializes the `{er}` decorator.
        #
        # @param [Symbol] name
        #   The specific name for the `{er}` decorator.
        #
        def initialize(name)
          super(:"{er}")

          @name = name
        end

        #
        # Determines if the operand is of type `{er}`.
        #
        # @return [true]
        #
        def er? = true

        #
        # Converts the `{er}` decorator operand to a String.
        #
        # @return [String]
        #   The string form of {#name}.
        #
        def to_s = @name.to_s

      end
    end
  end
end
