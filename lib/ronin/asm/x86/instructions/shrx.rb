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

#
# NOTE: this file was automatically generated. Do not edit!
#

require_relative '../instruction'

module Ronin
  module ASM
    module X86
      module Instructions
        #
        # Logical Shift Right Without Affecting Flags
        #
        class SHRX < Instruction

          #
          # Initializes the `shrx` instruction.
          #
          # @param [Array<Operand>] operands
          #   The operands for the instruction.
          #
          # @param [Hash{Symbol => Object}] kwargs
          #   Additional keyword arguments.
          #
          # @option kwargs [String, nil] :comment
          #   Optional comment for the instruction.
          #
          def initialize(*operands,**kwargs)
            super(:shrx,*operands,**kwargs)
          end

          #
          # Encodes the `shrx` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:reg32)
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00010, pp: 0b11, r: 0, x: 0, b: 0, vvvv: @operands[2]) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32) && @operands[2].type_of?(:reg32)
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00010, pp: 0b11, r: 0, x: 0, b: 0, vvvv: @operands[2]) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
