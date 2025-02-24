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
        # Compute Square Root of Scalar Single-Precision Floating-Point Value
        #
        class VSQRTSS < Instruction

          #
          # Initializes the `vsqrtss` instruction.
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
            super(:vsqrtss,*operands,**kwargs)
          end

          #
          # Encodes the `vsqrtss` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 3 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            elsif @operands.length == 3 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :mem32
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, ll: 0b00, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 4) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_vex(type: :vex, m_mmmm: 0b00001, pp: 0b10, r: @operands[0], b: @operands[2], vvvv: @operands[1]) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :mem32
              encoder.write_vex(type: :vex, m_mmmm: 0b00001, pp: 0b10, r: @operands[0], x: @operands[2], b: @operands[2], vvvv: @operands[1]) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :mem32
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, ll: 0b00, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0, disp8xN: 4) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            elsif @operands.length == 4 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :xmm && @operands[3].type == :"{er}"
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, ll: @operands[3], vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            elsif @operands.length == 4 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm && @operands[3].type == :"{er}"
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, ll: @operands[3], vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x51) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
