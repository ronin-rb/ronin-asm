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
    # Base class for all special operands that only have a type and no value.
    #
    # @since 1.0.0
    #
    class SpecialOperand

      include Operand

      # The type of the special operand.
      #
      # @return [Symbol]
      attr_reader :type

      #
      # Initializes the special operand.
      #
      # @param [Symbol] type
      #   The type of the special operand.
      #
      def initialize(type)
        @type = type
      end

    end
  end
end
