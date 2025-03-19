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
        # Packed Rotate Words
        #
        class VPROTW < Instruction

          #
          # Initializes the `vprotw` instruction.
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
            super(:vprotw,*operands,**kwargs)
          end

          #
          # Encodes the `vprotw` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01000, pp: 0b00, r: @operands[0], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01001, pp: 0b00, r: @operands[0], b: @operands[1], vvvv: @operands[2]) +
              encoder.write_opcode(0x91) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :mem128
              encoder.write_vex(type: :xop, w: 1, l: 0, m_mmmm: 0b01001, pp: 0b00, r: @operands[0], x: @operands[2], b: @operands[2], vvvv: @operands[1]) +
              encoder.write_opcode(0x91) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :mem128 && @operands[2].type == :imm8
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01000, pp: 0b00, r: @operands[0], x: @operands[1], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :mem128 && @operands[2].type == :xmm
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01001, pp: 0b00, r: @operands[0], x: @operands[1], b: @operands[1], vvvv: @operands[2]) +
              encoder.write_opcode(0x91) +
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
