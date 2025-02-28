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

        :m   => :mem,
        :m8  => :mem8,
        :m16 => :mem16,
        :m32 => :mem32,
        :m64 => :mem64,

        :"m16{k}"  => :"mem16{k}",
        :"m32{k}"  => :"mem32{k}",
        :"m64{k}"  => :"mem64{k}",
        :"m128{k}" => :"mem128{k}",
        :"m256{k}" => :"mem256{k}",
        :"m512{k}" => :"mem512{k}",

        :"m32/m16bcst"  => :"mem32/m16bcst",
        :"m64/m16bcst"  => :"mem64/m16bcst",
        :"m64/m32bcst"  => :"mem64/m32bcst",
        :"m128/m16bcst" => :"mem128/m16bcst",
        :"m128/m32bcst" => :"mem128/m32bcst",
        :"m128/m64bcst" => :"mem128/m64bcst",
        :"m256/m16bcst" => :"mem256/m16bcst",
        :"m256/m32bcst" => :"mem256/m32bcst",
        :"m256/m64bcst" => :"mem256/m64bcst",
        :"m512/m16bcst" => :"mem512/m16bcst",
        :"m512/m32bcst" => :"mem512/m32bcst",
        :"m512/m64bcst" => :"mem512/m64bcst",

        :moffs32 => :moffset32,
        :moffs64 => :moffset64
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
        elsif operand.any_memory_type?
          "@operands[#{index}].mem?"
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
      # Formats an operand index or an integer.
      #
      # @param [ISA::OperandIndex, Integer] value
      # @return [String]
      #
      def operand_index_or_int(value)
        case value
        when ISA::OperandIndex then operand_index(value)
        when Integer           then value.inspect
        end
      end

      #
      # Formats an operand index or a binary number.
      #
      # @param [ISA::OperandIndex, Integer] value
      # @param [Integer, nil] bits
      # @return [String]
      #
      def operand_index_or_binary(value, bits: nil)
        case value
        when ISA::OperandIndex then operand_index(value)
        when Integer           then binary(value, bits: bits)
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
        "encoder.write_code_offset(#{operand_index_or_int(encoding.value)},#{encoding.size.inspect})"
      end

      #
      # Builds a `encoder.write_data_offset(...)` method call.
      #
      # @param [ISA::Encoding::DataOffset] encoding
      # @return [String]
      #
      def encoder_write_data_offset_call(encoding)
        "encoder.write_data_offset(#{operand_index_or_int(encoding.value)},#{encoding.size.inspect})"
      end

      #
      # Builds a `encoder.write_immediate(...)` method call.
      #
      # @param [ISA::Encoding::Immediate] encoding
      # @return [String]
      #
      def encoder_write_immediate_call(encoding)
        "encoder.write_immediate(#{operand_index_or_int(encoding.value)},#{encoding.size.inspect})"
      end

      #
      # Builds a `encoder.write_modrm(...)` method call.
      #
      # @param [ISA::Encoding::ModRM] encoding
      # @param [Array<Operand>] operands
      # @return [String]
      #
      def encoder_write_modrm_call(encoding)
        "encoder.write_modrm(#{operand_index_or_binary(encoding.mode, bits: 2)},#{operand_index_or_int(encoding.reg)},#{operand_index(encoding.rm)})"
      end

      #
      # Builds a `encoder.write_opcode(...)` method call.
      #
      # @param [ISA::Encoding::Opcode] encoding
      # @return [String]
      #
      def encoder_write_opcode_call(encoding)
        if encoding.addend
          "encoder.write_opcode(#{hex_byte(encoding.byte)},#{operand_index_or_int(encoding.addend)})"
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
        "encoder.write_prefix(#{hex_byte(encoding.byte)}, mandatory: #{encoding.mandatory.inspect})"
      end

      #
      # Builds a `encoder.write_register_byte(...)` method call.
      #
      # @param [ISA::Encoding::RegisterByte] encoding
      # @return [String]
      #
      def encoder_write_register_byte_call(encoding)
        if encoding.payload
          "encoder.write_register_byte(#{operand_index_or_int(encoding.register)},#{operand_index(encoding.payload)})"
        else
          "encoder.write_register_byte(#{operand_index_or_int(encoding.register)})"
        end
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
        method_call << ", m_mmmm: #{binary(encoding.m_mmmm, bits: 5)}"
        method_call << ", pp: #{binary(encoding.pp, bits: 2)}"
        method_call << ", r: #{encoding.r.inspect}" if encoding.r
        method_call << ", x: #{encoding.x.inspect}" if encoding.x
        method_call << ", b: #{encoding.b.inspect}" if encoding.b
        method_call << ", vvvv: #{operand_index_or_int(encoding.vvvv)}" if encoding.vvvv
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
        method_call << "mmm: #{binary(encoding.mmm, bits: 3)}"
        method_call << ", pp: #{binary(encoding.pp, bits: 2)}"
        method_call << ", ll: #{operand_index_or_binary(encoding.ll, bits: 2)}" if encoding.ll
        method_call << ", w: #{encoding.w.inspect}" if encoding.w
        method_call << ", vvvv: #{operand_index_or_int(encoding.vvvv)}" if encoding.vvvv
        method_call << ", v: #{encoding.v.inspect}" if encoding.v
        method_call << ", rr: #{binary(encoding.rr, bits: 2)}"   if encoding.rr
        method_call << ", _B: #{encoding.B.inspect}" if encoding.B
        method_call << ", x: #{encoding.x.inspect}" if encoding.x
        method_call << ", b: #{operand_index_or_int(encoding.b)}" if encoding.b
        method_call << ", aaa: #{operand_index_or_int(encoding.aaa)}"
        method_call << ", z: #{operand_index_or_int(encoding.z)}"
        method_call << ", disp8xN: #{encoding.disp8xN.inspect}" if encoding.disp8xN
        method_call << ')'
      end

    end
  end
end
