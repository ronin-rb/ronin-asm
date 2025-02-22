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
        # Packed Shift Logical Doublewords
        #
        class VPSHLD < Instruction

          #
          # Initializes the `vpshld` instruction.
          #
          # @param [Array<Operand>] operands
          #   The operands for the instruction.
          #
          # @param [Hash{Symbol => Object}] kwargs
          #   Additional keyword arguments for {Instruction#initialize}.
          #
          # @option kwargs [String, nil] :comment
          #   Optional comment for the instruction.
          #
          def initialize(*operands,**kwargs)
            super(:vpshld,*operands,**kwargs)
          end

          #
          # Encodes the `vpshld` instruction.
          #
          # @param [Encoder] encoder
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_vex(:xop,0,0,0b01001,0b00,0,0,0,@operands[2]) +
              encoder.write_opcode(0x96) +
              encoder.write_modrm(3,@operands[0],@operands[1],@operands)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :m128
              encoder.write_vex(:xop,1,0,0b01001,0b00,0,0,0,@operands[1]) +
              encoder.write_opcode(0x96) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :m128 && @operands[2].type == :xmm
              encoder.write_vex(:xop,0,0,0b01001,0b00,0,0,0,@operands[2]) +
              encoder.write_opcode(0x96) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1],@operands)
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
