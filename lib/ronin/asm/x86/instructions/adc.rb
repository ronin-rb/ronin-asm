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
        # Add with Carry
        #
        class ADC < Instruction

          #
          # Initializes the `adc` instruction.
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

            @form = if @operands.length == 2 && @operands[0] == Registers::AL && @operands[1].type_of?(:imm8)
                      [:al, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:imm8)
                      [:reg8, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:reg8)
                      [:reg8, :reg8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:mem8)
                      [:reg8, :mem8]
                    elsif @operands.length == 2 && @operands[0] == Registers::AX && @operands[1].type_of?(:imm16)
                      [:ax, :imm16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:imm8)
                      [:reg16, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:imm16)
                      [:reg16, :imm16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16)
                      [:reg16, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:mem16)
                      [:reg16, :mem16]
                    elsif @operands.length == 2 && @operands[0] == Registers::EAX && @operands[1].type_of?(:imm32)
                      [:eax, :imm32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:imm8)
                      [:reg32, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:imm32)
                      [:reg32, :imm32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32)
                      [:reg32, :reg32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32)
                      [:reg32, :mem32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:imm8)
                      [:mem8, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:reg8)
                      [:mem8, :reg8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:imm8)
                      [:mem16, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:imm16)
                      [:mem16, :imm16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:reg16)
                      [:mem16, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:imm8)
                      [:mem32, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:imm32)
                      [:mem32, :imm32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:reg32)
                      [:mem32, :reg32]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [adc]
          #
          def name = :adc

          #
          # Returns the GNU Assembler (GAS) name for the instruction based on
          # it's operands.
          #
          # @return [Symbol]
          #
          def gas_name
            case @form
            when [:al, :imm8]
              :adcb
            when [:reg8, :imm8]
              :adcb
            when [:reg8, :reg8]
              :adcb
            when [:reg8, :mem8]
              :adcb
            when [:ax, :imm16]
              :adcw
            when [:reg16, :imm8]
              :adcw
            when [:reg16, :imm16]
              :adcw
            when [:reg16, :reg16]
              :adcw
            when [:reg16, :mem16]
              :adcw
            when [:eax, :imm32]
              :adcl
            when [:reg32, :imm8]
              :adcl
            when [:reg32, :imm32]
              :adcl
            when [:reg32, :reg32]
              :adcl
            when [:reg32, :mem32]
              :adcl
            when [:mem8, :imm8]
              :adcb
            when [:mem8, :reg8]
              :adcb
            when [:mem16, :imm8]
              :adcw
            when [:mem16, :imm16]
              :adcw
            when [:mem16, :reg16]
              :adcw
            when [:mem32, :imm8]
              :adcl
            when [:mem32, :imm32]
              :adcl
            when [:mem32, :reg32]
              :adcl
            else
              super
            end
          end

          #
          # Encodes the `adc` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:al, :imm8]
              encoder.write_opcode(0x14) +
              encoder.write_immediate(@operands[1],1)
            when [:reg8, :imm8]
              encoder.write_opcode(0x80) +
              encoder.write_modrm(0b11,2,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:reg8, :reg8]
              encoder.write_opcode(0x10) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg8, :mem8]
              encoder.write_opcode(0x12) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:ax, :imm16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x15) +
              encoder.write_immediate(@operands[1],2)
            when [:reg16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x83) +
              encoder.write_modrm(0b11,2,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:reg16, :imm16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x81) +
              encoder.write_modrm(0b11,2,@operands[0]) +
              encoder.write_immediate(@operands[1],2)
            when [:reg16, :reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x11) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg16, :mem16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x13) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:eax, :imm32]
              encoder.write_opcode(0x15) +
              encoder.write_immediate(@operands[1],4)
            when [:reg32, :imm8]
              encoder.write_opcode(0x83) +
              encoder.write_modrm(0b11,2,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:reg32, :imm32]
              encoder.write_opcode(0x81) +
              encoder.write_modrm(0b11,2,@operands[0]) +
              encoder.write_immediate(@operands[1],4)
            when [:reg32, :reg32]
              encoder.write_opcode(0x11) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg32, :mem32]
              encoder.write_opcode(0x13) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:mem8, :imm8]
              encoder.write_opcode(0x80) +
              encoder.write_modrm(@operands[0],2,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:mem8, :reg8]
              encoder.write_opcode(0x10) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x83) +
              encoder.write_modrm(@operands[0],2,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:mem16, :imm16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x81) +
              encoder.write_modrm(@operands[0],2,@operands[0]) +
              encoder.write_immediate(@operands[1],2)
            when [:mem16, :reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_opcode(0x11) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem32, :imm8]
              encoder.write_opcode(0x83) +
              encoder.write_modrm(@operands[0],2,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:mem32, :imm32]
              encoder.write_opcode(0x81) +
              encoder.write_modrm(@operands[0],2,@operands[0]) +
              encoder.write_immediate(@operands[1],4)
            when [:mem32, :reg32]
              encoder.write_opcode(0x11) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
