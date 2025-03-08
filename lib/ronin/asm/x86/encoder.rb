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
require_relative 'operands'

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
        # @param [:vex, :xop] type
        #   The VEX type.
        #
        # @param [1, 0, nil] w
        #   When `1` indicates that 64bit operand size must be used, otherwise
        #   the default operand sizes will be used.
        #
        # @param [1, 0, nil] l
        #   When `1` indicates that 256bit vector size must be used, otherwise
        #   128bit vector size must be used.
        #
        # @param [0b00001, 0b00010, 0b00011, 0b01000, 0b01001, 0b01010] m_mmmm
        #   Specifies the opcode map to use.
        #
        # @param [0b00, 0b01, 0b10, 0b11] pp
        #   Specifies the implied mandatory prefix for the opcode.
        #
        # @param [0, nil] r
        #   The register operand.
        #
        # @param [0, nil] x
        #   The memory operand with {Memory#index index} set.
        #
        # @param [0, nil] b
        #   The memory operand with {Memory#base base} set.
        #
        # @param [Register, Memory, 0, nil] vvvv
        #   The additional operand.
        #
        # @return [3, 2]
        #   The number of bytes written.
        #
        # @raise [ArgumentError]
        #   An invalid type value was given.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#VEX/XOP_opcodes
        #
        def write_vex(type: , w: nil, l: nil, m_mmmm: , pp: , r: nil, x: nil, b: nil, vvvv: nil)
          if (type == :vex && x == 0 && b == 0 && w == 0 && m_mmmm == 0b00001)
            write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)
          else
            write_vex_three_byte(type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b, vvvv: vvvv)
          end
        end

        #
        # Writes a two byte encoded VEX escape prefix.
        #
        # @param [0, nil] r
        #   The register operand.
        #
        # @param [Register, Memory, 0, nil] vvvv
        #   The additional operand.
        #
        # @param [1, 0, nil] l
        #   When `1` indicates that 256bit vector size must be used, otherwise
        #   128bit vector size must be used.
        #
        # @param [0b00, 0b01, 0b10, 0b11] pp
        #   Specifies the implied mandatory prefix for the opcode.
        #
        # @return [2]
        #   The number of bytes written.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#Two_byte_VEX_escape_prefix
        #
        def write_vex_two_byte(r: nil, vvvv: nil, l: nil, pp: )
          # set the initial byte
          byte1 = 0b11000101
          byte2 = 0

          # VEX.R is encoded as the inverted version of REX.R
          byte2 |= 0b10000000 if r == 0

          if vvvv
            # VEX.vvvv is encoded as the inverted value of the extra operand
            byte2 |= ((~vvvv.to_i & 0b1111) << 3)
          end

          byte2 |= (l << 2) if l == 1
          byte2 |= pp if pp > 0

          write_byte(byte1) + write_byte(byte2)
        end

        #
        # Writes a VEX/XOP encoding to the output stream.
        #
        # @param [:vex, :xop] type
        #   The VEX type.
        #
        # @param [1, 0, nil] w
        #   When `1` indicates that 64bit operand size must be used, otherwise
        #   the default operand sizes will be used.
        #
        # @param [1, 0, nil] l
        #   When `1` indicates that 256bit vector size must be used, otherwise
        #   128bit vector size must be used.
        #
        # @param [0b00001, 0b00010, 0b00011, 0b01000, 0b01001, 0b01010] m_mmmm
        #   Specifies the opcode map to use.
        #
        # @param [0b00, 0b01, 0b10, 0b11] pp
        #   Specifies the implied mandatory prefix for the opcode.
        #
        # @param [0, nil] r
        #   The register operand.
        #
        # @param [0, nil] x
        #   The memory operand with {Memory#index index} set.
        #
        # @param [0, nil] b
        #   The memory operand with {Memory#base base} set.
        #
        # @param [Register, Memory, nil] vvvv
        #   The additional operand.
        #
        # @return [3, 2]
        #   The number of bytes written.
        #
        # @raise [ArgumentError]
        #   An invalid type value was given.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#Three_byte_VEX_escape_prefix
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#Three_byte_XOP_escape_prefix
        #
        def write_vex_three_byte(type: , w: nil, l: nil, m_mmmm: , pp: , r: nil, x: nil, b: nil, vvvv: nil)
          # set the initial VEX/XOP byte
          byte1 = case type
                  when :vex then 0b11000100
                  when :xop then 0b10001111
                  else
                    raise(ArgumentError,"invalid VEX type: #{type.inspect}")
                  end
          byte2 = 0
          byte3 = 0

          # VEX.R is encoded as the inverted version of REX.R
          byte2 |= 0b10000000 if r == 0

          # VEX.X is encoded as the inverted version of REX.X
          byte2 |= 0b01000000 if x == 0

          # VEX.B is encoded as the inverted version of REX.B
          byte2 |= 0b00100000 if b == 0

          byte2 |= m_mmmm if m_mmmm > 0

          byte3 |= (w << 7) if w == 1

          if vvvv
            # VEX.vvvv is encoded as the inverted value of the extra operand
            byte3 |= ((~vvvv.to_i & 0b1111) << 3)
          end

          byte3 |= (l << 2) if l == 1
          byte3 |= pp if pp > 0

          write_byte(byte1) + write_byte(byte2) + write_byte(byte3)
        end

        #
        # Writes a EVEX encoding to the output stream.
        #
        # @param [0b001, 0b010, 0b011, 0b101, 0b110] mmm
        #   Specifies the opcode map to use.
        #
        # @param [0b00, 0b01, 0b10, 0b11] pp
        #   Specifies the implied mandatory prefix for the opcode.
        #
        # @param [1, 0, nil] w
        #   When `1` indicates that 64bit operand size must be used, otherwise
        #   the default operand sizes will be used.
        #
        # @param [Operand, 0b00, 0b01, 0b10, nil] ll
        #   Specifies whether a vector length of 512bit or 256bit, or rounding
        #   control.
        #
        # @param [Operand, 0b0000, nil] vvvv
        #   Specifies a second source operand.
        #
        # @param [0, nil] v
        # @param [0, nil] rr
        # @param [0, nil] _B
        # @param [0, nil] x
        #
        # @param [Operand, 0, 1, nil] b
        #   Specifies whether source broadcast, rounding control, or supress all
        #   exceptions are enabled.
        #
        # @param [Operand, 0, nil] aaa
        #   The `k0`-`k7` operand mask.
        #
        # @param [Operand, 0] z
        #   Specifies the merging mode (merge or zero).
        #
        # @param [1, 2, 4, 8, 16, 32, 64, nil] disp8xN
        #   The scaling factor for the displacement.
        #
        # @return [4, 5]
        #   The number of bytes written.
        #
        # @see https://en.wikipedia.org/wiki/EVEX_prefix
        #
        def write_evex(mmm: , pp: , w: nil, ll: nil, vvvv: nil, v: nil, rr: nil, _B: nil, x: nil, b: nil, aaa: , z: , disp8xN: nil)
          byte1 = 0b01100010
          byte2 = 0
          byte3 = 0b00000100 # bit 3 is hardcoded
          byte4 = 0

          # EVEX.R and R' is encoded as an inverted value
          byte2 |= 0b10010000 if rr == 0

          # EVEX.X is encoded as an inverted value
          byte2 |= 0b01000000 if x == 0

          # EVEX.B is encoded as an inverted value
          byte2 |= 0b00100000 if _B == 0

          byte2 |= mmm if mmm > 0

          byte3 |= 0b10000000 if w == 1

          # VEX.vvvv is encoded as the inverted value of the extra operand
          if vvvv.kind_of?(Operand)
            byte3 |= ((~vvvv.to_i & 0b1111) << 3)
          end

          byte3 |= pp if pp > 0

          # EVEX.z is set if the operand has a {k} or {k}{z} opmask.
          byte4 |= 0b10000000 if z.kind_of?(Opmask)

          case ll
          when 0b01         then byte4 |= 0b00100000
          when 0b10         then byte4 |= 0b01000000
          when Operands::ER then byte4 |= 0b01100000
          when Operand
            case ll.size
            when 64 then byte4 |= 0b01000000
            when 32 then byte4 |= 0b00100000
            end
          end

          # EVEX.b is set for source broadcast or if {er} / {sae} are given.
          if (b.kind_of?(Broadcast) || b == 1)
            byte4 |= 0b00010000
          end

          # EVEX.v is encoded as an inverted value
          byte4 |= 0b00001000 if v == 0

          # EVEX.aaa is encoded as the k1-k7 opmask register's number.
          if aaa.kind_of?(Opmask)
            byte4 |= (aaa.k.number & 0b111)
          end

          # write out the four EVEX bytes
          count = write_byte(byte1) +
                  write_byte(byte2) +
                  write_byte(byte3) +
                  write_byte(byte4)

          # add the optional disp8xN byte
          count += write_byte(disp8xN) if disp8xN
          return count
        end

      end
    end
  end
end
