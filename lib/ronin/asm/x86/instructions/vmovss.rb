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
        # Move Scalar Single-Precision Floating-Point Values
        #
        class VMOVSS < Instruction

          #
          # Initializes the `vmovss` instruction.
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

            @form = if @operands.length == 2 && @operands[0].type_of?(:"mem32{k}") && @operands[1].type_of?(:xmm)
                      [:"mem32{k}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:mem32)
                      [:"xmm{k}{z}", :mem32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:mem32)
                      [:xmm, :mem32]
                    elsif @operands.length == 2 && @operands[0].type_of?(:mem32) && @operands[1].type_of?(:xmm)
                      [:mem32, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"xmm{k}{z}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:"xmm{k}{z}", :xmm, :xmm]
                    elsif @operands.length == 3 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm)
                      [:xmm, :xmm, :xmm]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [vmovss]
          #
          def name = :vmovss

          #
          # Encodes the `vmovss` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"mem32{k}", :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 4) +
              encoder.write_opcode(0x11) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"xmm{k}{z}", :mem32]
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0], disp8xN: 4) +
              encoder.write_opcode(0x10) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:xmm, :mem32]
              encoder.write_vex(type: :vex, m_mmmm: 0b00001, pp: 0b10, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x10) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1])
            when [:mem32, :xmm]
              encoder.write_vex(type: :vex, m_mmmm: 0b00001, pp: 0b10, r: 0, x: 0, b: 0, vvvv: 0) +
              encoder.write_opcode(0x11) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"xmm{k}{z}", :xmm, :xmm]
              encoder.write_evex(mmm: 0b001, pp: 0b10, w: 0, vvvv: @operands[1], v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: @operands[0]) +
              encoder.write_opcode(0x10) +
              encoder.write_modrm(0b11,@operands[0],@operands[2])
            when [:xmm, :xmm, :xmm]
              encoder.write_vex(type: :vex, m_mmmm: 0b00001, pp: 0b10, r: 0, x: 0, b: 0, vvvv: @operands[1]) +
              encoder.write_opcode(0x10) +
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
