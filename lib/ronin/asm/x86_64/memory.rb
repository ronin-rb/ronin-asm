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

require_relative '../x86/memory'
require_relative 'operand'

module Ronin
  module ASM
    module X86_64
      #
      # Represents a x86-64 memory operand.
      #
      # @since 1.0.0
      #
      class Memory < X86::Memory

        include Operand

        #
        # Determines if the memory operand is equal to or compatible with the
        # given type.
        #
        # @param [Symbol] type
        # @return [Boolean]
        #
        # @example
        #   mem64.type_of?(:mem)
        #   # => true
        #   mem64.type_of?(:mem64)
        #   # => true
        #   mem64.type_of?(:mem32)
        #   # => false
        #   mem64.type_of?(:reg64)
        #   # => false
        #
        # @note
        #   Memory operands without a defined size will match `:mem8`, `:mem16`,
        #   `:mem32`, and `:mem64`, a size-less memory operands can be implicitly
        #   typecast to a sized memory operand.
        #
        def type_of?(type)
          (type == :sibmem && sibmem?) || super(type)
        end

        #
        # Determines if the operand is scale-index-base memory operand.
        #
        # @return [Boolean]
        #
        def sibmem? = !@scale.nil? && !@index.nil?

        #
        # Converts the memory into a String.
        #
        # @return [String]
        #
        def to_s = Syntax::Intel.format_memory(self)

      end
    end
  end
end

require_relative 'syntax/intel'
