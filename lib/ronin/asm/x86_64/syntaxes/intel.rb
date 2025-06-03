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

require_relative '../../x86/syntaxes/intel'

module Ronin
  module ASM
    module X86_64
      module Syntaxes
        #
        # Intel assembly syntax for x86-64.
        #
        # @since 1.0.0
        #
        class Intel < X86::Syntaxes::Intel

          #
          # Formats the program's prologue.
          #
          # @param [Program] program
          #   The program.
          #
          # @return [String]
          #   The formatted prologue.
          #
          def self.format_prologue(program) = 'BITS 64'

        end
      end
    end
  end
end
