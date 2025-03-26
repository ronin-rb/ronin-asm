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
        # Exchange Register/Memory with Register
        #
        class XCHG < Instruction

          #
          # Initializes the `xchg` instruction.
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
            super(:xchg,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:reg8)
                      [:reg8, :reg8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg8) && @operands[1].type_of?(:mem8)
                      [:reg8, :mem8]
                    elsif @operands.length == 2 && @operands[0] == Registers::AX && @operands[1].type_of?(:reg16)
                      [:ax, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1] == Registers::AX
                      [:reg16, :ax]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:reg16)
                      [:reg16, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg16) && @operands[1].type_of?(:mem16)
                      [:reg16, :mem16]
                    elsif @operands.length == 2 && @operands[0] == Registers::EAX && @operands[1].type_of?(:reg32)
                      [:eax, :reg32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1] == Registers::EAX
                      [:reg32, :eax]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:reg32)
                      [:reg32, :reg32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32)
                      [:reg32, :mem32]
                    elsif @operands.length == 2 && @operands[0] == Registers::RAX && @operands[1].type_of?(:reg64)
                      [:rax, :reg64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1] == Registers::RAX
                      [:reg64, :rax]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:reg64)
                      [:reg64, :reg64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:mem64)
                      [:reg64, :mem64]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem8) && @operands[1].type_of?(:reg8)
                      [:mem8, :reg8]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem16) && @operands[1].type_of?(:reg16)
                      [:mem16, :reg16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:reg32)
                      [:mem32, :reg32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem64) && @operands[1].type_of?(:reg64)
                      [:mem64, :reg64]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `xchg` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg8, :reg8]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x86) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg8, :mem8]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x86) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:ax, :reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[1]) +
              encoder.write_opcode(0x90,@operands[1])
            when [:reg16, :ax]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0x90,@operands[0])
            when [:reg16, :reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg16, :mem16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:eax, :reg32]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[1]) +
              encoder.write_opcode(0x90,@operands[1])
            when [:reg32, :eax]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0x90,@operands[0])
            when [:reg32, :reg32]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg32, :mem32]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:rax, :reg64]
              encoder.write_rex(mandatory: true, w: 1, b: @operands[1]) +
              encoder.write_opcode(0x90,@operands[1])
            when [:reg64, :rax]
              encoder.write_rex(mandatory: true, w: 1, b: @operands[0]) +
              encoder.write_opcode(0x90,@operands[0])
            when [:reg64, :reg64]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[1], b: @operands[0]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(0b11,@operands[1],@operands[0])
            when [:reg64, :mem64]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[0], x: @operands[1], b: @operands[1]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:mem8, :reg8]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x86) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem16, :reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem32, :reg32]
              encoder.write_rex(mandatory: false, w: 0, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:mem64, :reg64]
              encoder.write_rex(mandatory: true, w: 1, r: @operands[1], x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0x87) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
