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
        # Logical Compare
        #
        class TEST < Instruction

          #
          # Initializes the `test` instruction.
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
          def initialize(*operands,**kwargs)
            super(:test,*operands,**kwargs)
          end

          #
          # Encodes the `test` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 2 && @operands[0] == Registers::AL && @operands[1].type_of?(:imm8)
              encoder.write_opcode(0xa8) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:imm8)
              encoder.write_opcode(0xf6) +
              encoder.write_modrm(0b11,0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:reg8)
              encoder.write_opcode(0x84) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0] == Registers::AX && @operands[1].type_of?(:imm16)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0xa9) +
              encoder.write_immediate(@operands[1],2)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:imm16)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(0b11,0,@operands[0]) +
              encoder.write_immediate(@operands[1],2)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x85) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0] == Registers::EAX && @operands[1].type_of?(:imm32)
              encoder.write_opcode(0xa9) +
              encoder.write_immediate(@operands[1],4)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:imm32)
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(0b11,0,@operands[0]) +
              encoder.write_immediate(@operands[1],4)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32)
              encoder.write_opcode(0x85) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:imm8)
              encoder.write_opcode(0xf6) +
              encoder.write_modrm(@operands[0],0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:reg8)
              encoder.write_opcode(0x84) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:imm16)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(@operands[0],0,@operands[0]) +
              encoder.write_immediate(@operands[1],2)
            elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:reg16)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x85) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:imm32)
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(@operands[0],0,@operands[0]) +
              encoder.write_immediate(@operands[1],4)
            elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:reg32)
              encoder.write_opcode(0x85) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
