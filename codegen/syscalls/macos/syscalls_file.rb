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

require_relative '../syscalls_file'

module CodeGen
  module Syscalls
    module MacOS
      class SyscallsFile < CodeGen::Syscalls::SyscallsFile

        template File.join(__dir__,'templates','syscalls.rb.erb')
        output_file 'lib/ronin/asm/syscalls/macos.rb'

        #
        # Returns a Ruby method argument name for a C function argument.
        #
        # @param [Table::FunctionArgument] arg
        #
        # @return [String]
        #
        def syscall_method_arg_name(arg)
          # NOTE: `in` is a reserved Ruby keyword.
          if arg.name == :in then 'in_'
          else                    arg.name
          end
        end

        #
        # Returns the Array of YARD `@param` tag names for the syscall's
        # arguments.
        #
        # @param [Table::Entry] syscall
        #
        # @return [Array<String>]
        #
        def yard_param_names(syscall)
          function_signature = syscall.function_signature
          arguments          = function_signature.arguments

          if function_signature.variadic?
            *args, variadic = arguments

            args.map(&method(:syscall_method_arg_name)) + [variadic.name]
          else
            arguments.map(&method(:syscall_method_arg_name))
          end
        end

        #
        # Returns the Ruby method arguments for the syscall's function.
        #
        # @param [Table::Entry] syscall
        #
        # @return [Array<String>]
        #
        def syscall_method_args(syscall)
          function_signature = syscall.function_signature
          arguments          = function_signature.arguments

          if syscall.function_signature.variadic?
            *args, variadic = arguments

            args.map(&method(:syscall_method_arg_name)) + ["*#{variadic.name}"]
          else
            arguments.map(&method(:syscall_method_arg_name))
          end
        end

      end
    end
  end
end
