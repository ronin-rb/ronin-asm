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
    module NetBSD
      #
      # Handles parsing the NetBSD `syscalls.master` file.
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
                # annotations
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
                  (?:_Contains_(?:long_)?(?:ptr_)?(?:timet_)?\s+)?
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
              (?<name>\w+)
              (?:\[(?<array_capacity>\w+)\])?
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

            return_type = match[:return_type]
            name        = match[:name].to_sym
            arguments   = FunctionArgument.parse_list(match[:arguments])

            return new(return_type,name,arguments)
          end

        end

        #
        # Represents an entry in the NetBSD `syscalls.master` file.
        #
        class Entry < Data.define(:number, :type, :rump, :modular, :prefix, :compat, :function_signature, :function_alias, :comment)

          #
          # Initializes the NetBSD syscall table entry.
          #
          # @param [Integer] number
          # @param [Symbol] type
          # @param [Boolean, nil] rump
          # @param [Symbol, nil] modular
          # @param [Symbol, nil] prefix
          # @param [Integer, nil] compat
          # @param [FunctionSignature, nil] function_signature
          # @param [Symbol, nil] function_alias
          # @param [String, nil] comment
          #
          def initialize(number: , type: , # type-dependent optional fields
                                           rump:    nil,
                                           modular: nil,
                                           # function metadata
                                           prefix: nil,
                                           compat: nil,
                                           function_signature: nil,
                                           function_alias:     nil,
                                           # optional comment
                                           comment: nil)
            super(
              number: number,
              type:   type,

              rump:    rump,
              modular: modular,

              prefix: prefix,
              compat: compat,

              function_signature: function_signature,
              function_alias:     function_alias,

              comment: comment
            )
          end

          # Regular expression for parsing a NetBSD syscall entry from the
          # `syscalls.master` file.
          REGEX = /\A
            # number type [type ...] { \{ return_type|prefix|[compat])|basename\(pseudo-proto\); \} [alias] | [comment] }
            (?<number>\d+)\s+
            (?:
              (?:
                (?<type>
                 STD |
                 COMPAT_\d+ |
                 INDIR |
                 NODEF |
                 NOARGS |
                 NOERR |
                 EXTERN
                )\s+
                # type-dependent optional fields
                (?:MODULAR\s+(?<modular>\w+)\s+)?
                (?:(?<rump>RUMP)\s+)?
                (?:\\\n\s+)?
                \{\s+ (?:\\\n\s*)?
                  (?<return_type>\w+(?:\s*\*)?)\s* \|
                  (?<prefix>\w+) \|
                  (?<compat>\w+)? \|
                  (?<basename>\w+) \( (?<pseudo_proto>[^\)]+) \);
                \s+\}
                (?:
                  (?:\s+|\s*\\\n\s+)
                  (?<alias>\w+)
                )?
              )
              |
              (?:
                (?<type>OBSOL | IGNORED | UNIMPL | EXCL)
                (?:\s+(?<comment>.+))?
              )
            )
            # NOTE: some lines have tailing whitespace
            \s*
          \z/mx

          #
          # Parses an entry from the NetBSD `syscalls.master` file.
          #
          # @param [String] string
          #
          # @return [Entry]
          #
          def self.parse(string)
            unless (match = string.match(REGEX))
              raise(ArgumentError,"could not parse NetBSD syscall entry: #{string}")
            end

            number = match[:number].to_i
            type   = match[:type].to_sym

            if match[:return_type] && match[:basename] && match[:pseudo_proto]
              # type-dependent optional fields
              rump    = !match[:rump].nil?
              modular = if match[:modular]
                          match[:modular].to_sym
                        end

              prefix = match[:prefix].to_sym
              compat = if match[:compat]
                         match[:compat].to_i
                       end

              # function signature metadata
              return_type  = match[:return_type]
              basename     = match[:basename]
              pseudo_proto = match[:pseudo_proto].strip.gsub(/\\\n\s*/m,'')

              function_signature = FunctionSignature.parse(
                "#{return_type} #{basename}(#{pseudo_proto});"
              )

              function_alias = if match[:alias]
                                 match[:alias].to_sym
                               end

              return new(
                number:  number,
                type:    type,

                # type-dependent optional fields
                rump:    rump,
                modular: modular,

                prefix: prefix,
                compat: compat,

                # function metadata
                function_signature: function_signature,
                function_alias:     function_alias
              )
            else
              return new(number: number, type: type, comment: match[:comment])
            end
          end

          #
          # Determines if the syscall is a standard syscall.
          #
          # @return [Boolean]
          #
          def std?
            type == :STD
          end

          #
          # Determines if the syscall is a compatibility syscall.
          #
          # @return [Boolean]
          #
          def compat?
            type =~ /\ACOMPAT_\d*\z/
          end

          #
          # Returns the `COMPAT` NetBSD major version number of the system.
          #
          # @return [Integer, nil]
          #   
          def compat_version
            if (match = type.match(/\ACOMPAT_(\d+)\z/))
              match[1].to_i
            end
          end

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
          # Determines if the syscall is ignored.
          #
          # @return [Boolean]
          #
          def ignored?
            type == :IGNORED
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
          # Determines if the syscall is excluded.
          #
          # @return [Boolean]
          #
          def excluded?
            type == :EXCL
          end

          #
          # Determines if the syscall requires a rump entry.
          #
          # @return [Boolean]
          #
          # @see https://wiki.netbsd.org/rumpkernel/
          #
          def rump? = rump

          #
          # The syscall name.
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

        # Path to the NetBSD `syscalls.master` file.
        PATH = File.join(__dir__,'..','..','..','vendor','syscalls','netbsd','syscalls.master')

        #
        # Perform basic pre-processing on the NetBSD `syscalls.master` file.
        #
        # @param [String] path
        #   Alternative path to `syscalls.master`.
        #
        # @param [:x86_64, :x86] arch
        #   The target architecture to pre-process the `syscalls.master` file
        #   as.
        #
        # @return [String]
        #   The pre-processed `syscalls.master` contents.
        #
        def self.preprocess(path=PATH, arch: :x86_64)
          source = File.read(path)

          lp64_regex = /#if !defined\(_LP64\)\n([^#]*)#else\n([^#]*)#endif/m

          if arch == :x86 then source.gsub!(lp64_regex,'\1')
          else                 source.gsub!(lp64_regex,'\2')
          end

          # Enable NTP syscalls.
          source.gsub!(/#if defined(NTP) || !defined(_KERNEL_OPT)\n([^#]*)#else\n([^#]*)#endif/m,'\1')

          return source
        end

        # Regular expression to match entry lines in the `syscalls.master` file.
        ENTRY_REGEX = /
          # number type [...]
          ^\d+\s+\w+[^\n\\]+(?:\\\n[^\n\\]+)*$
        /mx

        #
        # Parses the NetBSD `syscalls.master` file.
        #
        # @param [String] path
        #   Alternate path to the `syscalls.master` file.
        #
        # @param [Hash{Symbol => Object}] kwargs
        #   Additional keyword arguments.
        #
        # @option kwargs [:x86_64, :x86] :arch (:x86_64)
        #   The target architecture to pre-process the `syscalls.master` file
        #   as.
        #
        # @return [Array<Entry>]
        #   The parsed syscall table entries.
        #
        def self.parse(path=PATH,**kwargs)
          text    = preprocess(path,**kwargs)
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
