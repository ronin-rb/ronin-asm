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

require_relative '../operand'

module Ronin
  module ASM
    module X86
      #
      # Common x86 operand methods.
      #
      # @since 1.0.0
      #
      module Operand
        include ASM::Operand

        #
        # Determines if the operand is a 64bit MMX register.
        #
        # @return [Boolean]
        #
        def mm? = false

        #
        # Determines if the operand is a 128bit XMM register.
        #
        # @return [Boolean]
        #
        def xmm? = false

        #
        # Determines if the operand is a 256bit YMM register.
        #
        # @return [Boolean]
        #
        def ymm? = false

        #
        # Determines if the operand is a 256bit YMM register.
        #
        # @return [Boolean]
        #
        def zmm? = false
      end
    end
  end
end
