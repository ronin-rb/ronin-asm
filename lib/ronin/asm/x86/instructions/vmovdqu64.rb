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
        # Move Unaligned Quadword Values
        #
        class VMOVDQU64 < Instruction

          #
          # Initializes the `vmovdqu64` instruction.
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
            super(:vmovdqu64,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"mem128{k}") && @operands[1].type_of?(:xmm)
                      [:"mem128{k}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"mem256{k}") && @operands[1].type_of?(:ymm)
                      [:"mem256{k}", :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm)
                      [:"ymm{k}{z}", :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"mem512{k}") && @operands[1].type_of?(:zmm)
                      [:"mem512{k}", :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm)
                      [:"zmm{k}{z}", :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:mem128)
                      [:"xmm{k}{z}", :mem128]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:mem256)
                      [:"ymm{k}{z}", :mem256]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:mem512)
                      [:"zmm{k}{z}", :mem512]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm)
                      [:xmm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:mem128)
                      [:xmm, :mem128]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm)
                      [:ymm, :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:mem256)
                      [:ymm, :mem256]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm)
                      [:zmm, :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:mem512)
                      [:zmm, :mem512]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem128) && @operands[1].type_of?(:xmm)
                      [:mem128, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem256) && @operands[1].type_of?(:ymm)
                      [:mem256, :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem512) && @operands[1].type_of?(:zmm)
                      [:mem512, :zmm]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vmovdqu64` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"mem128{k}", :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 16) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"xmm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:"mem256{k}", :ymm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 32) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"ymm{k}{z}", :ymm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:"mem512{k}", :zmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 64) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"zmm{k}{z}", :zmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:"xmm{k}{z}", :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"ymm{k}{z}", :mem256]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 32) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"zmm{k}{z}", :mem512]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:xmm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:xmm, :mem128]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:ymm, :ymm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:ymm, :mem256]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:zmm, :zmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:zmm, :mem512]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x6f) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:mem128, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem256, :ymm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x7f) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem512, :zmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x7f) +
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
