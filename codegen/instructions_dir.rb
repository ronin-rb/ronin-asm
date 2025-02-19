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

require 'fileutils'

module CodeGen
  #
  # Represents a `lib/ronin/asm/<arch>/instructions/` directory.
  #
  class InstructionsDir

    # The root directory of the project.
    ROOT = File.expand_path(File.join(__dir__,'..'))

    #
    # Gets or sets the output directory.
    #
    # @param [String, nil] new_path
    # @return [String]
    # @raise [NotImplementedError]
    #
    def self.output_dir(new_path=nil)
      if new_path
        @output_dir = File.join(ROOT,new_path)
        return new_path
      else
        @output_dir || raise(NotImplementedError,"output_dir was not set in #{self}")
      end
    end

    #
    # Gets or sets the {InstructionFile} class that is responsible for
    # generating each instruction within the instruction directory.
    #
    # @param [Class<InstructionFile>, nil] new_class
    # @return [Class<InstructionFile>]
    # @raise [NotImplementedError]
    #
    def self.instruction_file_class(new_class=nil)
      if new_class
        @instruction_file_class = new_class
        return new_class
      else
        @instruction_file_class || raise(NotImplementedError,"instruction_file_class was not set in #{self}")
      end
    end

    # The instructions to generate.
    #
    # @return [Array<#name>]
    attr_reader :instructions

    #
    # Initializes the instruction directory.
    #
    # @param [Array<#name>] instructions
    # @param [String] path
    #
    def initialize(instructions)
      @instructions = instructions
    end

    #
    # Generates the instruction directory.
    #
    # @see #generate
    #
    def self.generate(*arguments)
      new(*arguments).generate
    end

    #
    # Generates the instruction directory and the instruction files within it.
    #
    def generate
      FileUtils.mkdir_p(self.class.output_dir)

      instruction_file_class = self.class.instruction_file_class

      @instructions.each do |instruction|
        instruction_file_class.generate(instruction)
      end
    end

  end
end
