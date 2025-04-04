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
        # Convert Packed Half-Precision FP Values to Packed Double-Precision FP Values
        #
        class VCVTPH2PD < Instruction

          #
          # Initializes the `vcvtph2pd` instruction.
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
            super(:vcvtph2pd,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:"mem32/mem16bcst")
                      [:"xmm{k}{z}", :"mem32/mem16bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:"mem64/mem16bcst")
                      [:"ymm{k}{z}", :"mem64/mem16bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:"mem128/mem16bcst")
                      [:"zmm{k}{z}", :"mem128/mem16bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"ymm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"ymm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:xmm)
                      [:"zmm{k}{z}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:"mem32/mem16bcst")
                      [:xmm, :"mem32/mem16bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm)
                      [:xmm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:"mem64/mem16bcst")
                      [:ymm, :"mem64/mem16bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:xmm)
                      [:ymm, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:"mem128/mem16bcst")
                      [:zmm, :"mem128/mem16bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:xmm)
                      [:zmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"{sae}")
                      [:"zmm{k}{z}", :xmm, :"{sae}"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"{sae}")
                      [:zmm, :xmm, :"{sae}"]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vcvtph2pd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}{z}", :"mem32/mem16bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"ymm{k}{z}", :"mem64/mem16bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"zmm{k}{z}", :"mem128/mem16bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b10, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"xmm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"ymm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"zmm{k}{z}", :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:xmm, :"mem32/mem16bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:xmm, :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:ymm, :"mem64/mem16bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:ymm, :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b01, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:zmm, :"mem128/mem16bcst"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, ll: 0b10, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: @operands[1], aaa: 0, z: 0) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:zmm, :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"zmm{k}{z}", :xmm, :"{sae}"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x5a) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:zmm, :xmm, :"{sae}"]
              encoder.write_evex(mmm: 0b101, pp: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x5a) +
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
