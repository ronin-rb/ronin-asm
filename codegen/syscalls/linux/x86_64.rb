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

require_relative 'table'
require_relative 'header'
require_relative 'syscall'

module CodeGen
  module Syscalls
    module Linux
      module X86_64
        # Path to the Linux 64bit syscalls table.
        PATH = File.join(__dir__,'..','..','..','vendor','syscalls','linux','syscall_64.tbl')

        #
        # Loads the Linux 64bit syscalls table.
        #
        # @return [Array<Syscall>]
        #
        def self.load
          x86_64_syscalls_table = Table.parse(PATH)
          syscalls_header       = Header.parse(arch: :x86_64)

          # NOTE: filter out the legacy x32 syscalls
          x86_64_syscalls_table.reject! { |entry| entry.x32? }

          x86_64_syscalls_table.map do |entry|
            function_signature = syscalls_header[entry.entry_point]

            Syscall.new(
              entry.number,
              entry.abi,
              entry.name,
              entry.entry_point,
              entry.compat_entry_point,
              entry.no_return,
              function_signature
            )
          end
        end
      end
    end
  end
end
