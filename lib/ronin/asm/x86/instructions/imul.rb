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
        # Signed Multiply
        #
        class IMUL < Instruction

          #
          # Initializes the `imul` instruction.
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
            super(:imul,*operands,**kwargs)

            @form = if @operands.length == 1 && @operands[0].type_of?(:reg8)
                      [:reg8]
                    elsif @operands.length == 1 && @operands[0].type_of?(:reg16)
                      [:reg16]
                    elsif @operands.length == 1 && @operands[0].type_of?(:reg32)
                      [:reg32]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem8)
                      [:mem8]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem16)
                      [:mem16]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem32)
                      [:mem32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16)
                      [:reg16, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:mem16)
                      [:reg16, :mem16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32)
                      [:reg32, :reg32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32)
                      [:reg32, :mem32]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16) && @operands[2].type_of?(:imm8)
                      [:reg16, :reg16, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16) && @operands[2].type_of?(:imm16)
                      [:reg16, :reg16, :imm16]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:mem16) && @operands[2].type_of?(:imm8)
                      [:reg16, :mem16, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:mem16) && @operands[2].type_of?(:imm16)
                      [:reg16, :mem16, :imm16]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:imm8)
                      [:reg32, :reg32, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:imm32)
                      [:reg32, :reg32, :imm32]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32) && @operands[2].type_of?(:imm8)
                      [:reg32, :mem32, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32) && @operands[2].type_of?(:imm32)
                      [:reg32, :mem32, :imm32]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Returns the GNU Assembler (GAS) name for the instruction based on
          # it's operands.
          #
          # @return [Symbol]
          #
          def gas_name
            case @form
            when [:reg8]
              :imulb
            when [:reg16]
              :imulw
            when [:reg32]
              :imull
            when [:mem8]
              :imulb
            when [:mem16]
              :imulw
            when [:mem32]
              :imull
            when [:reg16, :reg16]
              :imulw
            when [:reg16, :mem16]
              :imulw
            when [:reg32, :reg32]
              :imull
            when [:reg32, :mem32]
              :imull
            when [:reg16, :reg16, :imm8]
              :imulw
            when [:reg16, :reg16, :imm16]
              :imulw
            when [:reg16, :mem16, :imm8]
              :imulw
            when [:reg16, :mem16, :imm16]
              :imulw
            when [:reg32, :reg32, :imm8]
              :imull
            when [:reg32, :reg32, :imm32]
              :imull
            when [:reg32, :mem32, :imm8]
              :imull
            when [:reg32, :mem32, :imm32]
              :imull
            else
              super
            end
          end

          #
          # Encodes the `imul` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg8]
              encoder.write_opcode(0xf6) +
              encoder.write_modrm(0b11,5,@operands[0])
            when [:reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(0b11,5,@operands[0])
            when [:reg32]
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(0b11,5,@operands[0])
            when [:mem8]
              encoder.write_opcode(0xf6) +
              encoder.write_modrm(@operands[0],5,@operands[0])
            when [:mem16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(@operands[0],5,@operands[0])
            when [:mem32]
              encoder.write_opcode(0xf7) +
              encoder.write_modrm(@operands[0],5,@operands[0])
            when [:reg16, :reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xaf) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg16, :mem16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xaf) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg32, :reg32]
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xaf) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg32, :mem32]
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xaf) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg16, :reg16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x6b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg16, :reg16, :imm16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x69) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],2)
            when [:reg16, :mem16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x6b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg16, :mem16, :imm16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x69) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],2)
            when [:reg32, :reg32, :imm8]
              encoder.write_opcode(0x6b) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg32, :reg32, :imm32]
              encoder.write_opcode(0x69) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],4)
            when [:reg32, :mem32, :imm8]
              encoder.write_opcode(0x6b) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg32, :mem32, :imm32]
              encoder.write_opcode(0x69) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],4)
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
