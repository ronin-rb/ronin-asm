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

require_relative '../instruction'

module Ronin
  module ASM
    module X86
      #
      # Base class for all x86 instructions.
      #
      # @since 1.0.0
      #
      class Instruction < ASM::Instruction

        # The instruction form based on the operand types.
        #
        # @return [Array<Symbol>]
        attr_reader :form

        #
        # The Intel syntax name for the instruction.
        #
        # @return [Symbol]
        #
        def intel_name = name

        #
        # The GNU Assembler (GAS) name for the instruction.
        #
        # @return [Symbol]
        #
        def gas_name = name

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
