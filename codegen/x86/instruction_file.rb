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
      def operand_match_expression(index,operand)
        if operand.specific_register?
          # compare the operand to the register constant
          "@operands[#{index}] == Registers::#{operand.type.upcase}"
        elsif operand.specific_immediate?
          "(@operands[#{index}].kind_of?(Immediate) && @operands[#{index}].value == #{operand.type})"
        else
          # compare the operand's type
          "@operands[#{index}].type == #{translate_operand_type(operand.type).inspect}"
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
              operand_match_expression(index,operand)
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
      # Builds an `encoding.write_<encoding>(...)` method call based on the
      # given encoding object.
      #
      # @param [Array<CodeOffset, DataOffset, Immediate, ModRM, Opcode,
      #               Prefix, RegisterByte, VEX, EVEX>] encoding
      # @return [String]
      #
      def encoder_method_call(encoding)
        case encoding
        when ISA::Encoding::CodeOffset   then encoder_write_code_offset_call(encoding)
        when ISA::Encoding::DataOffset   then encoder_write_data_offset_call(encoding)
        when ISA::Encoding::Immediate    then encoder_write_immediate_call(encoding)
        when ISA::Encoding::ModRM        then encoder_write_modrm_call(encoding)
        when ISA::Encoding::Opcode       then encoder_write_opcode_call(encoding)
        when ISA::Encoding::Prefix       then encoder_write_prefix_call(encoding)
        when ISA::Encoding::RegisterByte then encoder_write_register_byte_call(encoding)
        when ISA::Encoding::VEX          then encoder_write_vex_call(encoding)
        when ISA::Encoding::EVEX         then encoder_write_evex_call(encoding)
        end
      end

      #
      # Builds a `encoder.write_code_offset(...)` method call.
      #
      # @param [ISA::Encoding::DataOffset] encoding
      # @return [String]
      #
      def encoder_write_code_offset_call(encoding)
        "encoder.write_code_offset(#{value_arg(encoding.value)},#{encoding.size.inspect})"
      end

      #
      # Builds a `encoder.write_data_offset(...)` method call.
      #
      # @param [ISA::Encoding::DataOffset] encoding
      # @return [String]
      #
      def encoder_write_data_offset_call(encoding)
        "encoder.write_data_offset(#{value_arg(encoding.value)},#{encoding.size.inspect})"
      end

      #
      # Builds a `encoder.write_immediate(...)` method call.
      #
      # @param [ISA::Encoding::Immediate] encoding
      # @return [String]
      #
      def encoder_write_immediate_call(encoding)
        "encoder.write_immediate(#{value_arg(encoding.value)},#{encoding.size.inspect})"
      end

      #
      # Builds a `encoder.write_modrm(...)` method call.
      #
      # @param [ISA::Encoding::ModRM] encoding
      # @param [Array<Operand>] operands
      # @return [String]
      #
      def encoder_write_modrm_call(encoding)
        "encoder.write_modrm(#{value_arg(encoding.mode)},#{value_arg(encoding.reg)},#{operand_index(encoding.rm)})"
      end

      #
      # Builds a `encoder.write_opcode(...)` method call.
      #
      # @param [ISA::Encoding::Opcode] encoding
      # @return [String]
      #
      def encoder_write_opcode_call(encoding)
        if encoding.addend
          "encoder.write_opcode(#{hex_byte(encoding.byte)},#{value_arg(encoding.addend)})"
        else
          "encoder.write_opcode(#{hex_byte(encoding.byte)})"
        end
      end

      #
      # Builds a `encoder.write_prefix(...)` method call.
      #
      # @param [ISA::Encoding::Prefix] encoding
      # @return [String]
      #
      def encoder_write_prefix_call(encoding)
        "encoder.write_prefix(#{hex_byte(encoding.byte)},#{encoding.mandatory.inspect})"
      end

      #
      # Builds a `encoder.write_register_byte(...)` method call.
      #
      # @param [ISA::Encoding::RegisterByte] encoding
      # @return [String]
      #
      def encoder_write_register_byte_call(encoding)
        "encoder.write_register_byte(#{value_arg(encoding.register)},#{value_arg(encoding.payload)})"
      end

      #
      # Builds a `encoder.write_vex(...)` method call.
      #
      # @param [ISA::Encoding::VEX] encoding
      # @return [String]
      #
      def encoder_write_vex_call(encoding)
        method_call = String.new
        method_call << 'encoder.write_vex('
        method_call << "type: #{encoding.type.inspect}"
        method_call << ", w: #{encoding.w.inspect}" if encoding.w
        method_call << ", l: #{encoding.l.inspect}" if encoding.l
        method_call << ", m_mmmm: #{binary(encoding.m_mmmm,bits: 5)}"
        method_call << ", pp: #{binary(encoding.pp,bits: 2)}"
        method_call << ", r: #{encoding.r.inspect}" if encoding.r
        method_call << ", x: #{encoding.x.inspect}" if encoding.x
        method_call << ", b: #{encoding.b.inspect}" if encoding.b
        method_call << ", vvvv: #{value_arg(encoding.vvvv)}" if encoding.vvvv
        method_call << ')'
      end

      #
      # Builds a `encoder.write_evex(...)` method call.
      #
      # @param [ISA::Encoding::EVEX] encoding
      # @return [String]
      #
      def encoder_write_evex_call(encoding)
        method_call = String.new
        method_call << 'encoder.write_evex('
        method_call << "mmm: #{binary(encoding.mmm,bits: 3)}"
        method_call << ", pp: #{binary(encoding.pp,bits: 2)}"
        method_call << ", w: #{encoding.w.inspect}" if encoding.w
        method_call << ", ll: #{value_arg(encoding.ll)}" if encoding.ll
        method_call << ", vvvv: #{value_arg(encoding.vvvv)}" if encoding.vvvv
        method_call << ", v: #{encoding.v.inspect}" if encoding.v
        method_call << ", rr: #{binary(encoding.rr,bits: 2)}"   if encoding.rr
        method_call << ", _B: #{encoding.B.inspect}" if encoding.B
        method_call << ", x: #{encoding.x.inspect}" if encoding.x
        method_call << ", b: #{value_arg(encoding.b)}" if encoding.b
        method_call << ", aaa: #{value_arg(encoding.aaa)}"
        method_call << ", z: #{value_arg(encoding.z)}"
        method_call << ", disp8xN: #{encoding.disp8xN.inspect}" if encoding.disp8xN
        method_call << ')'
      end

    end
  end
end
