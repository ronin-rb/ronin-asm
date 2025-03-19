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
        # Galois Field (2^8) Affine Inverse Transformation
        #
        class VGF2P8AFFINEINVQB < Instruction

          #
          # Initializes the `vgf2p8affineinvqb` instruction.
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
            super(:vgf2p8affineinvqb,*operands,**kwargs)
          end

          #
          # Encodes the `vgf2p8affineinvqb` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 4 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :"mem128/mem64bcst" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b00, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :xmm && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b00, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :"ymm{k}{z}" && @operands[1].type == :ymm && @operands[2].type == :"mem256/mem64bcst" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 32) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :"ymm{k}{z}" && @operands[1].type == :ymm && @operands[2].type == :ymm && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :"zmm{k}{z}" && @operands[1].type == :zmm && @operands[2].type == :"mem512/mem64bcst" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :"zmm{k}{z}" && @operands[1].type == :zmm && @operands[2].type == :zmm && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :"mem128/mem64bcst" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b00, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm && @operands[3].type == :imm8
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00011, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b00, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :mem128 && @operands[3].type == :imm8
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00011, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :"mem256/mem64bcst" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :ymm && @operands[3].type == :imm8
              encoder.write_vex(type: :vex, w: 1, l: 1, m_mmmm: 0b00011, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :ymm && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :mem256 && @operands[3].type == :imm8
              encoder.write_vex(type: :vex, w: 1, l: 1, m_mmmm: 0b00011, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :zmm && @operands[1].type == :zmm && @operands[2].type == :"mem512/mem64bcst" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :zmm && @operands[1].type == :zmm && @operands[2].type == :zmm && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xcf) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
