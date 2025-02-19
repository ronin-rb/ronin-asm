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

require_relative '../instruction_file'

module CodeGen
  module X86
    #
    # Represents an instruction file within `lib/ronin/asm/x86/instructions/`.
    #
    class InstructionFile < CodeGen::InstructionFile

      template File.join(__dir__,'instruction.rb.erb')
      output_dir 'lib/ronin/asm/x86/instructions'

      # Mapping of ISA operand types to ronin-asm operand types.
      OPERAND_TYPE_MAPPING = {
        :r8  => :reg8,
        :r16 => :reg16,
        :r32 => :reg32,
        :r64 => :reg64,
        :m8  => :mem8,
        :m16 => :mem16,
        :m32 => :mem32,
        :m64 => :mem64
      }

      #
      # Translates a x86 ISA operand type to a ronin-asm operand type.
      #
      # @param [Symbol] operand_type
      # @return [Symbol]
      #
      def translate_operand_type(operand_type)
        OPERAND_TYPE_MAPPING.fetch(operand_type,operand_type)
      end

      #
      # Returns a comparison expression for the desired operand type.
      #
      # @param [ISA::Operand] operand
      # @return [String]
      #
      def operand_comparison(operand)
        if operand.specific_register?
          # compare the operand to the register constant
          " == Registers::#{operand.type.upcase}"
        else
          # compare the operand's type
          ".type == #{translate_operand_type(operand.type).inspect}"
        end
      end

      #
      # Builds a boolean expression that matches the operand types in an
      # `@operands` array.
      #
      # @param [Array<ISA::Operands>] operands
      # @return [String]
      #
      def operands_match_expression(operands)
        if operands.empty?
          "@operands.empty?"
        else
          [
            "@operands.length == #{operands.length}",
            *operands.map.with_index { |operand,index|
              "@operands[#{index}]#{operand_comparison(operand)}"
            }
          ].join(' && ')
        end
      end

      #
      # Converts an operand index back into Ruby code.
      #
      # @param [ISA::OperandIndex] operand_index
      # @return [String]
      #
      def operand_index(operand_index) = "@operands[#{operand_index.to_i}]"

      #
      # Formats an argument for an Assembler method call.
      #
      # @param [ISA::OperandIndex, Integer] object
      # @return [String]
      #
      def value_arg(object)
        case object
        when ISA::OperandIndex then operand_index(object)
        else                        object.inspect
        end
      end

      #
      # @param [Array<CodeOffset, DataOffset, Immediate, ModRM, Opcode,
      #               Prefix, RegisterByte, VEX, EVEX>] encoding
      # @return [String]
      #
      def encoder_method_call(encoding)
        case encoding
        when ISA::Encoding::CodeOffset
          "encoder.write_code_offset(#{value_arg(encoding.value)},#{encoding.size.inspect})"
        when ISA::Encoding::DataOffset
          "encoder.write_data_offset(#{value_arg(encoding.value)},#{encoding.size.inspect})"
        when ISA::Encoding::Immediate
          "encoder.write_immediate(#{value_arg(encoding.value)},#{encoding.size.inspect})"
        when ISA::Encoding::ModRM
          "encoder.write_modrm(#{value_arg(encoding.mode)},#{value_arg(encoding.reg)},#{value_arg(encoding.rm)},@operands)"
        when ISA::Encoding::Opcode
          if encoding.addend
            "encoder.write_opcode(#{hex_byte(encoding.byte)},#{value_arg(encoding.addend)})"
          else
            "encoder.write_opcode(#{hex_byte(encoding.byte)})"
          end
        when ISA::Encoding::Prefix
          "encoder.write_prefix(#{hex_byte(encoding.byte)},#{encoding.mandatory.inspect})"
        when ISA::Encoding::RegisterByte
          "encoder.write_register_byte(#{value_arg(encoding.register)},#{value_arg(encoding.payload)})"
        when ISA::Encoding::VEX
          "encoder.write_vex(#{encoding.type.inspect},#{encoding.w.inspect},#{encoding.l.inspect},#{binary(encoding.m_mmmm,bits: 5)},#{binary(encoding.pp,bits: 2)},#{encoding.r.inspect},#{encoding.x.inspect},#{encoding.b.inspect},#{value_arg(encoding.vvvv)})"
        when ISA::Encoding::EVEX
          "encoder.write_evex(#{binary(encoding.mmm,bits: 3)},#{binary(encoding.pp,bits: 2)},#{encoding.w.inspect},#{value_arg(encoding.ll)},#{value_arg(encoding.vvvv)},#{encoding.v.inspect},#{binary(encoding.rr,bits: 2)},#{encoding.B.inspect},#{encoding.x.inspect},#{value_arg(encoding.b)},#{value_arg(encoding.aaa)},#{value_arg(encoding.z)},#{encoding.disp8xN.inspect})"
        end
      end

    end
  end
end
