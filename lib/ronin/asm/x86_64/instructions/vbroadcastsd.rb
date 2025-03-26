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
        # Broadcast Double-Precision Floating-Point Element
        #
        class VBROADCASTSD < Instruction

          #
          # Initializes the `vbroadcastsd` instruction.
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
          # @raise [ArgumentError]
          #   Incompatible operand types were given.
          #
          def initialize(*operands,**kwargs)
            super(:vbroadcastsd,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"ymm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"zmm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:mem64)
                      [:"ymm{k}{z}", :mem64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:mem64)
                      [:"zmm{k}{z}", :mem64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:xmm)
                      [:ymm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:xmm)
                      [:ymm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:mem64)
                      [:ymm, :mem64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:mem64)
                      [:ymm, :mem64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:xmm)
                      [:zmm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:mem64)
                      [:zmm, :mem64]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vbroadcastsd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"ymm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"zmm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"ymm{k}{z}", :mem64]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 8) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"zmm{k}{z}", :mem64]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 8) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:ymm, :xmm]
              encoder.write_vex(type: :vex, w: 0, l: 1, m_mmmm: 0b00010, pp: 0b01, r: @operands[0], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:ymm, :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:ymm, :mem64]
              encoder.write_vex(type: :vex, w: 0, l: 1, m_mmmm: 0b00010, pp: 0b01, r: @operands[0], x: @operands[1], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:ymm, :mem64]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:zmm, :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:zmm, :mem64]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0x19) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
