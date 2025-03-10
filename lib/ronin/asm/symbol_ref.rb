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
    # Represents a reference to a symbol within an assembly program.
    #
    # @since 1.0.0
    #
    class SymbolRef

      include Operand

      # The symbol name.
      #
      # @return [String]
      attr_reader :name

      # The symbol value being referenced.
      #
      # @return [Label, Integer, nil]
      attr_reader :value

      #
      # Initializes the symbol reference.
      #
      # @param [String] name
      #   The symbol's name.
      #
      # @param [Label, Integer, nil] value
      #   The optional symbol value that's being referenced.
      #
      def initialize(name, value: nil)
        @name  = name
        @value = value
      end

      #
      # Determines if the symbol reference has been unresolved.
      #
      # @return [Boolean]
      #
      # @api private
      #
      def unresolved? = @value.nil?

      #
      # Determines if the symbol reference has been resolved.
      #
      # @return [Boolean]
      #
      # @api private
      #
      def resolved? = !unresolved?

      #
      # Sets the symbol's value.
      #
      # @param [Label, Integer] value
      #   The symbol's new value.
      #
      # @api private
      #
      def resolve(value)
        @value = value
      end

      #
      # Converts the symbol reference to a String.
      #
      # @return [String]
      #
      def to_s = @name.to_s

    end
  end
end
