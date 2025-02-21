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
        # @param [Memory, 0b11] mode
        # @param [Register, Integer] reg
        # @param [Memory] rm
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm(mode,reg,rm)
          case mode
          when Memory then write_modrm_mem(mode,reg,rm)
          when 0b11   then write_modrm_byte(mode,reg,rm)
          else
            raise(ArgumentError,"#{self.class}#write_modrm can only accept Memory and 0b11 values for mode: #{mode.inspect}")
          end
        end

        #
        # Writes the ModRM byte for a memory operand and another register.
        #
        # @param [Memory] mode
        # @param [Register, Integer] reg
        # @param [Memory] rm
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#ModR/M_and_SIB_bytes
        #
        def write_modrm_mem(mode,reg,rm)
          mem  = mode
          mode = 0b00

          if mem.displacement != 0 || mem.base.to_i == 5 # EBP/BP/BPL register
            if mem.displacement.bit_length < 8
              mode = 0b01 # disp8 mode
              displacement_size = 1
            else
              mode = 0b10 # disp32 mode
              displacement_size = 4
            end
          end

          count = 0

          if (mem.index && mem.scale)
            count += write_modrm_byte(mode,reg,0b100)
            count += write_sib_byte(mem.scale,mem.index,mem.base)
          elsif mem.base.to_i == 4 # ESP/SP/SPL register, but without index/scale
            count += write_modrm_byte(mode,reg,rm)
            count += write_sib_byte(1,0b100,0b100)
          else
            count += write_modrm_byte(mode,reg,rm)
          end

          if mem.displacement != 0 || mem.base.to_i == 5 # EBP/BP/BPL register
            count += write_int(mem.displacement,displacement_size)
          end

          return count
        end

        #
        # Writes the ModRM byte.
        #
        # @param [Integer] mode
        # @param [Register, Integer] reg
        # @param [Memory, Integer] rm
        # @return [1]
        #   The number of bytes written.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#ModR/M
        #
        def write_modrm_byte(mode,reg,rm)
          reg = reg.to_i
          rm  = rm.to_i

          write_byte((mode << 6) | ((reg & 0b111) << 3) | (rm & 0b111))
        end

        #
        # Writes a Scale Index Base encoded byte to the output stream.
        #
        # @param [1, 2, 4, 8] scale
        #   The scale value.
        #
        # @param [Register, 0b100] index
        #   The index value. An index value of `0b100` is used when the base is
        #   the stack pointer register.
        #
        # @param [Register, 0b100] base
        #   The base register.
        #
        # @return [1]
        #   The number of bytes written.
        #
        # @raise [ArgumentError]
        #   An invalid scale value was given.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#SIB
        #
        def write_sib_byte(scale,index,base)
          scale = case scale
                  when 1 then 0b00
                  when 2 then 0b01
                  when 4 then 0b10
                  when 8 then 0b11
                  else
                    raise(ArgumentError,"invalid scale value: #{scale.inspect}")
                  end
          index = index.to_i
          base  = base.to_i

          write_byte((scale << 6) | ((index & 0b111) << 3) | (base & 0b111))
        end

        #
        # Writes a register byte to the output stream.
        #
        # @param [Register] register
        # @param [Immediate, nil] payload
        # @return [1]
        #
        def write_register_byte(register,payload=nil)
          byte = register.number & 0b1111

          if payload
            byte |= (payload.value & 0b1111) << 4
          end

          write_byte(byte)
        end

        #
        # Writes an immediate value to the output string.
        #
        # @param [Immediate] imm
        # @return [Integer]
        #
        # @see #write_int
        #
        def write_immediate(imm,size) = write_int(imm.to_i,size)

        #
        # Writes a code offset to the output stream.
        #
        # @param [RelativeOffset] rel
        # @return [Integer]
        #
        # @see #write_int
        #
        def write_code_offset(rel,size) = write_int(rel.to_i,size)

        #
        # Writes a data offset to the output stream.
        #
        # @param [MemoryOffset] moffset
        # @return [Integer]
        #
        # @see #write_int
        #
        def write_data_offset(moffset,size) = write_int(moffset.to_i,size)

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
        def write_prefix(byte, mandatory: )
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
        def write_evex(mmm: , pp: , ll: nil, w: nil, vvvv: nil, v: nil, rr: nil, _B: nil, x: nil, b: nil, aaa: , z: , disp8xN: nil)
          raise(NotImplementedError,"x86/x86-64 EVEX encoding is not yet implemented!")
        end

      end
    end
  end
end
