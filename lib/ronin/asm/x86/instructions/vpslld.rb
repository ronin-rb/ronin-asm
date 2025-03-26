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
        # Shift Packed Doubleword Data Left Logical
        #
        class VPSLLD < Instruction

          #
          # Initializes the `vpslld` instruction.
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
            super(:vpslld,*operands,**kwargs)

            @form = if @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:"mem128/mem32bcst") && @operands[2].type_of?(:imm8)
                      [:"xmm{k}{z}", :"mem128/mem32bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:"mem256/mem32bcst") && @operands[2].type_of?(:imm8)
                      [:"ymm{k}{z}", :"mem256/mem32bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:"mem512/mem32bcst") && @operands[2].type_of?(:imm8)
                      [:"zmm{k}{z}", :"mem512/mem32bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:imm8)
                      [:"xmm{k}{z}", :xmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem128)
                      [:"xmm{k}{z}", :xmm, :mem128]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:imm8)
                      [:"ymm{k}{z}", :ymm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:xmm)
                      [:"ymm{k}{z}", :ymm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:mem128)
                      [:"ymm{k}{z}", :ymm, :mem128]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:imm8)
                      [:"zmm{k}{z}", :zmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:xmm)
                      [:"zmm{k}{z}", :zmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:mem128)
                      [:"zmm{k}{z}", :zmm, :mem128]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:"mem128/mem32bcst") && @operands[2].type_of?(:imm8)
                      [:xmm, :"mem128/mem32bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:imm8)
                      [:xmm, :xmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:imm8)
                      [:xmm, :xmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:xmm, :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:xmm, :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem128)
                      [:xmm, :xmm, :mem128]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem128)
                      [:xmm, :xmm, :mem128]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:"mem256/mem32bcst") && @operands[2].type_of?(:imm8)
                      [:ymm, :"mem256/mem32bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:imm8)
                      [:ymm, :ymm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:imm8)
                      [:ymm, :ymm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:xmm)
                      [:ymm, :ymm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:xmm)
                      [:ymm, :ymm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:mem128)
                      [:ymm, :ymm, :mem128]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:mem128)
                      [:ymm, :ymm, :mem128]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:"mem512/mem32bcst") && @operands[2].type_of?(:imm8)
                      [:zmm, :"mem512/mem32bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:imm8)
                      [:zmm, :zmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:xmm)
                      [:zmm, :zmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:mem128)
                      [:zmm, :zmm, :mem128]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vpslld` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}{z}", :"mem128/mem32bcst", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(@operands[1],6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"ymm{k}{z}", :"mem256/mem32bcst", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 32) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(@operands[1],6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"zmm{k}{z}", :"mem512/mem32bcst", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(@operands[1],6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"xmm{k}{z}", :xmm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"xmm{k}{z}", :xmm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"xmm{k}{z}", :xmm, :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"ymm{k}{z}", :ymm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"ymm{k}{z}", :ymm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"ymm{k}{z}", :ymm, :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"zmm{k}{z}", :zmm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"zmm{k}{z}", :zmm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"zmm{k}{z}", :zmm, :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:xmm, :"mem128/mem32bcst", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(@operands[1],6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:xmm, :xmm, :imm8]
              encoder.write_vex(type: :vex, l: 0, m_mmmm: 0b00001, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[0]) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:xmm, :xmm, :xmm]
              encoder.write_vex(type: :vex, l: 0, m_mmmm: 0b00001, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:xmm, :xmm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:xmm, :xmm, :mem128]
              encoder.write_vex(type: :vex, l: 0, m_mmmm: 0b00001, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:xmm, :xmm, :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:ymm, :"mem256/mem32bcst", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(@operands[1],6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:ymm, :ymm, :imm8]
              encoder.write_vex(type: :vex, l: 1, m_mmmm: 0b00001, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[0]) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:ymm, :ymm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:ymm, :ymm, :xmm]
              encoder.write_vex(type: :vex, l: 1, m_mmmm: 0b00001, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:ymm, :ymm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:ymm, :ymm, :mem128]
              encoder.write_vex(type: :vex, l: 1, m_mmmm: 0b00001, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:ymm, :ymm, :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:zmm, :"mem512/mem32bcst", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(@operands[1],6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:zmm, :zmm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[0], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x72) +
              encoder.write_modrm(0b11,6,@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:zmm, :zmm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:zmm, :zmm, :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0xf2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
