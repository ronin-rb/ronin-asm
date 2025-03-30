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
      # Base class for the x86-64 `{sae}` Suppress All Exceptions (SAE)
      # decorator operand.
      #
      # @since 1.0.0
      #
      class SAE < ASM::SpecialOperand

        include Operand

        #
        # Initializes the `{sae}` decorator.
        #
        # @param [Symbol] name
        #   The specific name for the `{sae}` decorator.
        #
        def initialize
          super(:"{sae}")
        end

        #
        # Returns the name of the `{sae}` decorator operand.
        #
        # @return [Symbol]
        #
        def name = :"{sae}"

        #
        # Determines if the operand is of type `{sae}".
        #
        # @return [true]
        #
        def sae? = true

      end
    end
  end
end
