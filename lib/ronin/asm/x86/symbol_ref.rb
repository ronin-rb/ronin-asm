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

require_relative '../symbol_ref'
require_relative 'operand'

module Ronin
  module ASM
    module X86
      #
      # Represents a reference to a x86 symbol within an assembly program.
      #
      # @since 1.0.0
      #
      class SymbolRef < ASM::SymbolRef

        include Operand

        #
        # The assembly class type for the symbol reference.
        #
        # @return [:rel32]
        #   Defaults to returning a `rel32` type.
        #
        def type = :rel32

        #
        # Converts the symbol reference to an integer.
        #
        # @return [0]
        #   Defaults to returning `0`.
        #
        def to_i = 0

      end
    end
  end
end
