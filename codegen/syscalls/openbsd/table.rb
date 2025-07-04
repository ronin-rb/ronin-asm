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

require_relative '../function_argument'
require_relative '../function_signature'

require 'strscan'

module CodeGen
  module Syscalls
    module OpenBSD
      #
      # Handles parsing the OpenBSD `syscalls.master` file.
      #
      module Table
        #
        # Represents an argument in a C function signature.
        #
        class FunctionArgument < CodeGen::Syscalls::FunctionArgument

          # Regular expression to match the type signature and name of a
          # function argument definition.
          REGEX = /\A
            (?:
              # NOTE: variadic `...` can preceed a type definition of the
              # variadic arguments.
              (?:(?<variadic>\.\.\.)\s+)?
              # regular argument
              (?<type>
                # modifiers
                (?:const\s+)?
                (?:volatile\s+)?
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
              (?<name>\w+)
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

            type     = match[:type]
            name     = match[:name].to_sym
            variadic = !match[:variadic].nil?

            return new(type: type, name: name, variadic: variadic)
          end

        end

        #
        # Represents a syscall's C function signature.
        #
        class FunctionSignature < CodeGen::Syscalls::FunctionSignature

          # Regular expression for parsing C function signatures.
          REGEX = /\A
            # return_type name(arguments);
            (?<return_type>\w+(?:\s*\*)?)\s*
            sys_(?<name>\w+) \( (?<arguments>.*(?=\);)) \);
          \z/mx

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

            return_type = match[:return_type]
            name        = match[:name].to_sym
            arguments   = FunctionArgument.parse_list(match[:arguments])

            return new(return_type,name,arguments)
          end

        end

        #
        # Represents an entry in the OpenBSD `syscalls.master` file.
        #
        class Entry < Data.define(:number, :types, :function_signature, :function_alias, :comment)

          #
          # Initializes the NetBSD syscall table entry.
          #
          # @param [Integer] number
          # @param [Symbol] type
          # @param [FunctionSignature, nil] function_signature
          # @param [Symbol, nil] function_alias
          # @param [String, nil] comment
          #
          def initialize(number: , types: , # function metadata
                                            function_signature: nil,
                                            function_alias:     nil,
                                            # optional comment
                                            comment: nil)
            super(
              number: number,
              types:  types,

              function_signature: function_signature,
              function_alias:     function_alias,

              comment: comment
            )
          end

          # Regular expression for parsing a OpenBSD syscall entry from the
          # `syscalls.master` file.
          REGEX = /\A
            # number type [type ...] { \{ function signature \} [alias] | [comment] }
            (?<number>\d+)\s+
            (?:
              (?:
                (?<types>STD(?:\s+NOLOCK)? | NODEF | NOARGS)\s+
                (?:\\\n\s+)?
                \{ (?<function_signature>[^\}]+) \}
                (?:
                  (?:\s+|\s*\\\n\s+)
                  (?<alias>\w+)
                )?
              )
              |
              (?:
                (?<types>OBSOL | UNIMPL)
                (?:\s+(?<comment>.+))?
              )
            )
          \z/mx

          #
          # Parses an entry from the OpenBSD `syscalls.master` file.
          #
          # @param [String] string
          #
          # @return [Entry]
          #
          def self.parse(string)
            unless (match = string.match(REGEX))
              raise(ArgumentError,"could not parse OpenBSD syscall entry: #{string}")
            end

            number = match[:number].to_i
            types  = match[:types].split.map(&:to_sym)

            if match[:function_signature]
              # function metadata
              function_signature = FunctionSignature.parse(
                match[:function_signature].strip.gsub(/\\\n\s*/m,'')
              )

              function_alias = if match[:alias]
                                 match[:alias].to_sym
                               end

              name = function_signature.name

              return new(
                number:  number,
                types:   types,

                # function metadata
                function_signature: function_signature,
                function_alias:     function_alias
              )
            else
              return new(number: number, types: types, comment: match[:comment])
            end
          end

          #
          # The primary type of the entry.
          #
          # @return [:STD, :UNIMPL, :OBSOL]
          #
          def type = types.first

          #
          # Determines if the syscall is obsolete.
          #
          # @return [Boolean]
          #
          def obsolete?
            type == :OBSOL
          end

          #
          # Determines if the syscall is unimplemented.
          #
          # @return [Boolean]
          #
          def unimplemented?
            type == :UNIMPL
          end

          #
          # The syscall's name.
          #
          # @return [Symbol, nil]
          #
          def name = function_signature && function_signature.name

          #
          # Determines if the syscall accepts arguments.
          #
          # @return [Boolean]
          #
          def has_arguments?
            function_signature && function_signature.has_arguments?
          end

          #
          # The syscall's arguments.
          #
          # @return [Array<FunctionArgument>]
          #
          def arguments
            if function_signature
              function_signature.arguments
            else
              []
            end
          end

        end

        # Path to the OpenBSD `syscalls.master` file.
        PATH = File.join(__dir__,'..','..','..','vendor','syscalls','openbsd','syscalls.master')

        #
        # Perform basic pre-processing on the OpenBSD `syscalls.master` file.
        #
        # @param [String] path
        #   Alternative path to `syscalls.master`.
        #
        # @return [String]
        #   The pre-processed `syscalls.master` contents.
        #
        def self.preprocess(path=PATH)
          source = File.read(path)

          # Enable ptrace.
          source.gsub!(/#ifdef PTRACE\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          # Enable ktrace.
          source.gsub!(/#ifdef KTRACE\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          # Enable accounting.
          source.gsub!(/#ifdef ACCOUNTING\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          # Enable NFS.
          source.gsub!(/#if defined\(NFSCLIENT\) \|\| defined\(NFSSERVER\)\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          # Enable SysVSEM.
          source.gsub!(/#ifdef SYSVSEM\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          # Enable SysVMMSG
          source.gsub!(/#ifdef SYSVMSG\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          # Enable SysVMSHM
          source.gsub!(/#ifdef SYSVSHM\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          return source
        end

        # Regular expression to match entry lines in the `syscalls.master` file.
        ENTRY_REGEX = /
          # number type [...]
          ^\d+\s+\w+[^\n\\]+(?:\\\n[^\n\\]+)*$
        /mx

        #
        # Parses the OpenBSD `syscalls.master` file.
        #
        # @param [String] path
        #   Alternate path to the `syscalls.master` file.
        #
        # @return [Array<Entry>]
        #   The parsed syscall table entries.
        #
        def self.parse(path=PATH)
          text    = preprocess(path)
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
