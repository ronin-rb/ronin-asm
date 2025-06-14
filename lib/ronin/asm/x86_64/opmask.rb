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

require_relative '../x86/opmask'
require_relative 'decorator'

module Ronin
  module ASM
    module X86_64
      #
      # Represents a operand mask decorator (ex: `{k1}` or `{k1}{z}`).
      #
      # @since 1.0.0
      #
      class Opmask < X86::Opmask

        include Decorator

        #
        # Converts the opmask operand decorator into a String.
        #
        # @return [String]
        #
        def to_s = Syntaxes::Intel.format_opmask(self)

      end
    end
  end
end

require_relative 'syntaxes/intel'
