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

require_relative '../../syntax/intel'

module Ronin
  module ASM
    module X86
      module Syntax
        #
        # Intel assembly syntax for x86.
        #
        # @since 1.0.0
        #
        class Intel < ASM::Syntax::Intel

          #
          # Emits a memory operand.
          #
          # @param [Memory] mem
          #   The memory operand.
          #
          # @return [String]
          #   The formatted memory operand.
          #
          def self.format_memory(mem)
            asm = format_register(mem.base)

            if mem.index
              asm << '+' << format_register(mem.index)
              asm << '*' << format_integer(mem.scale) if mem.scale > 1
            end

            if mem.displacement != 0
              sign = if mem.displacement >= 0 then '+'
                     else                          '-'
                     end

              asm << sign << format_integer(mem.displacement)
            end

            asm = "[#{asm}]"

            unless mem.width == mem.base.width
              asm = "#{SIZE_SPECIFIERS[mem.width]} #{asm}"
            end

            return asm
          end

        end
      end
    end
  end
end
