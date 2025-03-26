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
        # Set byte if parity even (PF == 1)
        #
        class SETPE < Instruction

          #
          # Initializes the `setpe` instruction.
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
            super(:setpe,*operands,**kwargs)

            @form = if @operands.length == 1 && @operands[0].type_of?(:reg8)
                      [:reg8]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem8)
                      [:mem8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `setpe` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg8]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0x9a) +
              encoder.write_modrm(0b11,0,@operands[0])
            when [:mem8]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0x9a) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
