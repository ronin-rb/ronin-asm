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

require_relative 'x86/isa'
require_relative 'x86/instruction_file'
require_relative 'x86/instructions_file'
require_relative 'x86/instruction_spec_file'
require_relative 'x86/instructions_spec_file'

if $0 == __FILE__
  require 'fileutils'
  extend FileUtils

  # Load all instructions from the ISA XML file `vendor/isa/x86.xml`.
  instructions = CodeGen::X86::ISA.load

  # Create the `lib/ronin/asm/x86/instructions/` directory and generate the
  # individual instruction Ruby files within it.
  mkdir_p CodeGen::X86::InstructionFile.output_dir
  instructions.each do |instruction|
    CodeGen::X86::InstructionFile.generate(instruction)
  end

  # Generate the `lib/ronin/asm/x86/instructions.rb` file.
  CodeGen::X86::InstructionsFile.generate(instructions)

  # Create the `spec/x86/instructions/` directory and generate the individual
  # spec files within it.
  mkdir_p CodeGen::X86::InstructionSpecFile.output_dir
  instructions.each do |instruction|
    CodeGen::X86::InstructionSpecFile.generate(instruction)
  end

  # Generate the `spec/x86/instructions_spec.rb` file.
  CodeGen::X86::InstructionsSpecFile.generate(instructions)
end
