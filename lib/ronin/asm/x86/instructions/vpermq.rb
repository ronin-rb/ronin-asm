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
        # Permute Quadword Integers
        #
        class VPERMQ < Instruction

          #
          # Initializes the `vpermq` instruction.
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
            super(*operands,**kwargs)

            @form = if @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:"mem256/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:"ymm{k}{z}", :"mem256/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:"mem512/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:"zmm{k}{z}", :"mem512/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem64bcst")
                      [:"ymm{k}{z}", :ymm, :"mem256/mem64bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:imm8)
                      [:"ymm{k}{z}", :ymm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm)
                      [:"ymm{k}{z}", :ymm, :ymm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem64bcst")
                      [:"zmm{k}{z}", :zmm, :"mem512/mem64bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:imm8)
                      [:"zmm{k}{z}", :zmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm)
                      [:"zmm{k}{z}", :zmm, :zmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:"mem256/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:ymm, :"mem256/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem64bcst")
                      [:ymm, :ymm, :"mem256/mem64bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:imm8)
                      [:ymm, :ymm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm)
                      [:ymm, :ymm, :ymm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:mem256) && @operands[2].type_of?(:imm8)
                      [:ymm, :mem256, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:"mem512/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:zmm, :"mem512/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem64bcst")
                      [:zmm, :zmm, :"mem512/mem64bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:imm8)
                      [:zmm, :zmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm)
                      [:zmm, :zmm, :zmm]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [vpermq]
          #
          def name = :vpermq

          #
          # Encodes the `vpermq` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"ymm{k}{z}", :"mem256/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 32) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"zmm{k}{z}", :"mem512/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"ymm{k}{z}", :ymm, :"mem256/mem64bcst"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 32) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"ymm{k}{z}", :ymm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"ymm{k}{z}", :ymm, :ymm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"zmm{k}{z}", :zmm, :"mem512/mem64bcst"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"zmm{k}{z}", :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"zmm{k}{z}", :zmm, :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:ymm, :"mem256/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:ymm, :ymm, :"mem256/mem64bcst"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:ymm, :ymm, :imm8]
              encoder.write_vex(type: :vex, w: 1, l: 1, m_mmmm: 0b00011, pp: 0b01, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:ymm, :ymm, :ymm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:ymm, :mem256, :imm8]
              encoder.write_vex(type: :vex, w: 1, l: 1, m_mmmm: 0b00011, pp: 0b01, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:zmm, :"mem512/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:zmm, :zmm, :"mem512/mem64bcst"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[2], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:zmm, :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x00) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:zmm, :zmm, :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b10, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x36) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
