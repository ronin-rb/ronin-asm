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

require_relative '../root'
require_relative '../template_file'
require_relative '../helpers/ruby'

require 'set'

module CodeGen
  module Syscalls
    class SyscallsFile < TemplateFile

      include Helpers::Ruby

      #
      # Gets or sets the output file.
      #
      # @param [String, nil] new_path
      # @return [String]
      # @raise [NotImplementedError]
      #
      def self.output_file(new_path=nil)
        if new_path
          @output_file = File.join(ROOT,new_path)
          return new_path
        else
          @output_file || raise(NotImplementedError,"output_file was not set in #{self}")
        end
      end

      # The array of syscalls.
      #
      # @return [Array<Linux::Syscall>,
      #          Array<FreeBSD::Table::Entry>,
      #          Array<NetBSD::Table::Entry>,
      #          Array<OpenBSD::Table::Entry>,
      #          Array<MacOS::Table::Entry>]
      attr_reader :syscalls

      #
      # Initializes the instructions file.
      #
      # @param [Array<Linux::Syscall>,
      #         Array<FreeBSD::Table::Entry>,
      #         Array<NetBSD::Table::Entry>,
      #         Array<OpenBSD::Table::Entry>,
      #         Array<MacOS::Table::Entry>] syscall
      #
      # @param [Array<Linux::Syscall>] instructions
      #   The array of syscalls.
      #
      def initialize(syscalls)
        @syscalls = syscalls

        super(self.class.output_file)
      end

      #
      # Renames certain syscall argument names to avoid conflicting with
      # reserved Ruby keywords.
      #
      # @param [Symbol] name
      #
      # @return [String]
      #
      def syscall_method_arg_name(name)
        # downcase all argument names
        name = name.to_s

        # downcase all uppercase argument names
        name.downcase! if name =~ /\A[A-Z]+\z/

        # append a '_' character if the argument name is a reserved keyword
        name << '_' if reserved_keyword?(name)

        return name
      end

      #
      # Returns the corresponding Ruby method argument names for the syscall.
      #
      # @param [Linux::Syscall,
      #         FreeBSD::Table::Entry,
      #         NetBSD::Table::Entry,
      #         OpenBSD::Table::Entry,
      #         MacOS::Table::Entry] syscall
      # @return [Array<String>]
      #
      def syscall_method_arg_names(syscall)
        arguments = syscall.arguments

        if arguments.length == 1 && !arguments.first.has_name?
          %w[arg]
        else
          arguments.map.with_index do |argument,index|
            if argument.variadic? && !argument.has_name?
              'args'
            elsif argument.name
              syscall_method_arg_name(argument.name)
            else
              "arg#{index + 1}"
            end
          end
        end
      end

      #
      # Generates the list of Ruby method arguments for the syscall's function.
      #
      # @param [Linux::Syscall,
      #         FreeBSD::Table::Entry,
      #         NetBSD::Table::Entry,
      #         OpenBSD::Table::Entry,
      #         MacOS::Table::Entry] syscall
      # @return [String]
      #
      def syscall_method_args(syscall)
        args = syscall_method_arg_names(syscall)

        if (function_signature = syscall.function_signature)
          if function_signature.variadic?
            # add the splat to the last argument if the syscall is variadic.
            args[-1] = "*#{args[-1]}"
          end
        end

        return args.join(',')
      end

    end
  end
end
