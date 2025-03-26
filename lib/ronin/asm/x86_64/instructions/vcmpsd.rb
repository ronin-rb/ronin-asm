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
        # Compare Scalar Double-Precision Floating-Point Values
        #
        class VCMPSD < Instruction

          #
          # Initializes the `vcmpsd` instruction.
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
            super(:vcmpsd,*operands,**kwargs)

            @form = if @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:"k{k}", :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:k, :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem64) && @operands[3].type_of?(:imm8)
                      [:"k{k}", :xmm, :mem64, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem64) && @operands[3].type_of?(:imm8)
                      [:k, :xmm, :mem64, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:xmm, :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:xmm) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:mem64) && @operands[3].type_of?(:imm8)
                      [:xmm, :xmm, :mem64, :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:"k{k}", :xmm, :xmm, :"{sae}", :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:k) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:k, :xmm, :xmm, :"{sae}", :imm8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{@name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # Encodes the `vcmpsd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"k{k}", :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b11, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b11, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :xmm, :mem64, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b11, ll: 0b00, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: 0, disp8xN: 8) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :xmm, :mem64, :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b11, ll: 0b00, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0, disp8xN: 8) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:xmm, :xmm, :xmm, :imm8]
              encoder.write_vex(type: :vex, m_mmmm: 0b00001, pp: 0b11, r: @operands[0], b: @operands[2], vvvv: @operands[1]) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:xmm, :xmm, :mem64, :imm8]
              encoder.write_vex(type: :vex, m_mmmm: 0b00001, pp: 0b11, r: @operands[0], x: @operands[2], b: @operands[2], vvvv: @operands[1]) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :xmm, :xmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b11, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[4],1)
            when [:k, :xmm, :xmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b001, pp: 0b11, w: 1, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[4],1)
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
