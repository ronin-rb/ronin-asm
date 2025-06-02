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
      # Handles parsing Linux syscalls `.tbl` files.
      #
      module Table
        #
        # Represents an entry in a Linux syscalls `.tbl` file.
        #
        class Entry < Data.define(:number, :abi, :name, :entry_point, :compat_entry_point, :no_return)

          #
          # Determines if the syscall belongs to the common ABI.
          #
          # @return [Boolean]
          #
          def common?
            abi == :common
          end

          #
          # Determines if the syscall belongs to the 64bit ABI.
          #
          # @return [Boolean]
          #
          def x64?
            abi == :'64'
          end

          #
          # Determines if the syscall belongs to the legacy x32 ABI.
          #
          # @return [Boolean]
          #
          def x32?
            abi == :x32
          end

          #
          # Determines if the syscall belongs to the i386 ABI.
          #
          # @return [Boolean]
          #
          def i386?
            abi == :i386
          end

          #
          # Determines if the syscall ever returns at all.
          #
          # @return [Boolean]
          #
          def no_return? = no_return

        end

        # Regular expression to match and parse the table entry lines.
        ENTRY_REGEX = /\A
          # <number> <abi> <name> [<entry_point> [<compat_entry_point> [noreturn]]]
          (?<number>\d+)
          \s+
          (?<abi>\w+)
          \s+
          (?<name>\w+)
          (?:
            \s+
            (?<entry_point>\w+)
            (?:
              \s+
              (?<compat_entry_point>\w+|-)
              (?:
                \s+
                (?<no_return>noreturn)
              )?
            )?
          )?
        \z/x

        #
        # Parses the contents of a Linux syscalls `.tbl` file.
        #
        # @param [String] path
        #   The path to the `.tbl` file.
        #
        # @return [Array<Entry>]
        #   The parsed syscall table entries.
        #
        def self.parse(path)
          entries = []

          File.open(path) do |file|
            file.each_line(chomp: true) do |line|
              if (match = line.match(ENTRY_REGEX))
                number             = match[:number].to_i
                abi                = match[:abi].to_sym
                name               = match[:name].to_sym
                entry_point        = if match[:entry_point]
                                       match[:entry_point].to_sym
                                     end
                compat_entry_point = if match[:compat_entry_point] &&
                                        match[:compat_entry_point] != '-'
                                       match[:compat_entry_point].to_sym
                                     end
                no_return          = (match[:no_return] == 'noreturn')

                entries << Entry.new(number,abi,name,entry_point,compat_entry_point,no_return)
              end
            end
          end

          return entries
        end
      end
    end
  end
end
