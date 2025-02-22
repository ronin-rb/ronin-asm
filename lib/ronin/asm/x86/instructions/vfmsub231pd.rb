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
        # Fused Multiply-Subtract of Packed Double-Precision Floating-Point Values
        #
        class VFMSUB231PD < Instruction

          #
          # Initializes the `vfmsub231pd` instruction.
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
            super(:vfmsub231pd,*operands,**kwargs)
          end

          #
          # Encodes the `vfmsub231pd` instruction.
          #
          # @param [Encoder] encoder
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 3 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :"m128/m64bcst"
              encoder.write_evex(0b010,0b01,1,0,@operands[1],0,0b00,0,0,@operands[2],@operands[0],@operands[0],16) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_evex(0b010,0b01,1,0,@operands[1],0,0b00,0,0,0,@operands[0],@operands[0],nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :"ymm{k}{z}" && @operands[1].type == :ymm && @operands[2].type == :"m256/m64bcst"
              encoder.write_evex(0b010,0b01,1,1,@operands[1],0,0b00,0,0,@operands[2],@operands[0],@operands[0],32) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :"ymm{k}{z}" && @operands[1].type == :ymm && @operands[2].type == :ymm
              encoder.write_evex(0b010,0b01,1,1,@operands[1],0,0b00,0,0,0,@operands[0],@operands[0],nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :"zmm{k}{z}" && @operands[1].type == :zmm && @operands[2].type == :"m512/m64bcst"
              encoder.write_evex(0b010,0b01,1,2,@operands[1],0,0b00,0,0,@operands[2],@operands[0],@operands[0],64) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :"zmm{k}{z}" && @operands[1].type == :zmm && @operands[2].type == :zmm
              encoder.write_evex(0b010,0b01,1,nil,@operands[1],0,0b00,0,0,0,@operands[0],@operands[0],nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :"m128/m64bcst"
              encoder.write_evex(0b010,0b01,1,0,@operands[1],0,0b00,0,0,@operands[2],0,0,16) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_vex(:vex,1,0,0b00010,0b01,0,0,0,@operands[1]) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :xmm
              encoder.write_evex(0b010,0b01,1,0,@operands[1],0,0b00,0,0,0,0,0,nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :xmm && @operands[1].type == :xmm && @operands[2].type == :m128
              encoder.write_vex(:vex,1,0,0b00010,0b01,0,0,0,@operands[1]) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :"m256/m64bcst"
              encoder.write_evex(0b010,0b01,1,1,@operands[1],0,0b00,0,0,@operands[2],0,0,32) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :ymm
              encoder.write_vex(:vex,1,1,0b00010,0b01,0,0,0,@operands[1]) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :ymm
              encoder.write_evex(0b010,0b01,1,1,@operands[1],0,0b00,0,0,0,0,0,nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :ymm && @operands[1].type == :ymm && @operands[2].type == :m256
              encoder.write_vex(:vex,1,1,0b00010,0b01,0,0,0,@operands[1]) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :zmm && @operands[1].type == :zmm && @operands[2].type == :"m512/m64bcst"
              encoder.write_evex(0b010,0b01,1,2,@operands[1],0,0b00,0,0,@operands[2],0,0,64) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2],@operands)
            elsif @operands.length == 3 && @operands[0].type == :zmm && @operands[1].type == :zmm && @operands[2].type == :zmm
              encoder.write_evex(0b010,0b01,1,nil,@operands[1],0,0b00,0,0,0,0,0,nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 4 && @operands[0].type == :"zmm{k}{z}" && @operands[1].type == :zmm && @operands[2].type == :zmm && @operands[3].type == :"{er}"
              encoder.write_evex(0b010,0b01,1,@operands[3],@operands[1],0,0b00,0,0,1,@operands[0],@operands[0],nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            elsif @operands.length == 4 && @operands[0].type == :zmm && @operands[1].type == :zmm && @operands[2].type == :zmm && @operands[3].type == :"{er}"
              encoder.write_evex(0b010,0b01,1,@operands[3],@operands[1],0,0b00,0,0,1,0,0,nil) +
              encoder.write_opcode(0xba) +
              encoder.write_modrm(3,@operands[0],@operands[2],@operands)
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
