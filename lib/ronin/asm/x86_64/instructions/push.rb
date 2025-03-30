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
        # Push Value Onto the Stack
        #
        class PUSH < Instruction

          #
          # Initializes the `push` instruction.
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
            super(:push,*operands,**kwargs)

            @form = if @operands.length == 1 && @operands[0].type_of?(:imm8)
                      [:imm8]
                    elsif @operands.length == 1 && @operands[0].type_of?(:imm32)
                      [:imm32]
                    elsif @operands.length == 1 && @operands[0].type_of?(:reg16)
                      [:reg16]
                    elsif @operands.length == 1 && @operands[0].type_of?(:reg64)
                      [:reg64]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem16)
                      [:mem16]
                    elsif @operands.length == 1 && @operands[0].type_of?(:mem64)
                      [:mem64]
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
            when [:imm8]
              :pushq
            when [:imm32]
              :pushq
            when [:reg16]
              :pushw
            when [:reg64]
              :pushq
            when [:mem16]
              :pushw
            when [:mem64]
              :pushq
            else
              super
            end
          end

          #
          # Encodes the `push` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:imm8]
              encoder.write_opcode(0x6a) +
              encoder.write_immediate(@operands[0],1)
            when [:imm32]
              encoder.write_opcode(0x68) +
              encoder.write_immediate(@operands[0],4)
            when [:reg16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0x50,@operands[0])
            when [:reg64]
              encoder.write_rex(mandatory: false, w: 0, b: @operands[0]) +
              encoder.write_opcode(0x50,@operands[0])
            when [:mem16]
              encoder.write_prefix(0x66, mandatory: false) +
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(@operands[0],6,@operands[0])
            when [:mem64]
              encoder.write_rex(mandatory: false, w: 0, x: @operands[0], b: @operands[0]) +
              encoder.write_opcode(0xff) +
              encoder.write_modrm(@operands[0],6,@operands[0])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
