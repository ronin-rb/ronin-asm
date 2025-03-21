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
        # Down Convert Packed Quadword Values to Byte Values with Signed Saturation
        #
        class VPMOVSQB < Instruction

          #
          # Initializes the `vpmovsqb` instruction.
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
            super(:vpmovsqb,*operands,**kwargs)
          end

          #
          # Encodes the `vpmovsqb` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 2 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :"mem16{k}" && @operands[1].type == :xmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: 0, disp8xN: 2) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :ymm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :"mem32{k}" && @operands[1].type == :ymm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: 0, disp8xN: 4) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :zmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :"mem64{k}" && @operands[1].type == :zmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: 0, disp8xN: 8) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :xmm && @operands[1].type == :xmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :xmm && @operands[1].type == :ymm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :xmm && @operands[1].type == :zmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :mem16 && @operands[1].type == :xmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0, disp8xN: 2) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :mem32 && @operands[1].type == :ymm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0, disp8xN: 4) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type == :mem64 && @operands[1].type == :zmm
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
