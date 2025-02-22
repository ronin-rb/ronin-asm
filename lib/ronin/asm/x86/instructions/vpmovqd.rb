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
        # Down Convert Packed Quadword Values to Doubleword Values with Truncation
        #
        class VPMOVQD < Instruction

          #
          # Initializes the `vpmovqd` instruction.
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
            super(:vpmovqd,*operands,**kwargs)
          end

          #
          # Encodes the `vpmovqd` instruction.
          #
          # @param [Encoder] encoder
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 2 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :xmm
              encoder.write_evex(0b010,0b10,0,0,0,0,0b00,0,0,0,@operands[0],@operands[0],nil) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(3,@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :"m64{k}" && @operands[1].type == :xmm
              encoder.write_evex(0b010,0b10,0,0,0,0,0b00,0,0,0,@operands[0],0,8) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :"xmm{k}{z}" && @operands[1].type == :ymm
              encoder.write_evex(0b010,0b10,0,1,0,0,0b00,0,0,0,@operands[0],@operands[0],nil) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(3,@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :"m128{k}" && @operands[1].type == :ymm
              encoder.write_evex(0b010,0b10,0,1,0,0,0b00,0,0,0,@operands[0],0,16) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :"ymm{k}{z}" && @operands[1].type == :zmm
              encoder.write_evex(0b010,0b10,0,2,0,0,0b00,0,0,0,@operands[0],@operands[0],nil) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(3,@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :"m256{k}" && @operands[1].type == :zmm
              encoder.write_evex(0b010,0b10,0,2,0,0,0b00,0,0,0,@operands[0],0,32) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :xmm && @operands[1].type == :xmm
              encoder.write_evex(0b010,0b10,0,0,0,0,0b00,0,0,0,0,0,nil) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(3,@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :xmm && @operands[1].type == :ymm
              encoder.write_evex(0b010,0b10,0,1,0,0,0b00,0,0,0,0,0,nil) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(3,@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :ymm && @operands[1].type == :zmm
              encoder.write_evex(0b010,0b10,0,2,0,0,0b00,0,0,0,0,0,nil) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(3,@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :mem64 && @operands[1].type == :xmm
              encoder.write_evex(0b010,0b10,0,0,0,0,0b00,0,0,0,0,0,8) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :m128 && @operands[1].type == :ymm
              encoder.write_evex(0b010,0b10,0,1,0,0,0b00,0,0,0,0,0,16) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0],@operands)
            elsif @operands.length == 2 && @operands[0].type == :m256 && @operands[1].type == :zmm
              encoder.write_evex(0b010,0b10,0,2,0,0,0b00,0,0,0,0,0,32) +
              encoder.write_opcode(0x35) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0],@operands)
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
