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

require_relative '../encoder'

module Ronin
  module ASM
    module X86
      #
      # Encodes x86 instructions into bytes.
      #
      # @api private
      #
      # @since 1.0.0
      #
      class Encoder < ASM::Encoder

        #
        # Writes a ModRM encoding to the output stream.
        #
        # @param [Array<Operand>] operands
        #   Operands from the instruction being encoded.
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm(mode,reg,rm,operands)
          if (mem = operands.find { |op| op.kind_of?(Memory) })
            write_modrm_mem(mode,reg,rm,mem)
          else
            write_moderm_byte(mode,reg,rm)
          end
        end

        #
        # @param [Memory] mem
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm_mem(mode,reg,rm,mem)
          mode = mode.to_i
          reg  = reg.to_i
          rm   = rm.to_i

          offset_bytes = 0

          if mem.displacement != 0
            if mem.displacement >= -0x7F - 1 && mem.displacement < 0x7F
              offset_bytes = 1
              mode |= 0b01
            else
              offset_bytes = 4
              mode |= 0b10
            end
          end

          # write the modrm byte
          count = write_modrm_byte(mode,reg,rm)

          if mem.displacement != 0
            count += write_int(mem.displacement,offset_bytes)
          end

          return count
        end

        #
        # Writes the ModRM byte.
        #
        # @param [Integer] mode
        # @param [Integer] reg
        # @param [Integer] rm
        # @return [1]
        #   The number of bytes written.
        #
        def write_modrm_byte(mode,reg,rm)
          write_byte((mode << 6) | ((reg & 0b111) << 3) | (rm & 0b111))
        end

        #
        # Add ModRM with one mem operand and one register operand
        #
        # @param [Array<Operand>] operands
        #   Operands from the instruction being encoded.
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm_mem_reg(mode,reg,rm,operands)
          write_modrm_mem(mode,reg,rm,operands[0])
        end

        #
        # Add ModRM with one mem operand and one register operand
        #
        # @param [Array<Operand>] operands
        #   Operands from the instruction being encoded.
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm_reg_mem(mode,reg,rm,operands)
          write_modrm_mem(mode,reg,rm,operands[1])
        end

        #
        # Add ModRM with two register operands
        #
        # @param [Array<Operand>] operands
        #   Operands from the instruction being encoded.
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm_reg_reg(mode,reg,rm)
          write_modrm_byte(mode,reg,rm)
        end

        def write_immediate(value,size) = write_int(value.to_i,size)
        def write_code_offset(value,size) = write_int(value.to_i,size)
        def write_data_offset(value,size) = write_int(value.to_i,size)

        #
        # Writes an opcode to the output stream.
        #
        # @param [Integer] byte
        #   The byte value of the opcode.
        #
        # @param [Integer, nil] addend
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_opcode(byte,addend=nil)
          if addend
            byte |= (addend.to_i & 0b111)
          end

          write_byte(byte)
        end

        #
        # Writes a Prefix encoding to the output stream.
        #
        # @param [Integer] byte
        #   The byte to be written to the output stream.
        #
        # @param [Boolean] mandatory
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_prefix(byte,mandatory)
          write_byte(byte)
        end

        #
        # Writes a VEX encoding to the output stream.
        #
        # @raise [NotImplementedError]
        #
        # @note This method is not implemented yet!
        #
        def write_vex(type: , w: nil, l: nil, m_mmmm: , pp: , r: nil, x: nil, b: nil, vvvv: nil)
          raise(NotImplementedError,"x86/x86-64 VEX encoding is not yet implemented!")
        end

        #
        # Writes a EVEX encoding to the output stream.
        #
        # @raise [NotImplementedError]
        #
        # @note This method is not implemented yet!
        #
        def write_evex(mmm: , pp: , w: nil, ll: nil, vvvv: nil, v: nil, rr: nil, _B: nil, x: nil, b: nil, aaa: , z: , disp8xN: nil)
          raise(NotImplementedError,"x86/x86-64 EVEX encoding is not yet implemented!")
        end

      end
    end
  end
end
