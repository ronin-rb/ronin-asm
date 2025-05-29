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
      module Helpers
        #
        # Helper methods for generating Ruby syscall methods.
        #
        module Syscalls
          #
          # Returns the method argument names for a syscall.
          #
          # @param [Syscall] syscall
          #   The syscall.
          #
          # @return [Array<String>]
          #   The array of method argument names.
          #
          def syscall_method_args(syscall)
            if syscall.function_signature
              arguments = syscall.function_signature.arguments

              if arguments.length == 1 && arguments.first.name.nil?
                %w[arg]
              else
                arguments.map.with_index do |argument,index|
                  argument.name || "arg#{index + 1}"
                end
              end
            else
              []
            end
          end
        end
      end
    end
  end
end
