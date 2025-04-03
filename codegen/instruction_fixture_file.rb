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

require_relative 'root'
require_relative 'template_file'
require_relative 'helpers/ruby'

module CodeGen
  #
  # Base class for all instruction
  # `spec/<arch>/instructions/<instruction>_spec.rb` files.
  #
  class InstructionFixtureFile < TemplateFile

    include Helpers::Ruby

    #
    # Gets or sets the output directory.
    #
    # @param [String, nil] new_arch
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

    # The x86/x86-64 instruction metadata.
    #
    # @return [X86::ISA::Instruction, X86_64::ISA::Instruction]
    attr_reader :instruction

    # The specific x86/x86-64 instruction form metadata.
    #
    # @return [X86::ISA::InstructionForm, X86_64::ISA::InstructionForm]
    attr_reader :instruction_form

    #
    # Initializes the instruction file.
    #
    # @param [X86::ISA::Instruction, X86_64::ISA::Instruction] instruction
    #   The x86/x86-64 instruction metadata object.
    #
    # @param [X86::ISA::InstructionForm, X86_64::ISA::InstructionForm] instruction_form
    #   The specific x86/x86-64 instruction form metadata object.
    #
    def initialize(instruction,instruction_form)
      @instruction      = instruction
      @instruction_form = instruction_form

      super(File.join(self.class.output_dir,instruction_filename))
    end

    #
    # Returns the assembly source code filename for the instruction.
    #
    # @return [String]
    #
    # @abstract
    #
    def instruction_filename
      raise(NotImplementedError,"#{self.class}#instruction_filename was not implemented")
    end

  end
end
