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
        # Rotate Right Logical Without Affecting Flags
        #
        class RORX < Instruction

          #
          # Initializes the `rorx` instruction.
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

            @form = if @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:imm8)
                      [:reg32, :reg32, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32) && @operands[2].type_of?(:imm8)
                      [:reg32, :mem32, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:reg64) && @operands[2].type_of?(:imm8)
                      [:reg64, :reg64, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:mem64) && @operands[2].type_of?(:imm8)
                      [:reg64, :mem64, :imm8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [rorx]
          #
          def name = :rorx

          #
          # Returns the GNU Assembler (GAS) name for the instruction based on
          # it's operands.
          #
          # @return [Symbol]
          #
          def gas_name
            case @form
            when [:reg32, :reg32, :imm8]
              :rorxl
            when [:reg32, :mem32, :imm8]
              :rorxl
            when [:reg64, :reg64, :imm8]
              :rorxq
            when [:reg64, :mem64, :imm8]
              :rorxq
            else
              super
            end
          end

          #
          # Encodes the `rorx` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg32, :reg32, :imm8]
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00011, pp: 0b11, r: @operands[0], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0xf0) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg32, :mem32, :imm8]
              encoder.write_vex(type: :vex, w: 0, l: 0, m_mmmm: 0b00011, pp: 0b11, r: @operands[0], x: @operands[1], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0xf0) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg64, :reg64, :imm8]
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00011, pp: 0b11, r: @operands[0], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0xf0) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg64, :mem64, :imm8]
              encoder.write_vex(type: :vex, w: 1, l: 0, m_mmmm: 0b00011, pp: 0b11, r: @operands[0], x: @operands[1], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0xf0) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
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
