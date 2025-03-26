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
          # @raise [ArgumentError]
          #   Incompatible operand types were given.
          #
          def initialize(*operands,**kwargs)
            super(:vpmovsqb,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"mem16{k}") && @operands[1].type_of?(:xmm)
                      [:"mem16{k}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:ymm)
                      [:"xmm{k}{z}", :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"mem32{k}") && @operands[1].type_of?(:ymm)
                      [:"mem32{k}", :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:zmm)
                      [:"xmm{k}{z}", :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"mem64{k}") && @operands[1].type_of?(:zmm)
                      [:"mem64{k}", :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm)
                      [:xmm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:ymm)
                      [:xmm, :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:zmm)
                      [:xmm, :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:xmm)
                      [:mem16, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:ymm)
                      [:mem32, :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && @operands[1].type_of?(:zmm)
                      [:mem64, :zmm]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
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
            case @form
            when [:"xmm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:"mem16{k}", :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 2) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"xmm{k}{z}", :ymm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:"mem32{k}", :ymm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 4) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"xmm{k}{z}", :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:"mem64{k}", :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 8) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:xmm, :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:xmm, :ymm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:xmm, :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:mem16, :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b00, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 2) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem32, :ymm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b01, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 4) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem64, :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b10, w: 0, ll: 0b10, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0x22) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
