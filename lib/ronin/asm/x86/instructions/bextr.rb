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
        # Bit Field Extract
        #
        class BEXTR < Instruction

          #
          # Initializes the `bextr` instruction.
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

            @form = if @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:imm32)
                      [:reg32, :reg32, :imm32]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:reg32)
                      [:reg32, :reg32, :reg32]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32) && @operands[2].type_of?(:imm32)
                      [:reg32, :mem32, :imm32]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32) && @operands[2].type_of?(:reg32)
                      [:reg32, :mem32, :reg32]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [bextr]
          #
          def name = :bextr

          #
          # Returns the GNU Assembler (GAS) name for the instruction based on
          # it's operands.
          #
          # @return [Symbol]
          #
          def gas_name
            case @form
            when [:reg32, :reg32, :imm32]
              :bextrl
            when [:reg32, :reg32, :reg32]
              :bextrl
            when [:reg32, :mem32, :imm32]
              :bextrl
            when [:reg32, :mem32, :reg32]
              :bextrl
            else
              super
            end
          end

          #
          # Encodes the `bextr` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg32, :reg32, :imm32]
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01010, pp: 0b00, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x10) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],4)
            when [:reg32, :reg32, :reg32]
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00010, pp: 0b00, r: 0, x: 0, b: 0, vvvv: @operands[2]) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg32, :mem32, :imm32]
              encoder.write_vex(type: :xop, w: 0, l: 0, m_mmmm: 0b01010, pp: 0b00, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x10) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],4)
            when [:reg32, :mem32, :reg32]
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00010, pp: 0b00, r: 0, x: 0, b: 0, vvvv: @operands[2]) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
