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
        # Approximation to the Exponential 2^x of Packed Double-Precision Floating-Point Values with Less Than 2^-23 Relative Error
        #
        class VEXP2PD < Instruction

          #
          # Initializes the `vexp2pd` instruction.
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
            super(:vexp2pd,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:"mem512/mem64bcst")
                      [:"zmm{k}{z}", :"mem512/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm)
                      [:"zmm{k}{z}", :zmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:"mem512/mem64bcst")
                      [:zmm, :"mem512/mem64bcst"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm)
                      [:zmm, :zmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"zmm{k}{z}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"{sae}")
                      [:"zmm{k}{z}", :zmm, :"{sae}"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:zmm) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"{sae}")
                      [:zmm, :zmm, :"{sae}"]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vexp2pd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"zmm{k}{z}", :"mem512/mem64bcst"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: @operands[0], z: @operands[0], disp8xN: 64) +
              encoder.write_opcode(0xc8) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"zmm{k}{z}", :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xc8) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:zmm, :"mem512/mem64bcst"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0xc8) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:zmm, :zmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xc8) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:"zmm{k}{z}", :zmm, :"{sae}"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xc8) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:zmm, :zmm, :"{sae}"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0xc8) +
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
