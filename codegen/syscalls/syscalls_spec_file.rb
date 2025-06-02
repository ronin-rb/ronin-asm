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
    #
    # Base class for all syscalls `spec/syscalls/<os>_spec.rb` or
    # `spec/syscalls/<os>/<arch>_spec.rb` files.
    #
    class SyscallsSpecFile < TemplateFile

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

    end
  end
end
