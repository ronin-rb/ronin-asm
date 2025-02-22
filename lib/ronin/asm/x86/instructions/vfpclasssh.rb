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
        # Test Class of Scalar Half-Precision Floating-Point Value
        #
        class VFPCLASSSH < Instruction

          #
          # Initializes the `vfpclasssh` instruction.
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
            super(:vfpclasssh,*operands,**kwargs)
          end

          #
          # Encodes the `vfpclasssh` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 3 && @operands[0].type == :"k{k}" && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0x67) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :k && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x67) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :"k{k}" && @operands[1].type == :mem16 && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 4) +
              encoder.write_opcode(0x67) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :k && @operands[1].type == :mem16 && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 4) +
              encoder.write_opcode(0x67) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
