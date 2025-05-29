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
    module Linux
      #
      # Handles parsing the Linux `syscalls.h` C header file.
      #
      module Header
        #
        # Represents an argument in a C function signature.
        #
        class FunctionArgument < Data.define(:type, :name)

          # Regular expression to match the type signature and name of a
          # function argument definition.
          REGEX = /\A
            (?<type>
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
              (?:
                (?:\s+__user)? \s*\*
                # NOTE: const and __user can occure before each pointer *
                (?: (?:\s*const)? (?:\s*__user)? \s*\*)*
              )?
            )
            \s*
            (?<name>\w+)?
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
          # Determines if the function argument has a name.
          #
          # @return [Boolean]
          #
          def name? = !name.nil?

        end

        #
        # Represents a syscall's C function signature.
        #
        class FunctionSignature < Data.define(:name, :arguments)

          # Regular expression for parsing C function signatures.
          REGEX = /\Aasmlinkage long (?<name>sys_\w+)\((?<arguments>[^\)]*)\);\z/m

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

        end

        # Path to the Linux `syscalls.h` C header file.
        PATH = File.join(__dir__,'..','..','..','vendor','syscalls','linux','syscalls.h')

        #
        # Perform basic pre-processing on the Linux `syscalls.h` C header file.
        #
        # @param [String] path
        #   Alternative path to `syscalls.h`.
        #
        # @param [:x86_64, :x86] arch
        #   The target architecture to pre-process the `syscalls.h` C header
        #   file as.
        #
        # @return [String]
        #   The pre-processed C source code.
        #
        def self.preprocess(path=PATH, arch: :x86_64)
          # HACK: it is easier to explicitly gsub the `#if`/`#ifdef`/`#ifndef`
          # macros, than using `gcc` or `clang` to preprocess `syscalls.h` which
          # would also require access to the rest of the Linux kernel header
          # files.
          source = File.read(path)

          if arch == :x86_64
            source.gsub!(/#if BITS_PER_LONG == 32\n([^#]*)#endif/m,'')
          else
            source.gsub!(/#if BITS_PER_LONG == 32\n([^#]*)#endif/m,'\1')
          end

          # Enable `fstat64` and `fstatat64` syscalls.
          source.gsub!(/#if defined\(__ARCH_WANT_STAT64\) \|\| defined\(__ARCH_WANT_COMPAT_STAT64\)\n([^#]*)#endif/m,'\1')

          # Enable the `rt_sigaction` syscall.
          source.gsub!(/#ifndef CONFIG_ODD_RT_SIGACTION\n([^#]*)#endif/m,'\1')

          # Prefer the non-backwards compatible version of `clone()`.
          #
          # int sys_clone(unsigned long, unsigned long, int *,
          #               int *, unsigned long);
          source.gsub!(/#ifdef CONFIG_CLONE_BACKWARDS\n([^#]*)#else\n#ifdef CONFIG_CLONE_BACKWARDS3\n([^#]*)#else\n([^#]*)#endif\n#endif/m,'\3')

          # Prefer the `uint64_t mask` version of `fanotify_mark`.
          #
          # int fanotify_mark(int fanotify_fd, unsigned int flags,
	  #                   uint64_t mask, int fd,
	  #                   const char  *pathname);
          source.gsub!(/#if defined\(CONFIG_ARCH_SPLIT_ARG64\)\n([^#]*)#else\n([^#]*)#endif/m,'\2')

          # Enable `utime`, `utimes`, and `futimesat`.
          source.gsub!(/#ifdef __ARCH_WANT_SYS_UTIME\n([^#]*)#endif/m,'\1')

          # Disable `sigsuspend`.
          source.gsub!(/#ifdef CONFIG_OLD_SIGSUSPEND\n([^#]*)#endif/m,'')

          # Disable `sigsuspend`.
          source.gsub!(/#ifdef CONFIG_OLD_SIGSUSPEND3\n([^#]*)#endif/m,'')

          # Disable `sigaction`.
          source.gsub!(/#ifdef CONFIG_OLD_SIGACTION\n([^#]*)#endif/m,'')

          # Disable obsolete 16-suffixed syscalls.
          source.gsub!(/#ifdef CONFIG_HAVE_UID16\n([^#]*)#endif/m,'')

          # Disable `old_getrlimit`.
          source.gsub!(/#ifdef __ARCH_WANT_SYS_OLD_GETRLIMIT\n([^#]*)#endif/m,'')

          return source
        end

        # Regular expression for scanning function signatures in C source code.
        FUNCTION_SIGNATURE_REGEX = /\Aasmlinkage long sys_\w+\([^\)]*\);/m

        #
        # Parses the Linux `syscalls.h` C header file.
        #
        # @param [String] path
        #   Alternative path to `syscalls.h`.
        #
        # @param [Hash{Symbol => Object}] kwargs
        #   Additional keyword arguments.
        #
        # @option kwargs [:x86_64, :x86] :arch (:x86_64)
        #   The target architecture to pre-process the `syscalls.h` C header
        #   file as.
        #
        # @return [Hash{Symbol => FunctionSignature}]
        #   The parsed syscall function signatures.
        #
        def self.parse(path=PATH, **kwargs)
          source  = preprocess(path,**kwargs)
          scanner = StringScanner.new(source)
          entries = {}

          until scanner.eos?
            if (match = scanner.scan(FUNCTION_SIGNATURE_REGEX))
              function_signature = FunctionSignature.parse(match)

              entries[function_signature.name] = function_signature
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
