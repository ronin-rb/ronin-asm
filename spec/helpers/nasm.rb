require 'tempfile'

module Helpers
  module NASM
    # Check if the `nasm` command is installed at load time.
    @installed = system('command -v nasm >/dev/null')

    #
    # Determines if the `nasm` command is installed.
    #
    # @return [Boolean]
    #
    def self.installed? = @installed

    #
    # Assembles the assembly source code using `nasm`.
    #
    # @param [String] asm
    # @return [Boolean]
    #
    def nasm(asm)
      Tempfile.open(['ronin-asm-','.s']) do |asm_tempfile|
        asm_tempfile.write(asm)
        asm_tempfile.close

        Tempfile.open(['ronin-asm-','.o']) do |output_tempfile|
          system('nasm','-o',output_tempfile.path,asm_tempfile.path)
        end
      end
    end
  end
end
