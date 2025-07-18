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
        # Convert Scalar Single-Precision FP Value to Dword Integer
        #
        class VCVTSS2SI < Instruction

          #
          # Initializes the `vcvtss2si` instruction.
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

            @form = if @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:xmm)
                      [:reg32, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem32)
                      [:reg32, :mem32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:xmm)
                      [:reg64, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:mem32)
                      [:reg64, :mem32]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"{er}")
                      [:reg32, :xmm, :"{er}"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"{er}")
                      [:reg64, :xmm, :"{er}"]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [vcvtss2si]
          #
          def name = :vcvtss2si

          #
          # Encodes the `vcvtss2si` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg32, :xmm]
              encoder.write_vex(type: :vex, w: 0, m_mmmm: 0b00001, pp: 0b10, r: @operands[0], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0x2d) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg32, :mem32]
              encoder.write_vex(type: :vex, w: 0, m_mmmm: 0b00001, pp: 0b10, r: @operands[0], x: @operands[1], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0x2d) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg64, :xmm]
              encoder.write_vex(type: :vex, w: 1, m_mmmm: 0b00001, pp: 0b10, r: @operands[0], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0x2d) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg64, :mem32]
              encoder.write_vex(type: :vex, w: 1, m_mmmm: 0b00001, pp: 0b10, r: @operands[0], x: @operands[1], b: @operands[1], vvvv: 0) +
              encoder.write_opcode(0x2d) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg32, :xmm, :"{er}"]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: @operands[2], w: 0, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x2d) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg64, :xmm, :"{er}"]
              encoder.write_evex(mmm: 0b001, pp: 0b10, ll: @operands[2], w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x2d) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
