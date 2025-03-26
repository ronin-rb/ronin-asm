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
        # Convert Packed Quadword Integers to Packed Half-Precision Floating-Point Values
        #
        class VCVTQQ2PH < Instruction

          #
          # Initializes the `vcvtqq2ph` instruction.
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
            super(:vcvtqq2ph,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:"mem128/mem64bcst")
                      [:"xmm{k}{z}", :"mem128/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:"mem256/mem64bcst")
                      [:"xmm{k}{z}", :"mem256/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:"mem512/mem64bcst")
                      [:"xmm{k}{z}", :"mem512/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:ymm)
                      [:"xmm{k}{z}", :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:zmm)
                      [:"xmm{k}{z}", :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:"mem128/mem64bcst")
                      [:xmm, :"mem128/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:"mem256/mem64bcst")
                      [:xmm, :"mem256/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:"mem512/mem64bcst")
                      [:xmm, :"mem512/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm)
                      [:xmm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:ymm)
                      [:xmm, :ymm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:zmm)
                      [:xmm, :zmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"{er}")
                      [:"xmm{k}{z}", :zmm, :"{er}"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"{er}")
                      [:xmm, :zmm, :"{er}"]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vcvtqq2ph` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}{z}", :"mem128/mem64bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 16) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"xmm{k}{z}", :"mem256/mem64bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 32) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"xmm{k}{z}", :"mem512/mem64bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"xmm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"xmm{k}{z}", :ymm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"xmm{k}{z}", :zmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:xmm, :"mem128/mem64bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:xmm, :"mem256/mem64bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:xmm, :"mem512/mem64bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:xmm, :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:xmm, :ymm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:xmm, :zmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"xmm{k}{z}", :zmm, :"{er}"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: @operands[2], w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:xmm, :zmm, :"{er}"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: @operands[2], w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x5b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
