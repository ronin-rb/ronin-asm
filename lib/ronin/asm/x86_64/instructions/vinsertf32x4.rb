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
        # Insert 128 Bits of Packed Single-Precision Floating-Point Values
        #
        class VINSERTF32X4 < Instruction

          #
          # Initializes the `vinsertf32x4` instruction.
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

            @form = if @operands.length == 4 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:"ymm{k}{z}", :ymm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:mem128) && @operands[3].type_of?(:imm8)
                      [:"ymm{k}{z}", :ymm, :mem128, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:"zmm{k}{z}", :zmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:mem128) && @operands[3].type_of?(:imm8)
                      [:"zmm{k}{z}", :zmm, :mem128, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:ymm, :ymm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:mem128) && @operands[3].type_of?(:imm8)
                      [:ymm, :ymm, :mem128, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:zmm, :zmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:mem128) && @operands[3].type_of?(:imm8)
                      [:zmm, :zmm, :mem128, :imm8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [vinsertf32x4]
          #
          def name = :vinsertf32x4

          #
          # Encodes the `vinsertf32x4` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"ymm{k}{z}", :ymm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"ymm{k}{z}", :ymm, :mem128, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"zmm{k}{z}", :zmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"zmm{k}{z}", :zmm, :mem128, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:ymm, :ymm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:ymm, :ymm, :mem128, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:zmm, :zmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:zmm, :zmm, :mem128, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x18) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
