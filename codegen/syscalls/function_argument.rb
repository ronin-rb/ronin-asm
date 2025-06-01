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
  module Syscalls
    #
    # Represents a parsed C argument from the function signature for a syscall.
    #
    class FunctionArgument < Data.define(:type, :name, :variadic)

      #
      # Initializes the function argument.
      #
      # @param [String, nil] type
      # 
      # @param [Symbol, nil] name
      #
      # @param [Boolean] variadic
      #
      def initialize(type: nil, name: nil, variadic: false)
        super(type: type, name: name, variadic: variadic)
      end

      #
      # Parses a C function argument definition.
      #
      # @param [String] string
      # @return [FunctionArgument]
      # @abstract
      #
      def self.parse(string)
        raise(NotImplementedError,"#{self.class}.parse was not implemented")
      end

      #
      # Parses a list of C function arguments.
      #
      # @param [String] string
      # @return [Array<FunctionArgument>]
      #
      def self.parse_list(string)
        case string
        when 'void', ''
          []
        else
          string.split(/\s*,\s*/m).map do |arg|
            parse(arg.strip)
          end
        end
      end

      #
      # Determines if the function argument has a name.
      #
      # @return [Boolean]
      #
      def has_name? = !name.nil?

      #
      # Determines if the function argument is a variadic argument
      # (ex: `...`).
      #
      # @return [Boolean]
      #
      def variadic? = variadic

    end
  end
end
