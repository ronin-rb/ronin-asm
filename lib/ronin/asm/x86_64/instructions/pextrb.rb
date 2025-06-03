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
        # Extract Byte
        #
        class PEXTRB < Instruction

          #
          # Initializes the `pextrb` instruction.
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
            super(*operands,**kwargs)

            @form = if @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:imm8)
                      [:reg32, :xmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:imm8)
                      [:mem8, :xmm, :imm8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [pextrb]
          #
          def name = :pextrb

          #
          # Encodes the `pextrb` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg32, :xmm, :imm8]
              encoder.write_prefix(0x66, mandatory: true) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0x3a) +
              encoder.write_opcode(0x14) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            when [:mem8, :xmm, :imm8]
              encoder.write_prefix(0x66, mandatory: true) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0x3a) +
              encoder.write_opcode(0x14) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
