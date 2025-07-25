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
        # Decrement by 1
        #
        class DEC < Instruction

          #
          # Initializes the `dec` instruction.
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

            @form = if @operands.length == 1 && @operands[0].type_of?(:reg8)
                      [:reg8]
                    elsif @operands.length == 1 && @operands[0].type_of?(:reg16)
                      [:reg16]
                    elsif @operands.length == 1 && @operands[0].type_of?(:reg32)
                      [:reg32]
                    elsif @operands.length == 1 && @operands[0].type_of?(:reg64)
                      [:reg64]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem8)
                      [:mem8]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem16)
                      [:mem16]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem32)
                      [:mem32]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem64)
                      [:mem64]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [dec]
          #
          def name = :dec

          #
          # Returns the GNU Assembler (GAS) name for the instruction based on
          # it's operands.
          #
          # @return [Symbol]
          #
          def gas_name
            case @form
            when [:reg8]
              :decb
            when [:reg16]
              :decw
            when [:reg32]
              :decl
            when [:reg64]
              :decq
            when [:mem8]
              :decb
            when [:mem16]
              :decw
            when [:mem32]
              :decl
            when [:mem64]
              :decq
            else
              super
            end
          end

          #
          # Encodes the `dec` instruction.
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
              encoder.write_opcode(0xfe) +
              encoder.write_modrm(0b11,1,@operands[0])
            when [:reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(0b11,1,@operands[0])
            when [:reg32]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(0b11,1,@operands[0])
            when [:reg64]
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(0b11,1,@operands[0])
            when [:mem8]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xfe) +
              encoder.write_modrm(@operands[0],1,@operands[0])
            when [:mem16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(@operands[0],1,@operands[0])
            when [:mem32]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(@operands[0],1,@operands[0])
            when [:mem64]
              encoder.write_rex(mandatory: true, w: 1, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(@operands[0],1,@operands[0])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
