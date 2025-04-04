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
        # Range Restriction Calculation For Packed Pairs of Double-Precision Floating-Point Values
        #
        class VRANGEPD < Instruction

          #
          # Initializes the `vrangepd` instruction.
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
            super(:vrangepd,*operands,**kwargs)

            @form = if @operands.length == 4 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"mem128/mem64bcst") && @operands[3].type_of?(:imm8)
                      [:"xmm{k}{z}", :xmm, :"mem128/mem64bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:"xmm{k}{z}", :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem64bcst") && @operands[3].type_of?(:imm8)
                      [:"ymm{k}{z}", :ymm, :"mem256/mem64bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm) && @operands[3].type_of?(:imm8)
                      [:"ymm{k}{z}", :ymm, :ymm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem64bcst") && @operands[3].type_of?(:imm8)
                      [:"zmm{k}{z}", :zmm, :"mem512/mem64bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:imm8)
                      [:"zmm{k}{z}", :zmm, :zmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"mem128/mem64bcst") && @operands[3].type_of?(:imm8)
                      [:xmm, :xmm, :"mem128/mem64bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:xmm, :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem64bcst") && @operands[3].type_of?(:imm8)
                      [:ymm, :ymm, :"mem256/mem64bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm) && @operands[3].type_of?(:imm8)
                      [:ymm, :ymm, :ymm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem64bcst") && @operands[3].type_of?(:imm8)
                      [:zmm, :zmm, :"mem512/mem64bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:imm8)
                      [:zmm, :zmm, :zmm, :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:"zmm{k}{z}", :zmm, :zmm, :"{sae}", :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:zmm, :zmm, :zmm, :"{sae}", :imm8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vrangepd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}{z}", :xmm, :"mem128/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"xmm{k}{z}", :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"ymm{k}{z}", :ymm, :"mem256/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 32) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"ymm{k}{z}", :ymm, :ymm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"zmm{k}{z}", :zmm, :"mem512/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b10, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"zmm{k}{z}", :zmm, :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:xmm, :xmm, :"mem128/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:xmm, :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:ymm, :ymm, :"mem256/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:ymm, :ymm, :ymm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:zmm, :zmm, :"mem512/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b10, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:zmm, :zmm, :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"zmm{k}{z}", :zmm, :zmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[4],1)
            when [:zmm, :zmm, :zmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x50) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[4],1)
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
