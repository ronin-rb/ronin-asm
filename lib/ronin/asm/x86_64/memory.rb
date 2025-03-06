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
