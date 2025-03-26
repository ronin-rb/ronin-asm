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
        # Extract Normalized Mantissa from Scalar Double-Precision Floating-Point Value
        #
        class VGETMANTSD < Instruction

          #
          # Initializes the `vgetmantsd` instruction.
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
            super(:vgetmantsd,*operands,**kwargs)

            @form = if @operands.length == 4 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:"xmm{k}{z}", :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem64) && @operands[3].type_of?(:imm8)
                      [:"xmm{k}{z}", :xmm, :mem64, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:xmm, :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem64) && @operands[3].type_of?(:imm8)
                      [:xmm, :xmm, :mem64, :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:"xmm{k}{z}", :xmm, :xmm, :"{sae}", :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:xmm, :xmm, :xmm, :"{sae}", :imm8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vgetmantsd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}{z}", :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x27) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"xmm{k}{z}", :xmm, :mem64, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 8) +
              encoder.write_opcode(0x27) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:xmm, :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x27) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:xmm, :xmm, :mem64, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0x27) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"xmm{k}{z}", :xmm, :xmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x27) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[4],1)
            when [:xmm, :xmm, :xmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x27) +
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
