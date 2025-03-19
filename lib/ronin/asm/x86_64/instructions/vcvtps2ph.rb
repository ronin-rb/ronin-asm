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
        # Convert Single-Precision FP value to Half-Precision FP value
        #
        class VCVTPS2PH < Instruction

          #
          # Initializes the `vcvtps2ph` instruction.
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
            super(:vcvtps2ph,*operands,**kwargs)
          end

          #
          # Encodes the `vcvtps2ph` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 3 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :"mem64{k}" && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: 0, disp8xN: 8) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :ymm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :"mem128{k}" && @operands[1].type == :ymm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: 0, disp8xN: 16) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :"ymm{k}{z}" && @operands[1].type == :zmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :"mem256{k}" && @operands[1].type == :zmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: @operands[0], z: 0, disp8xN: 32) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00011, pp: 0b01, r: @operands[1], b: @operands[0], vvvv: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :ymm && @operands[2].type == :imm8
              encoder.write_vex(type: :vex, w: 0, l: 1, m_mmmm: 0b00011, pp: 0b01, r: @operands[1], b: @operands[0], vvvv: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :ymm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :ymm && @operands[1].type == :zmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :mem64 && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00011, pp: 0b01, r: @operands[1], x: @operands[0], b: @operands[0], vvvv: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :mem64 && @operands[1].type == :xmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :mem128 && @operands[1].type == :ymm && @operands[2].type == :imm8
              encoder.write_vex(type: :vex, w: 0, l: 1, m_mmmm: 0b00011, pp: 0b01, r: @operands[1], x: @operands[0], b: @operands[0], vvvv: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :mem128 && @operands[1].type == :ymm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 3 && @operands[0].type == :mem256 && @operands[1].type == :zmm && @operands[2].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 0, aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            elsif @operands.length == 4 && @operands[0].type == :"ymm{k}{z}" && @operands[1].type == :zmm && @operands[2].type == :"{sae}" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[3],1)
            elsif @operands.length == 4 && @operands[0].type == :ymm && @operands[1].type == :zmm && @operands[2].type == :"{sae}" && @operands[3].type == :imm8
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: @operands[1], _B: @operands[0], x: @operands[0], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x1d) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
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
