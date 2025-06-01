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
    module MacOS
      #
      # Handles parsing the macOS `syscalls.master` file.
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
            # return_type name(arguments)[ NO_SYSCALL_STUB ];
            (?<return_type>\w+(?:\s*\*)?)\s*
            (?<name>\w+)
            # NOTE: there are a few function with a space after the name
            \s*
            \(
              (?<arguments>.*(?=\)(?: \s*NO_SYSCALL_STUB\s* )?;))
            \)(?: \s*NO_SYSCALL_STUB\s* )?;
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
        # Represents an entry in the macOS `syscalls.master` file.
        #
        class Entry < Data.define(:number, :audit, :files, :function_signature, :comment)

          #
          # Initializes the NetBSD syscall table entry.
          #
          # @param [Integer] number
          # @param [Symbol] type
          # @param [FunctionSignature, nil] function_signature
          # @param [Symbol, nil] function_alias
          # @param [String, nil] comment
          #
          def initialize(number: , audit: , files: , # function metadata
                                                     function_signature: nil,
                                                     # optional comment
                                                     comment: nil)
            super(
              number: number,
              audit:  audit,
              files:  files,

              function_signature: function_signature,

              comment: comment
            )
          end

          # Regular expression for parsing a macOS syscall entry from the
          # `syscalls.master` file.
          REGEX = /\A
            # number audit files \{ function signature \} [ \{ comment \} ]
            (?<number>\d+)\s+
            (?<audit>\w+)\s+
            (?<files>(?:ALL|[TNHP]+))\s+
            \{ (?<function_signature>[^\}]+) \}
            (?:\s+\{\s+ (?<comment>.+(?=\s+\})) \s+\})?
          \z/mx

          # Mapping of `files` character codes and the actual file names.
          FILE_CODES = {
            'T' => 'init_sysent.c',
            'N' => 'syscalls.c',
            'H' => 'syscall.h',
            'P' => 'sysproto.h'
          }

          #
          # Parses an entry from the macOS `syscalls.master` file.
          #
          # @param [String] string
          #
          # @return [Entry]
          #
          def self.parse(string)
            unless (match = string.match(REGEX))
              raise(ArgumentError,"could not parse macOS syscall entry: #{string}")
            end

            number = match[:number].to_i
            audit  = match[:audit].to_sym
            files  = if match[:files] == 'ALL'
                       FILE_CODES.values
                     else
                       match[:files].each_char.map do |char|
                         FILE_CODES.fetch(char) do
                           raise(ArgumentError,"unknown files character code: #{char.inspect}")
                         end
                       end
                     end

            function_signature = FunctionSignature.parse(
              match[:function_signature].strip
            )

            comment = match[:comment]

            return new(
              number:  number,
              audit:   audit,
              files:   files,

              function_signature: function_signature,

              comment: comment
            )
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

        # Path to the macOS `syscalls.master` file.
        PATH = File.join(__dir__,'..','..','..','vendor','syscalls','macos','syscalls.master')

        #
        # Perform basic pre-processing on the macOS `syscalls.master` file.
        #
        # @param [String] path
        #   Alternative path to `syscalls.master`.
        #
        # @return [String]
        #   The pre-processed `syscalls.master` contents.
        #
        def self.preprocess(path=PATH)
          source = File.read(path)

          # Enable sockets.
          source.gsub!(%r{#if SOCKETS\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable vfork.
          source.gsub!(%r{#if CONFIG_VFORKS\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable NFS.
          source.gsub!(%r{#if NFSSERVER(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable SysV SEM.
          source.gsub!(%r{#if SYSV_SEM(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable SysV MSG.
          source.gsub!(%r{#if SYSV_MSG(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable SysV SHM.
          source.gsub!(%r{#if SYSV_SHM(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable the `identitysvc` syscall.
          source.gsub!(%r{#if CONFIG_EXT_RESOLVER(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Psynch.
          source.gsub!(%r{#if PSYNCH(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable the `sendfile` file.
          source.gsub!(%r{#if SENDFILE(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable MacF.
          source.gsub!(%r{#if CONFIG_MACF(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Embedded.
          source.gsub!(%r{#if CONFIG_EMBEDDED(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Memory Status.
          source.gsub!(%r{#if CONFIG_MEMORYSTATUS(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable the `proc_uuid_policy` syscall.
          source.gsub!(%r{#if CONFIG_PROC_UUID_POLICY(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Coalitions.
          source.gsub!(%r{#if CONFIG_COALITIONS(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable NECP.
          source.gsub!(%r{#if NECP(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable CSR.
          source.gsub!(%r{#if CONFIG_CSR(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Config Decryption.
          source.gsub!(%r{#if CONFIG_CODE_DECRYPTION(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Config Decryption.
          source.gsub!(%r{#if CONFIG_CODE_DECRYPTION(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Networking.
          source.gsub!(%r{#if NETWORKING(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Telemetry.
          source.gsub!(%r{#if CONFIG_TELEMETRY(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable PGO.
          source.gsub!(%r{#if PGO(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable Personas.
          source.gsub!(%r{#if CONFIG_PERSONAS(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          # Enable SKYWALK.
          source.gsub!(%r{#if SKUWALK(?:\s*/\*[^\*]+\*/)?\n([^#]*)#else(?:\s*/\*[^\*]+\*/)?\n([^#]*)#endif(?:\s*/\*[^\*]+\*/)?}m,'\1')

          return source
        end

        # Regular expression to match entry lines in the `syscalls.master` file.
        ENTRY_REGEX = /
          # number type [...]
          ^\d+\s+\w+\s+\w+\s+\{[^\}]+\}(?:\s+\{[^\}]+\})?$
        /mx

        #
        # Parses the macOS `syscalls.master` file.
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
