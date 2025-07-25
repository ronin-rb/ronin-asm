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

module CodeGen
  module Helpers
    #
    # Helper methods for generating Ruby source code.
    #
    module Ruby
      # List of reserved Ruby keywords.
      RESERVED_KEYWORDS = Set.new(%w[
        class
        module
        def
        alias
        begin
        end
        if
        elsif
        else
        case
        when
        in
        and
        or
        not
        rescue
        break
        next
        return
      ])

      #
      # Determines if the string is a reserved Ruby keyword.
      #
      # @param [String, Symbol] string
      #
      # @return [Boolean]
      #
      def reserved_keyword?(string)
        RESERVED_KEYWORDS.include?(string.to_s)
      end

      #
      # Formats a hex byte.
      #
      # @param [Integer] byte
      # @return [String]
      #
      def hex_byte(byte) = format("0x%.2x", byte)

      #
      # Formats an integer as binary.
      #
      # @param [Integer] integer
      # @param [Integer, nil] bits
      # @return [String]
      def binary(integer, bits: ) = format("0b%.#{bits}b", integer)

      #
      # Outputs either `if` or `elsif` depending on whether the `index` is `0`
      # or greater than `0`.
      #
      # @param [Integer] index
      # @return ["if", "elsif"]
      #
      def if_elsif(index)
        if index == 0 then 'if'
        else               'elsif'
        end
      end

      #
      # Converts a "snake_case" name into an all uppercase "CONSTANT" name.
      #
      # @param [String] name
      # @return [String]
      #
      def constant_name_for(name)
        name.upcase.gsub('-','_')
      end
    end
  end
end
