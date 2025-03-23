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

require_relative '../x86/instructions_file'

module CodeGen
  module X86_64
    #
    # Represents the `lib/ronin/asm/x86_64/instructions.rb` file.
    #
    class InstructionsFile < X86::InstructionsFile

      template File.join(__dir__,'templates','instructions.rb.erb')
      output_file 'lib/ronin/asm/x86_64/instructions.rb'

      # Example letter registers grouped by register type.
      EXAMPLE_R64_REGISTERS = %w[rax rbx rcx rdx]

      #
      # Returns an example immediate operand.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_immediate(operand_type,index)
        case operand_type
        when :imm64 then format('0x%.16x',index+1)
        else             super(operand_type,index)
        end
      end

      #
      # Returns an example register.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_register(operand_type,index)
        case operand_type
        when :r64 then EXAMPLE_R64_REGISTERS.fetch(index)
        when :tmm then "tmm#{index}"
        when :rax then 'rax'
        else           super(operand_type,index)
        end
      end

      #
      # Returns an example memory register for the base of a memory operand.
      #
      # @param [Integer] index
      # @return [String]
      #
      def example_memory_base_register(index) = example_register(:r64,index)

      #
      # Generates an example `rel32m` operand.
      #
      # @param [Integer] index
      # @return [String]
      #
      def example_rel32m(index) = example_memory(:m8,index)

      #
      # Generates an example `sibmem` operand (a memory operand with scale,
      # index, and base set).
      #
      # @param [Integer] index
      # @return [String]
      #
      def example_sibmem(index)
        memory_operand(
          base:  example_memory_base_register(index),
          index: 'r10'
        )
      end

      #
      # Returns an example ronin-asm operand for the x86-64 ISA opperand.
      #
      # @param [ISA::Operand] operand
      # @return [String]
      #
      def example_operand(operand,index)
        if    operand.rel32m? then example_rel32m(index)
        elsif operand.sibmem? then example_sibmem(index)
        else                       super(operand,index)
        end
      end

    end
  end
end
