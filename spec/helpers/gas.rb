require 'tempfile'

module Helpers
  #
  # Helper methods for running the GNU Assembler command (`as`) in the specs.
  #
  module GAS
    # Check if the `as` command is installed at load time.
    @installed = system('command -v as >/dev/null')

    #
    # Determines if the `as` command is installed.
    #
    # @return [Boolean]
    #
    def self.installed? = @installed

    #
    # Assemble the x86 assembly source code using the GNU assembler (`as`).
    #
    # @param [String] asm
    # @param [:x86, :x86_64] arch
    # @return [Boolean]
    #
    def gas(asm, arch: :x86_64)
      Tempfile.open(['ronin-asm-', '.s']) do |asm_tempfile|
        asm_tempfile.write(asm)
        asm_tempfile.close

        Tempfile.open(['ronin-asm-','.o']) do |output_tempfile|
          args = []
          args << '--32' if arch == :x86

          case system('as',*args,'-o',output_tempfile.path,asm_tempfile.path)
          when nil   then raise("GNU assembler command (as) not installed")
          when false then raise("failed to assemble program:#{$/}#{$/}#{asm}")
          else            true
          end
        end
      end
    end
  end
end
