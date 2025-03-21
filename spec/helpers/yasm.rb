require 'tempfile'

module Helpers
  #
  # Helper methods for running the YASM assembler command (`yasm`) in the specs.
  #
  module YASM
    # Check if the `yasm` command is installed at load time.
    @installed = system('command -v yasm >/dev/null')

    #
    # Determines if the `yasm` command is installed.
    #
    # @return [Boolean]
    #
    def self.installed? = @installed

    # Mapping of architectures to `yasm --machine=` values.
    ARCH_MACHINES = {
      x86:    'x86',
      x86_64: 'amd64'
    }

    # Mapping of syntaxes to `yasm --parser=` values.
    SYNTAX_PARSERS = {
      intel: 'nasm',
      att:   'gas'
    }

    #
    # Assembles the assembly source code using `yasm`.
    #
    # @param [String] asm
    # @param [:x86, :x86_64] arch
    # @param [:intel, :att] syntax
    # @param [:bin, :elf] format
    # @return [Boolean]
    #
    def yasm(asm, arch: :x86_64, syntax: :intel, format: :bin)
      Tempfile.open(['ronin-asm-x86-','.s']) do |asm_tempfile|
        asm_tempfile.write(asm)
        asm_tempfile.close

        Tempfile.open(['ronin-asm-','.o']) do |output_tempfile|
          args = [
            '-f', format.to_s,
            '-a', 'x86',
            '-m', ARCH_MACHINES.fetch(arch),
            '-p', SYNTAX_PARSERS.fetch(syntax)
          ]

          case system('yasm',*args,'-o',output_tempfile.path,asm_tempfile.path)
          when nil   then raise("yasm command not installed")
          when false then raise("failed to assemble program:#{$/}#{$/}#{asm}")
          else            true
          end
        end
      end
    end
  end
end
