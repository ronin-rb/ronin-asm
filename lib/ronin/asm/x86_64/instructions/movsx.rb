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
        # Move with Sign-Extension
        #
        class MOVSX < Instruction

          #
          # Initializes the `movsx` instruction.
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
            super(:movsx,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg8)
                      [:reg16, :reg8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:mem8)
                      [:reg16, :mem8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg8)
                      [:reg32, :reg8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg16)
                      [:reg32, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem8)
                      [:reg32, :mem8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem16)
                      [:reg32, :mem16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:reg8)
                      [:reg64, :reg8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:reg16)
                      [:reg64, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:mem8)
                      [:reg64, :mem8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:mem16)
                      [:reg64, :mem16]
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
            when [:reg16, :reg8]
              :movsbw
            when [:reg16, :mem8]
              :movsbw
            when [:reg32, :reg8]
              :movsbl
            when [:reg32, :reg16]
              :movswl
            when [:reg32, :mem8]
              :movsbl
            when [:reg32, :mem16]
              :movswl
            when [:reg64, :reg8]
              :movsbq
            when [:reg64, :reg16]
              :movswq
            when [:reg64, :mem8]
              :movsbq
            when [:reg64, :mem16]
              :movswq
            else
              super
            end
          end

          #
          # Encodes the `movsx` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg16, :reg8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbe) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg16, :mem8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbe) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg32, :reg8]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbe) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg32, :reg16]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbf) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg32, :mem8]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbe) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg32, :mem16]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbf) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg64, :reg8]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[0], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbe) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg64, :reg16]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[0], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbf) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg64, :mem8]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbe) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg64, :mem16]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xbf) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
