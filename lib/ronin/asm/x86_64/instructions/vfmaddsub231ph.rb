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
        # Fused Multiply-Alternating Add/Subtract of Packed Half-Precision Floating-Point Values
        #
        class VFMADDSUB231PH < Instruction

          #
          # Initializes the `vfmaddsub231ph` instruction.
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
            super(:vfmaddsub231ph,*operands,**kwargs)

            @form = if @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"mem128/mem16bcst")
                      [:"xmm{k}{z}", :xmm, :"mem128/mem16bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem16bcst")
                      [:"ymm{k}{z}", :ymm, :"mem256/mem16bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm)
                      [:"ymm{k}{z}", :ymm, :ymm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem16bcst")
                      [:"zmm{k}{z}", :zmm, :"mem512/mem16bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm)
                      [:"zmm{k}{z}", :zmm, :zmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"mem128/mem16bcst")
                      [:xmm, :xmm, :"mem128/mem16bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:xmm, :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem16bcst")
                      [:ymm, :ymm, :"mem256/mem16bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm)
                      [:ymm, :ymm, :ymm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem16bcst")
                      [:zmm, :zmm, :"mem512/mem16bcst"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm)
                      [:zmm, :zmm, :zmm]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:"{er}")
                      [:"zmm{k}{z}", :zmm, :zmm, :"{er}"]
                    elsif @operands.length == 4 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:"{er}")
                      [:zmm, :zmm, :zmm, :"{er}"]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vfmaddsub231ph` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}{z}", :xmm, :"mem128/mem16bcst"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"xmm{k}{z}", :xmm, :xmm]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"ymm{k}{z}", :ymm, :"mem256/mem16bcst"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"ymm{k}{z}", :ymm, :ymm]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"zmm{k}{z}", :zmm, :"mem512/mem16bcst"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"zmm{k}{z}", :zmm, :zmm]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:xmm, :xmm, :"mem128/mem16bcst"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: 0, z: 0) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:xmm, :xmm, :xmm]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:ymm, :ymm, :"mem256/mem16bcst"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: 0, z: 0) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:ymm, :ymm, :ymm]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:zmm, :zmm, :"mem512/mem16bcst"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: 0, z: 0) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:zmm, :zmm, :zmm]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"zmm{k}{z}", :zmm, :zmm, :"{er}"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: @operands[3], w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:zmm, :zmm, :zmm, :"{er}"]
              encoder.write_evex(mmm: 0b110, pp: 0b01, ll: @operands[3], w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0xb6) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
