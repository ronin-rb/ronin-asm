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

require_relative 'template_file'
require_relative 'helpers/ruby'

module CodeGen
  class InstructionsFile < TemplateFile

    include Helpers::Ruby

    # The root directory of the project.
    ROOT = File.expand_path(File.join(__dir__,'..'))

    #
    # Gets or sets the output file.
    #
    # @param [String, nil] new_path
    # @return [String]
    # @raise [NotImplementedError]
    #
    def self.output_file(new_path=nil)
      if new_path
        @output_file = File.join(ROOT,new_path)
        return new_path
      else
        @output_file || raise(NotImplementedError,"output_file was not set in #{self}")
      end
    end

    # The array x86/x86-64 instructions metadata.
    #
    # @return [Array<X86::ISA::Instruction>, Array<X86_64::ISA::Instruction>]
    attr_reader :instructions

    #
    # Initializes the instructions file.
    #
    # @param [Array<X86::ISA::Instruction>,
    #         Array<X86_64::ISA::Instruction>] instructions
    #   The array of x86/x86-64 instructions metadata.
    #
    def initialize(instructions)
      @instructions = instructions

      super(self.class.output_file)
    end

  end
end
