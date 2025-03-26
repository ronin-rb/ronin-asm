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
        # Gather Packed Quadword Values Using Signed Doubleword Indices
        #
        class VPGATHERDQ < Instruction

          #
          # Initializes the `vpgatherdq` instruction.
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
            super(:vpgatherdq,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"xmm{k}") && @operands[1].type_of?(:vm32x)
                      [:"xmm{k}", :vm32x]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"ymm{k}") && @operands[1].type_of?(:vm32x)
                      [:"ymm{k}", :vm32x]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"zmm{k}") && @operands[1].type_of?(:vm32y)
                      [:"zmm{k}", :vm32y]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:vm32x) && @operands[2].type_of?(:xmm)
                      [:xmm, :vm32x, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:ymm) && @operands[1].type_of?(:vm32x) && @operands[2].type_of?(:ymm)
                      [:ymm, :vm32x, :ymm]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vpgatherdq` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}", :vm32x]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 8) +
              encoder.write_opcode(0x90) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"ymm{k}", :vm32x]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b01, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 8) +
              encoder.write_opcode(0x90) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:"zmm{k}", :vm32y]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b10, w: 1, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 8) +
              encoder.write_opcode(0x90) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:xmm, :vm32x, :xmm]
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00010, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[2]) +
              encoder.write_opcode(0x90) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:ymm, :vm32x, :ymm]
              encoder.write_vex(type: :vex, w: 1, l: 1, m_mmmm: 0b00010, pp: 0b01, r: 0, x: 0, b: 0, vvvv: @operands[2]) +
              encoder.write_opcode(0x90) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
