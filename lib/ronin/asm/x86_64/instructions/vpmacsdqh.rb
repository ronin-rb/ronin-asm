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
        # Packed Multiply Accumulate Signed High Doubleword to Signed Quadword
        #
        class VPMACSDQH < Instruction

          #
          # Initializes the `vpmacsdqh` instruction.
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
            super(:vpmacsdqh,*operands,**kwargs)

            @form = if @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:xmm)
                      [:xmm, :xmm, :xmm, :xmm]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem128) && @operands[3].type_of?(:xmm)
                      [:xmm, :xmm, :mem128, :xmm]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vpmacsdqh` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:xmm, :xmm, :xmm, :xmm]
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01000, pp: 0b00, r: @operands[0], b: @operands[2], vvvv: @operands[1]) +
              encoder.write_opcode(0x9f) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_register_byte(@operands[3])
            when [:xmm, :xmm, :mem128, :xmm]
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01000, pp: 0b00, r: @operands[0], x: @operands[2], b: @operands[2], vvvv: @operands[1]) +
              encoder.write_opcode(0x9f) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_register_byte(@operands[3])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
