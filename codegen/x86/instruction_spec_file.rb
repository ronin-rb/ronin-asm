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

require_relative '../instruction_spec_file'
require_relative 'helpers/operands_spec_helpers'

module CodeGen
  module X86
    #
    # Represents an instruction spec file within `spec/x86/instructions/`.
    #
    class InstructionSpecFile < CodeGen::InstructionSpecFile

      include Helpers::OperandsSpecHelpers

      template File.join(__dir__,'templates','instruction_spec.rb.erb')
      output_dir 'spec/x86/instructions'

      #
      # Converts the operands to a Ruby Array of their ronin-asm types.
      #
      # @param [Array<ISA::Operand>] operands
      # @return [String]
      #
      def instruction_form_array(operands)
        "[#{operands.map { |operand| operand.ronin_type.inspect }.join(', ')}]"
      end

    end
  end
end
