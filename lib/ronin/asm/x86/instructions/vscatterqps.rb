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
        # Scatter Packed Single-Precision Floating-Point Values with Signed Quadword Indices
        #
        class VSCATTERQPS < Instruction

          #
          # Initializes the `vscatterqps` instruction.
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
            super(:vscatterqps,*operands,**kwargs)

            @form = if @operands.length == 2 && @operands[0].type_of?(:"vm64x{k}") && @operands[1].type_of?(:xmm)
                      [:"vm64x{k}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"vm64y{k}") && @operands[1].type_of?(:xmm)
                      [:"vm64y{k}", :xmm]
                    elsif @operands.length == 2 && @operands[0].type_of?(:"vm64z{k}") && @operands[1].type_of?(:ymm)
                      [:"vm64z{k}", :ymm]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vscatterqps` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"vm64x{k}", :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b00, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 4) +
              encoder.write_opcode(0xa3) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"vm64y{k}", :xmm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b01, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 4) +
              encoder.write_opcode(0xa3) +
              encoder.write_modrm(@operands[0],@operands[1],@operands[0])
            when [:"vm64z{k}", :ymm]
              encoder.write_evex(mmm: 0b010, pp: 0b01, ll: 0b10, w: 0, vvvv: 0, v: 0, rr: 0b00, _B: 0, x: 0, b: 0, aaa: @operands[0], z: 0, disp8xN: 4) +
              encoder.write_opcode(0xa3) +
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
