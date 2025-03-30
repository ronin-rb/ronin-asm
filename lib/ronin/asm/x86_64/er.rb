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

require_relative '../x86/er'
require_relative 'operand'

module Ronin
  module ASM
    module X86_64
      #
      # Base class for all x86-64 `{er}` rounding control decorator operands.
      #
      # * `{rn-sae}` - round to nearest + Suppress All Exceptions (SAE).
      # * `{rd-sae}` - round down + Suppress All Exceptions (SAE).
      # * `{ru-sae}` - round up + Suppress All Exceptions (SAE).
      # * `{rz-sae}` - round towards zero + Suppress All Exceptions (SAE).
      #
      # @since 1.0.0
      #
      class ER < X86::ER

        include Operand

      end
    end
  end
end
