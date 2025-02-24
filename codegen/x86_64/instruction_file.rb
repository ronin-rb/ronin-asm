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

require_relative '../x86/instruction_file'

module CodeGen
  module X86_64
    #
    # Represents an instruction file within `lib/ronin/asm/x86_64/instructions/`.
    #
    class InstructionFile < X86::InstructionFile

      template File.join(__dir__,'instruction.rb.erb')
      output_dir 'lib/ronin/asm/x86_64/instructions'

      #
      # Builds an `encoding.write_<encoding>(...)` method call based on the
      # given encoding object.
      #
      # @param [Array<CodeOffset, DataOffset, Immediate, ModRM, Opcode,
      #               Prefix, RegisterByte, REX, VEX, EVEX>] encoding
      # @return [String]
      #
      def encoder_method_call(encoding)
        case encoding
        when ISA::Encoding::REX
          encoder_write_rex_call(encoding)
        else
          super(encoding)
        end
      end

      #
      # Builds a `encoder.write_modrm(...)` method call.
      #
      # @param [ISA::Encoding::ModRM] encoding
      # @return [String]
      #
      def encoder_write_modrm_call(encoding)
        case encoding.mode
        when Integer
          binary_mode = format("0b%.2b", encoding.mode)

          "encoder.write_modrm(#{binary_mode},#{operand_index_or_int(encoding.reg)},#{operand_index_or_int(encoding.rm)})"
        when ISA::OperandIndex
          "encoder.write_modrm(#{operand_index(encoding.mode)},#{operand_index_or_int(encoding.reg)},#{operand_index_or_int(encoding.rm)})"
        else
          raise(NotImplementedError,"unexpected ModRM mode type: #{encoding.mode.inspect}")
        end
      end

      #
      # Builds a `encoder.write_rex(...)` method call.
      #
      # @param [ISA::Encoding::REX] encoding
      # @return [String]
      #
      def encoder_write_rex_call(encoding)
        method_call = String.new
        method_call << 'encoder.write_rex('
        method_call << "mandatory: #{encoding.mandatory.inspect}"
        method_call << ", w: #{encoding.w.inspect}"
        method_call << ", r: #{operand_index(encoding.r)}" if encoding.r
        method_call << ", x: #{operand_index(encoding.x)}" if encoding.x
        method_call << ", b: #{operand_index(encoding.b)}" if encoding.b
        method_call << ')'
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
        method_call << ", r: #{operand_index_or_int(encoding.r)}" if encoding.r
        method_call << ", x: #{operand_index(encoding.x)}" if encoding.x
        method_call << ", b: #{operand_index_or_int(encoding.b)}" if encoding.b
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
        method_call << "mmm: #{binary(encoding.mmm,bits: 3)}"
        method_call << ", pp: #{binary(encoding.pp,bits: 2)}"
        method_call << ", ll: #{operand_index_or_binary(encoding.ll, bits: 2)}" if encoding.ll
        method_call << ", w: #{encoding.w.inspect}" if encoding.w
        method_call << ", vvvv: #{operand_index_or_int(encoding.vvvv)}" if encoding.vvvv
        method_call << ", v: #{operand_index_or_int(encoding.v)}" if encoding.v
        method_call << ", rr: #{operand_index(encoding.rr)}"   if encoding.rr
        method_call << ", _B: #{operand_index(encoding.B)}" if encoding.B
        method_call << ", x: #{operand_index(encoding.x)}" if encoding.x
        method_call << ", b: #{operand_index_or_int(encoding.b)}"
        method_call << ", aaa: #{operand_index_or_int(encoding.aaa)}"
        method_call << ", z: #{operand_index_or_int(encoding.z)}"
        method_call << ", disp8xN: #{encoding.disp8xN.inspect}" if encoding.disp8xN
        method_call << ')'
      end

    end
  end
end
