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
    # Represents a reference to a label within an assembly program.
    #
    # @since 1.0.0
    #
    class LabelRef

      include Operand

      # The label name.
      #
      # @return [String]
      attr_reader :name

      # The label being referenced.
      #
      # @return [Label, nil]
      attr_reader :label

      #
      # Initializes the label reference.
      #
      # @param [String] name
      #   The label's name.
      #
      # @param [Label, nil] label
      #   The label that's being referenced.
      #
      def initialize(name, label: nil)
        @name  = name
        @label = label
      end

      #
      # Determines if the label reference has been unresolved.
      #
      # @return [Boolean]
      #
      # @api private
      #
      def unresolved? = @label.nil?

      #
      # Determines if the label reference has been resolved.
      #
      # @return [Boolean]
      #
      # @api private
      #
      def resolved? = !unresolved?

      #
      # Sets the label.
      #
      # @api private
      #
      def resolve(label)
        @label = label
      end

      #
      # Converts the label reference to a String.
      #
      # @return [String]
      #
      def to_s = @name.to_s

    end
  end
end
