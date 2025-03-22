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
        # Rotate Left
        #
        class ROL < Instruction

          #
          # Initializes the `rol` instruction.
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
            super(:rol,*operands,**kwargs)
          end

          #
          # Encodes the `rol` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            if @operands.length == 2 && @operands[0].type_of?(:reg8) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd0) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:imm8)
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xc0) +
              encoder.write_modrm(0b11,0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1] == Registers::CL
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd2) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:imm8)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(0b11,0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1] == Registers::CL
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:imm8)
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(0b11,0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1] == Registers::CL
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:imm8)
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(0b11,0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1] == Registers::CL
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(0b11,0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd0) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:imm8)
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc0) +
              encoder.write_modrm(@operands[0],0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1] == Registers::CL
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd2) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:imm8)
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(@operands[0],0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1] == Registers::CL
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:imm8)
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(@operands[0],0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1] == Registers::CL
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
              encoder.write_rex(mandatory: true, w: 1, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && @operands[1].type_of?(:imm8)
              encoder.write_rex(mandatory: true, w: 1, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(@operands[0],0,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && @operands[1] == Registers::CL
              encoder.write_rex(mandatory: true, w: 1, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(@operands[0],0,@operands[0])
            else
              raise(ArgumentError,"invalid operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
            end
          end

        end
      end
    end
  end
end
