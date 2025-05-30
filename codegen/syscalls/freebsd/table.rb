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

require 'strscan'

module CodeGen
  module Syscalls
    module FreeBSD
      #
      # Handles parsing the FreeBSD `syscalls.master` file.
      #
      module Table
        #
        # Represents an argument in a C function signature.
        #
        class FunctionArgument < Data.define(:type, :name)

          # Regular expression to match the type signature and name of a
          # function argument definition.
          REGEX = /\A
            (?:
              # variadic argument
              (?<type>\.\.\.) |
              # regular argument
              (?<type>
                # SAL 2.0 annotations
                (?:
                  (?:
                     (?:
                      _(?:In|Out|Inout)(?:_z)?(?:_opt)?_ |
                      _In_reads(?:_z|_bytes)?(?:_opt)?_\([^\)]+\) |
                      # NOTE: the '_' after '_opt' is omitted for 'getkerninfo'
                      _Out_writes(?:_z|_bytes)?(?:_opt)?[_]?\([^\)]+\) |
                      _Inout_updates(?:_z|_bytes)?(?:_opt)?_\([^\)]+\) |
                      _Outptr_result_maybenull_
                    )\s+
                  )?
                  (?:(?:_Contains_(?:long_)?(?:ptr_)?(?:timet_)?)\s+)?
                )
                # modifiers
                (?:const\s+)?
                # base type
                (?:
                  # primitive types
                  void | char | int | long |
                  (?:unsigned(?:\s+(?: char | int | long ))?) |
                  # named types
                  (?:struct\s+\w+) |
                  (?:union\s+\w+) |
                  (?:enum\s+\w+) |
                  # typedefs
                  \w+
                )
                # pointers
                (?:\s*\* (?:(?:\s*const)? \s*\*)?)?
              )
              \s*
              (?<name>\w+)?
            )
          \z/x

          #
          # Parses a C function argument string.
          #
          # @param [String] string
          #
          # @return [FunctionArgument]
          #
          def self.parse(string)
            unless (match = string.match(REGEX))
              raise(ArgumentError,"could not parse C function argument: #{string}")
            end

            type = match[:type]
            name = match[:name].to_sym if match[:name]

            return new(type,name)
          end

          #
          # Determines if the function argument is a variadic argument
          # (ex: `...`).
          #
          # @return [Boolean]
          #
          def variadic?
            type == '...'
          end

        end

        #
        # Represents a syscall's C function signature.
        #
        class FunctionSignature < Data.define(:name, :arguments)

          # Regular expression for parsing C function signatures.
          REGEX = /\A(?<return_type>\w+(?:\s*\*)?)\s*(?<name>\w+)\((?<arguments>.*(?=\);))\);\z/m

          #
          # Parses a syscall's C function signature.
          #
          # @param [String] string
          #
          # @return [FunctionSignature]
          #
          def self.parse(string)
            unless (match = string.match(REGEX))
              raise(ArgumentError,"could not parse C function signature: #{string}")
            end

            name      = match[:name].to_sym
            arguments = case match[:arguments]
                        when 'void', ''
                          []
                        else
                          match[:arguments].strip.split(/\s*,\s*/m).map do |arg|
                            FunctionArgument.parse(arg)
                          end
                        end

            return new(name,arguments)
          end

          #
          # Determines if the function accepts variadic arguments.
          #
          # @return [Boolean]
          #
          def variadic?
            !arguments.empty? && arguments.last.variadic?
          end

        end

        #
        # Represents an entry in the FreeBSD `syscalls.master` file.
        #
        class Entry < Data.define(:number, :audit, :types, :name, :function_signature, :alt_name, :alt_tag, :alt_return_type)

          # Regular expression for parsing a FreeBSD syscall entry from the
          # `syscalls.master` file.
          REGEX = /\A
            # number audit types { name | \{ function signature \} } [altname alttag altrtype]
            (?<number>\d+)\s+
            (?<audit>\w+)\s+
            (?<types>
              # main type
              (?:
                STD |
                OBSOL |
                RESERVED |
                UNIMPL |
                SYSMUX |
                COMPAT\d* |
                NODEF |
                NOARGS |
                NOPROTO |
                NOSTD
              )
              # additional modifier types
              (?:\|(?:NOSTD|NOARGS|NOPROTO|NOLIB|NOTSTATIC|CAPENABLED))*
            )\s+
            # syscall function or name
            (?:
              (?: \{ (?<function_signature>[^\}]+) \} )
              |
              (?<name>\w+)
            )
            (?:\s+
              (?<alt_name>\w+)\s+
              (?<alt_tag>\w+)\s+
              (?<alt_return_type>\w+)
            )?
          \z/mx

          #
          # Parses an entry from the FreeBSD `syscalls.master` file.
          #
          # @param [String] string
          #
          # @return [Entry]
          #
          def self.parse(string)
            unless (match = string.match(REGEX))
              raise(ArgumentError,"could not parse FreeBSD syscall entry: #{string}")
            end

            number = match[:number].to_i
            audit  = match[:audit].to_sym
            types  = match[:types].split('|').map(&:to_sym)

            if match[:function_signature]
              function_signature = FunctionSignature.parse(
                match[:function_signature].strip
              )

              name = function_signature.name
            else
              name = match[:name]

              function_signature = nil
            end

            alt_name = if match[:alt_name]
                         match[:alt_name].to_sym
                       end

            alt_tag  = if match[:alt_tag]
                         match[:alt_tag].to_sym
                       end

            alt_return_type = if match[:alt_return_type]
                                match[:alt_return_type].to_sym
                              end

            return new(
              number,
              audit,
              types,
              name,
              function_signature,
              alt_name,
              alt_tag,
              alt_return_type
            )
          end

          #
          # The primary type of the syscall.
          #
          # @return [:STD, :COMPAT, :COMPAT4, :COMPAT6, :COMPAT7, :COMPAT10,
          #          :COMPAT11, :COMPAT12, :COMPAT13, :COMPAT14,
          #          :OBSOL, :RESERVED, :UNIMPL, :NOSTD, :NOARGS, :NODEF,
          #          :NOPROTO, :NOLIB, :NOTSTATIC, :SYSMUX, :CAPENABLED]
          #
          def type = types.first

          #
          # Determines if the syscall number is reserved.
          #
          # @return [Boolean]
          #
          def reserved?
            type == :RESERVED
          end

          #
          # Determines if the syscall is obsolete.
          #
          # @return [Boolean]
          #
          def obsolete?
            type == :OBSOL
          end

          #
          # Determines if the syscall is not implemented.
          #
          # @return [Boolean]
          #
          def unimplemented?
            type == :UNIMPL
          end

        end

        # Path to the FreeBSD `syscalls.master` file.
        PATH = File.join(__dir__,'..','..','..','vendor','syscalls','freebsd','syscalls.master')

        # Regular expression to match entry lines in the `syscalls.master` file.
        ENTRY_REGEX = /
          # number audit types { name | \{ function signature \} }
          ^\d+\s+\w+\s+[\w\|]+\s+(?:\{[^\}]+\}|\w+)$
        /mx

        #
        # Parses the FreeBSD `syscalls.master` file.
        #
        # @param [String] path
        #   Alternate path to the `syscalls.master` file.
        #
        # @return [Array<Entry>]
        #   The parsed syscall table entries.
        #
        def self.parse(path=PATH)
          text    = File.read(path)
          scanner = StringScanner.new(text)
          entries = []

          until scanner.eos?
            if (match = scanner.scan(ENTRY_REGEX))
              entries << Entry.parse(match)
            else
              # skip to the next line
              scanner.skip(/(.*)\n/)
            end
          end

          return entries
        end
      end
    end
  end
end
