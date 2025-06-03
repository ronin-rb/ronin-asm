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

require_relative 'immediate'

module Ronin
  module ASM
    #
    # Represents an instruction.
    #
    class Instruction

      # The operands of the instruction.
      #
      # @return [Array<Memory, Register, SymbolRef, Immediate>]
      attr_reader :operands

      # Optional comment for the instruction.
      #
      # @return [String, nil]
      attr_reader :comment

      #
      # Initializes the instruction.
      #
      # @param [Array<Memory, Register, SymbolRef, Immediate>] operands
      #   Operands for the instruction.
      #
      # @param [String, nil] comment
      #   Optional comment for the instruction.
      #
      def initialize(*operands, comment: nil)
        @operands = operands
        @comment  = comment
      end

      #
      # The instruction mnemonic name.
      #
      # @return [Symbol]
      #
      # @abstract
      #
      def name
        raise(NotImplementedError,"#{self.class}#name was not defined")
      end

      #
      # The minimum operand size of instruction.
      #
      # @return [Integer, nil]
      #   The minimum operand size in bytes.
      #
      # @since 1.0.0
      #
      def min_operand_size
        @operands.map { |op|
          op.size if op.respond_to?(:size)
        }.compact.min
      end

      #
      # The maximum operand size of instruction.
      #
      # @return [Integer, nil]
      #   The maximum operand size in bytes.
      #
      # @since 1.0.0
      #
      def max_operand_size
        @operands.map { |op|
          op.size if op.respond_to?(:size)
        }.compact.max
      end

    end
  end
end
