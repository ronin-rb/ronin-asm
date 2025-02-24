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
    module X86_64
      module Instructions
        #
        # Reset Lowest Set Bit
        #
        class BLSR < Instruction

          #
          # Initializes the `blsr` instruction.
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
            super(:blsr,*operands,**kwargs)
          end

          #
          # Encodes the `blsr` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 2 && @operands[0].type == :reg32 && @operands[1].type == :reg32
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00010, pp: 0b00, b: @operands[1], vvvv: @operands[0]) +
              encoder.write_opcode(0xf3) +
              encoder.write_modrm(0b11,1,@operands[1])
            elsif @operands.length == 2 && @operands[0].type == :reg32 && @operands[1].type == :mem32
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00010, pp: 0b00, x: @operands[1], b: @operands[1], vvvv: @operands[0]) +
              encoder.write_opcode(0xf3) +
              encoder.write_modrm(@operands[1],1,@operands[1])
            elsif @operands.length == 2 && @operands[0].type == :reg64 && @operands[1].type == :reg64
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00010, pp: 0b00, b: @operands[1], vvvv: @operands[0]) +
              encoder.write_opcode(0xf3) +
              encoder.write_modrm(0b11,1,@operands[1])
            elsif @operands.length == 2 && @operands[0].type == :reg64 && @operands[1].type == :mem64
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00010, pp: 0b00, x: @operands[1], b: @operands[1], vvvv: @operands[0]) +
              encoder.write_opcode(0xf3) +
              encoder.write_modrm(@operands[1],1,@operands[1])
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
