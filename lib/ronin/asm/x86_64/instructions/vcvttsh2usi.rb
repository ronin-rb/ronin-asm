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
        # Convert with Truncation Scalar Half-Precision Floating-Point Value to Unsigned Integer
        #
        class VCVTTSH2USI < Instruction

          #
          # Initializes the `vcvttsh2usi` instruction.
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
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:mem16)
                      [:reg32, :mem16]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:xmm)
                      [:reg64, :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:mem16)
                      [:reg64, :mem16]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg32) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"{sae}")
                      [:reg32, :xmm, :"{sae}"]
                    elsif @operands.length == 3 && @operands[0].type_of?(:reg64) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"{sae}")
                      [:reg64, :xmm, :"{sae}"]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [vcvttsh2usi]
          #
          def name = :vcvttsh2usi

          #
          # Encodes the `vcvttsh2usi` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:reg32, :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b10, w: 0, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x78) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg32, :mem16]
              encoder.write_evex(mmm: 0b101, pp: 0b10, ll: 0b00, w: 0, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0, disp8xN: 4) +
              encoder.write_opcode(0x78) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg64, :xmm]
              encoder.write_evex(mmm: 0b101, pp: 0b10, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x78) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg64, :mem16]
              encoder.write_evex(mmm: 0b101, pp: 0b10, ll: 0b00, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0x78) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:reg32, :xmm, :"{sae}"]
              encoder.write_evex(mmm: 0b101, pp: 0b10, w: 0, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x78) +
              encoder.write_modrm(0b11,@operands[0],@operands[1])
            when [:reg64, :xmm, :"{sae}"]
              encoder.write_evex(mmm: 0b101, pp: 0b10, w: 1, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0x78) +
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
