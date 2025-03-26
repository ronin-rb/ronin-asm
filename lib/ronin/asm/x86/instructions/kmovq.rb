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
        # Move 64-bit Mask
        #
        class KMOVQ < Instruction

          #
          # Initializes the `kmovq` instruction.
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
            super(:kmovq,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:k) && @operands[1].type_of?(:k)
                      [:k, :k]
                    elsif @operands.length == 2 && @operands[0].type_of?(:k) && @operands[1].type_of?(:mem64)
                      [:k, :mem64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && @operands[1].type_of?(:k)
                      [:mem64, :k]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `kmovq` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:k, :k]
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00001, pp: 0b00, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x90) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:k, :mem64]
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00001, pp: 0b00, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x90) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:mem64, :k]
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00001, pp: 0b00, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x91) +
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
