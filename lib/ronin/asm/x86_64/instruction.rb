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

require_relative '../x86/instruction'
require_relative 'operand'

module Ronin
  module ASM
    module X86_64
      #
      # Base class for all x86-64 instructions.
      #
      # @since 1.0.0
      #
      class Instruction < X86::Instruction

        include Operand

        #
        # Converts the instruction into a String.
        #
        # @return [String]
        #
        def to_s = Syntaxes::Intel.format_instruction(self)

      end
    end
  end
end

require_relative 'syntaxes/intel'
