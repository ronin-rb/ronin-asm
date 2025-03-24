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

require_relative '../x86/instructions_spec_file'
require_relative 'helpers/operand_spec_examples'

module CodeGen
  module X86_64
    #
    # Represents the instructions spec file at
    # `spec/x86_64/instructions_spec.rb`.
    #
    class InstructionsSpecFile < X86::InstructionsSpecFile

      include Helpers::OperandSpecExamples

      template File.join(__dir__,'templates','instructions_spec.rb.erb')
      output_dir 'spec/x86_64'

    end
  end
end
