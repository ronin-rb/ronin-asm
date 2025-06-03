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
        # Integer Double Precision Shift Right
        #
        class SHRD < Instruction

          #
          # Initializes the `shrd` instruction.
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

            @form = if @operands.length == 3 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16) && @operands[2].type_of?(:imm8)
                      [:reg16, :reg16, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16) && @operands[2] == Registers::CL
                      [:reg16, :reg16, :cl]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:imm8)
                      [:reg32, :reg32, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32) && @operands[2] == Registers::CL
                      [:reg32, :reg32, :cl]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:reg64) && @operands[2].type_of?(:imm8)
                      [:reg64, :reg64, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:reg64) && @operands[2] == Registers::CL
                      [:reg64, :reg64, :cl]
                    elsif @operands.length == 3 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:reg16) && @operands[2].type_of?(:imm8)
                      [:mem16, :reg16, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:reg16) && @operands[2] == Registers::CL
                      [:mem16, :reg16, :cl]
                    elsif @operands.length == 3 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:reg32) && @operands[2].type_of?(:imm8)
                      [:mem32, :reg32, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:reg32) && @operands[2] == Registers::CL
                      [:mem32, :reg32, :cl]
                    elsif @operands.length == 3 && @operands[0].type_of?(:mem64) && @operands[1].type_of?(:reg64) && @operands[2].type_of?(:imm8)
                      [:mem64, :reg64, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:mem64) && @operands[1].type_of?(:reg64) && @operands[2] == Registers::CL
                      [:mem64, :reg64, :cl]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [shrd]
          #
          def name = :shrd

          #
          # Returns the GNU Assembler (GAS) name for the instruction based on
          # it's operands.
          #
          # @return [Symbol]
          #
          def gas_name
            case @form
            when [:reg16, :reg16, :imm8]
              :shrdw
            when [:reg16, :reg16, :cl]
              :shrdw
            when [:reg32, :reg32, :imm8]
              :shrdl
            when [:reg32, :reg32, :cl]
              :shrdl
            when [:reg64, :reg64, :imm8]
              :shrdq
            when [:reg64, :reg64, :cl]
              :shrdq
            when [:mem16, :reg16, :imm8]
              :shrdw
            when [:mem16, :reg16, :cl]
              :shrdw
            when [:mem32, :reg32, :imm8]
              :shrdl
            when [:mem32, :reg32, :cl]
              :shrdl
            when [:mem64, :reg64, :imm8]
              :shrdq
            when [:mem64, :reg64, :cl]
              :shrdq
            else
              super
            end
          end

          #
          # Encodes the `shrd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg16, :reg16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xac) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg16, :reg16, :cl]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xad) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg32, :reg32, :imm8]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xac) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg32, :reg32, :cl]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xad) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg64, :reg64, :imm8]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xac) +
              encoder.write_modrm(0b11,@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            when [:reg64, :reg64, :cl]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xad) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:mem16, :reg16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xac) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            when [:mem16, :reg16, :cl]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xad) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem32, :reg32, :imm8]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xac) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            when [:mem32, :reg32, :cl]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xad) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem64, :reg64, :imm8]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xac) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0]) +
              encoder.write_immediate(@operands[2],1)
            when [:mem64, :reg64, :cl]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x0f) +
              encoder.write_opcode(0xad) +
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
