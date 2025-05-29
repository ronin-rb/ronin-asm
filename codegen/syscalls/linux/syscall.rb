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

module CodeGen
  module Syscalls
    module Linux
      #
      # Represents a Linux syscall.
      #
      class Syscall < Data.define(:number, :abi, :name, :entry_point, :compat_entry_point, :no_return, :function_signature)

        #
        # Determines if the syscall ever returns at all.
        #
        # @return [Boolean]
        #
        def no_return? = no_return

        #
        # The arguments that the syscall accepts.
        #
        # @return [Array<FunctionArgument>]
        #
        def arguments
          if function_signature then function_signature.arguments
          else                       []
          end
        end

      end
    end
  end
end
