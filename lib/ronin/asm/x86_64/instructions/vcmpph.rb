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
        # Compare Packed Half-Precision Floating-Point Values
        #
        class VCMPPH < Instruction

          #
          # Initializes the `vcmpph` instruction.
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

            @form = if @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"mem128/mem16bcst") && @operands[3].type_of?(:imm8)
                      [:"k{k}", :xmm, :"mem128/mem16bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:"mem128/mem16bcst") && @operands[3].type_of?(:imm8)
                      [:k, :xmm, :"mem128/mem16bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:"k{k}", :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:xmm) && @operands[3].type_of?(:imm8)
                      [:k, :xmm, :xmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem16bcst") && @operands[3].type_of?(:imm8)
                      [:"k{k}", :ymm, :"mem256/mem16bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:"mem256/mem16bcst") && @operands[3].type_of?(:imm8)
                      [:k, :ymm, :"mem256/mem16bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm) && @operands[3].type_of?(:imm8)
                      [:"k{k}", :ymm, :ymm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:ymm) && @operands[3].type_of?(:imm8)
                      [:k, :ymm, :ymm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem16bcst") && @operands[3].type_of?(:imm8)
                      [:"k{k}", :zmm, :"mem512/mem16bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:"mem512/mem16bcst") && @operands[3].type_of?(:imm8)
                      [:k, :zmm, :"mem512/mem16bcst", :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:imm8)
                      [:"k{k}", :zmm, :zmm, :imm8]
                    elsif @operands.length == 4 && @operands[0].type_of?(:k) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:imm8)
                      [:k, :zmm, :zmm, :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:"k{k}", :zmm, :zmm, :"{sae}", :imm8]
                    elsif @operands.length == 5 && @operands[0].type_of?(:k) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:zmm) && @operands[3].type_of?(:"{sae}") && @operands[4].type_of?(:imm8)
                      [:k, :zmm, :zmm, :"{sae}", :imm8]
                    else
                      raise(ArgumentError,"incompatible operands given for instruction: #{name} #{@operands.map(&:type).join(', ')}")
                    end
          end

          #
          # The instruction name.
          #
          # @return [vcmpph]
          #
          def name = :vcmpph

          #
          # Encodes the `vcmpph` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"k{k}", :xmm, :"mem128/mem16bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :xmm, :"mem128/mem16bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :xmm, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :ymm, :"mem256/mem16bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :ymm, :"mem256/mem16bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :ymm, :ymm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :ymm, :ymm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b01, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :zmm, :"mem512/mem16bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :zmm, :"mem512/mem16bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: @operands[2], aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(@operands[2],@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :zmm, :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:k, :zmm, :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, ll: 0b10, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[3],1)
            when [:"k{k}", :zmm, :zmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[4],1)
            when [:k, :zmm, :zmm, :"{sae}", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b00, w: 0, vvvv: @operands[1], v: @operands[1], rr: @operands[0], _B: @operands[2], x: @operands[2], b: 1, aaa: 0, z: 0) +
              encoder.write_opcode(0xc2) +
              encoder.write_modrm(0b11,@operands[0],@operands[2]) +
              encoder.write_immediate(@operands[4],1)
            else
              raise(NotImplementedError,"cannot encode instruction form: #{name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
