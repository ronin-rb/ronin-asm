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

require_relative '../immediate'
require_relative 'operand'

module Ronin
  module ASM
    module X86
      #
      # Represents x86 immediate operands.
      #
      # @since 1.0.0
      #
      class Immediate < ASM::Immediate

        include Operand

        #
        # Infers the size of the immediate operand based on the bit length of
        # it's value.
        #
        # @return [1, 2, 4]
        #   The size of the immediate value in bytes.
        #
        # @raise [TypeError]
        #   The immediate's value is larger than 32bits.
        #
        def infer_size
          bit_length = @value.bit_length

          if    bit_length <= 8  then 1
          elsif bit_length <= 16 then 2
          elsif bit_length <= 32 then 4
          else
            raise(TypeError,"immediate operand has a value larger than 32 bits: #{self.inspect}")
          end
        end

        #
        # Converts the immediate into a String.
        #
        # @return [String]
        #
        def to_s = Syntax::Intel.format_immediate(self)

      end
    end
  end
end

require_relative 'syntax/intel'
