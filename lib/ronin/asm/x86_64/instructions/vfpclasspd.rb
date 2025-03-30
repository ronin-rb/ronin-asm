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
        # Test Class of Packed Double-Precision Floating-Point Values
        #
        class VFPCLASSPD < Instruction

          #
          # Initializes the `vfpclasspd` instruction.
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
            super(:vfpclasspd,*operands,**kwargs)

            @form = if @operands.length == 3 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:"mem128/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:"k{k}", :"mem128/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:k) && @operands[1].type_of?(:"mem128/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:k, :"mem128/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:"mem256/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:"k{k}", :"mem256/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:k) && @operands[1].type_of?(:"mem256/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:k, :"mem256/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:"mem512/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:"k{k}", :"mem512/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:k) && @operands[1].type_of?(:"mem512/mem64bcst") && @operands[2].type_of?(:imm8)
                      [:k, :"mem512/mem64bcst", :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:imm8)
                      [:"k{k}", :xmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:k) && @operands[1].type_of?(:xmm) && @operands[2].type_of?(:imm8)
                      [:k, :xmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:imm8)
                      [:"k{k}", :ymm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:k) && @operands[1].type_of?(:ymm) && @operands[2].type_of?(:imm8)
                      [:k, :ymm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:"k{k}") && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:imm8)
                      [:"k{k}", :zmm, :imm8]
                    elsif @operands.length == 3 && @operands[0].type_of?(:k) && @operands[1].type_of?(:zmm) && @operands[2].type_of?(:imm8)
                      [:k, :zmm, :imm8]
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
            when [:"k{k}", :"mem128/mem64bcst", :imm8]
              :vfpclasspdx
            when [:k, :"mem128/mem64bcst", :imm8]
              :vfpclasspdx
            when [:"k{k}", :"mem256/mem64bcst", :imm8]
              :vfpclasspdy
            when [:k, :"mem256/mem64bcst", :imm8]
              :vfpclasspdy
            when [:"k{k}", :"mem512/mem64bcst", :imm8]
              :vfpclasspdz
            when [:k, :"mem512/mem64bcst", :imm8]
              :vfpclasspdz
            when [:"k{k}", :xmm, :imm8]
              :vfpclasspdx
            when [:k, :xmm, :imm8]
              :vfpclasspdx
            when [:"k{k}", :ymm, :imm8]
              :vfpclasspdy
            when [:k, :ymm, :imm8]
              :vfpclasspdy
            when [:"k{k}", :zmm, :imm8]
              :vfpclasspdz
            when [:k, :zmm, :imm8]
              :vfpclasspdz
            else
              super
            end
          end

          #
          # Encodes the `vfpclasspd` instruction.
          #
          # @param [Encoder] encoder
          # @return [Integer]
          #
          # @api private
          #
          def encode(encoder)
            case @form
            when [:"k{k}", :"mem128/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: @operands[0], z: 0, disp8xN: 16) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:k, :"mem128/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: 0, z: 0, disp8xN: 16) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"k{k}", :"mem256/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: @operands[0], z: 0, disp8xN: 32) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:k, :"mem256/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: 0, z: 0, disp8xN: 32) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"k{k}", :"mem512/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: @operands[0], z: 0, disp8xN: 64) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:k, :"mem512/mem64bcst", :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: @operands[1], aaa: 0, z: 0, disp8xN: 64) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(@operands[1],@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"k{k}", :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:k, :xmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b00, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"k{k}", :ymm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:k, :ymm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b01, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:"k{k}", :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: @operands[0], z: 0) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            when [:k, :zmm, :imm8]
              encoder.write_evex(mmm: 0b011, pp: 0b01, w: 1, ll: 0b10, vvvv: 0, v: 0, rr: @operands[0], _B: @operands[1], x: @operands[1], b: 0, aaa: 0, z: 0) +
              encoder.write_opcode(0x66) +
              encoder.write_modrm(0b11,@operands[0],@operands[1]) +
              encoder.write_immediate(@operands[2],1)
            else
              raise(NotImplementedError,"cannot encode instruction form: #{@name} #{@form.join(', ')}")
            end
          end

        end
      end
    end
  end
end
