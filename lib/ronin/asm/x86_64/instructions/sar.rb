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
        # Arithmetic Shift Right
        #
        class SAR < Instruction

          #
          # Initializes the `sar` instruction.
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
            super(:sar,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:reg8) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:reg8, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:imm8)
                      [:reg8, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1] == Registers::CL
                      [:reg8, :cl]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:reg16, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:imm8)
                      [:reg16, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1] == Registers::CL
                      [:reg16, :cl]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:reg32, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:imm8)
                      [:reg32, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1] == Registers::CL
                      [:reg32, :cl]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:reg64, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:imm8)
                      [:reg64, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1] == Registers::CL
                      [:reg64, :cl]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:mem8, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:imm8)
                      [:mem8, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1] == Registers::CL
                      [:mem8, :cl]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:mem16, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:imm8)
                      [:mem16, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1] == Registers::CL
                      [:mem16, :cl]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:mem32, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:imm8)
                      [:mem32, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1] == Registers::CL
                      [:mem32, :cl]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && (@operands[1].kind_of?(Immediate) && @operands[1].value == 1)
                      [:mem64, :"1"]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && @operands[1].type_of?(:imm8)
                      [:mem64, :imm8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && @operands[1] == Registers::CL
                      [:mem64, :cl]
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
            when [:reg8, :"1"]
              :sarb
            when [:reg8, :imm8]
              :sarb
            when [:reg8, :cl]
              :sarb
            when [:reg16, :"1"]
              :sarw
            when [:reg16, :imm8]
              :sarw
            when [:reg16, :cl]
              :sarw
            when [:reg32, :"1"]
              :sarl
            when [:reg32, :imm8]
              :sarl
            when [:reg32, :cl]
              :sarl
            when [:reg64, :"1"]
              :sarq
            when [:reg64, :imm8]
              :sarq
            when [:reg64, :cl]
              :sarq
            when [:mem8, :"1"]
              :sarb
            when [:mem8, :imm8]
              :sarb
            when [:mem8, :cl]
              :sarb
            when [:mem16, :"1"]
              :sarw
            when [:mem16, :imm8]
              :sarw
            when [:mem16, :cl]
              :sarw
            when [:mem32, :"1"]
              :sarl
            when [:mem32, :imm8]
              :sarl
            when [:mem32, :cl]
              :sarl
            when [:mem64, :"1"]
              :sarq
            when [:mem64, :imm8]
              :sarq
            when [:mem64, :cl]
              :sarq
            else
              super
            end
          end

          #
          # Encodes the `sar` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg8, :"1"]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd0) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:reg8, :imm8]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xc0) +
              encoder.write_modrm(0b11,7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:reg8, :cl]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd2) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:reg16, :"1"]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:reg16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(0b11,7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:reg16, :cl]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:reg32, :"1"]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:reg32, :imm8]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(0b11,7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:reg32, :cl]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:reg64, :"1"]
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:reg64, :imm8]
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(0b11,7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:reg64, :cl]
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(0b11,7,@operands[0])
            when [:mem8, :"1"]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd0) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            when [:mem8, :imm8]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc0) +
              encoder.write_modrm(@operands[0],7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:mem8, :cl]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd2) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            when [:mem16, :"1"]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            when [:mem16, :imm8]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(@operands[0],7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:mem16, :cl]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            when [:mem32, :"1"]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            when [:mem32, :imm8]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(@operands[0],7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:mem32, :cl]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            when [:mem64, :"1"]
              encoder.write_rex(mandatory: true, w: 1, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd1) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            when [:mem64, :imm8]
              encoder.write_rex(mandatory: true, w: 1, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xc1) +
              encoder.write_modrm(@operands[0],7,@operands[0]) +
              encoder.write_immediate(@operands[1],1)
            when [:mem64, :cl]
              encoder.write_rex(mandatory: true, w: 1, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xd3) +
              encoder.write_modrm(@operands[0],7,@operands[0])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
