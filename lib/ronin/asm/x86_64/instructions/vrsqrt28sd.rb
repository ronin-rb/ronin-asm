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
        # Approximation to the Reciprocal Square Root of a Scalar Double-Precision Floating-Point Value with Less Than 2^-28 Relative Error
        #
        class VRSQRT28SD < Instruction

          #
          # Initializes the `vrsqrt28sd` instruction.
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

            @form = if @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem64)
                      [:"xmm{k}{z}", :xmm, :mem64]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:xmm, :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem64)
                      [:xmm, :xmm, :mem64]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:"{sae}")
                      [:"xmm{k}{z}", :xmm, :xmm, :"{sae}"]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:"{sae}")
                      [:xmm, :xmm, :xmm, :"{sae}"]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [vrsqrt28sd]
          #
          def name = :vrsqrt28sd

          #
          # Encodes the `vrsqrt28sd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"xmm{k}{z}", :xmm, :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xcd) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:"xmm{k}{z}", :xmm, :mem64]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b00, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 8) +
              encoder.write_opcode(0xcd) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:xmm, :xmm, :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xcd) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:xmm, :xmm, :mem64]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b00, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0xcd) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2])
            when [:"xmm{k}{z}", :xmm, :xmm, :"{sae}"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0xcd) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:xmm, :xmm, :xmm, :"{sae}"]
              encoder.write_evex(mmm: 0b010, pp: 0b01, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0xcd) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
