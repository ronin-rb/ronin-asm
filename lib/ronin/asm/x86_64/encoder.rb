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

require_relative '../x86/encoder'
require_relative 'registers'
require_relative 'broadcast'
require_relative 'opmask'
require_relative 'operands'

require 'set'

module Ronin
  module ASM
    module X86_64
      #
      # Encodes x86-64 instructions into bytes.
      #
      # @api private
      #
      # @since 1.0.0
      #
      class Encoder < X86::Encoder

        #
        # Writes the ModRM byte for a memory operand and another register.
        #
        # @param [Memory, Integer] mode
        # @param [Register, Integer] reg
        # @param [Memory, Integer] rm
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#ModR/M_and_SIB_bytes
        #
        def write_modrm_mem(mode,reg,rm)
          mem  = mode
          mode = 0b00

          if mem.displacement != 0 || (mem.base.to_i & 0b111) == 5 # EBP/BP/BPL or R13 register
            if mem.displacement.bit_length < 8
              mode = 0b01 # disp8 mode
              displacement_size = 1
            else
              mode = 0b10 # disp32 mode
              displacement_size = 4
            end
          elsif (mem.base.type == :rip || mem.base.type == :eip)
            # RIP/EIP relative requires a mode of 0 and a four byte displacement
            diplacement_size = 4
          end

          count = 0

          if (mem.index && mem.scale)
            count += write_modrm_byte(mode,reg,0b100)
            count += write_sib_byte(mem.scale,mem.index,mem.base)
          elsif (mem.base.to_i & 0b111) == 4 # ESP/SP/SPL or R12 register, but without index/scale
            count += write_modrm_byte(mode,reg,rm)
            count += write_sib_byte(1,0b100,0b100)
          elsif (mem.base.type == :rip || mem.base.type == :eip)
            count += write_modrm_byte(mode,reg,0b101)
          else
            count += write_modrm_byte(mode,reg,rm)
          end

          if mem.displacement != 0 || (mem.base.to_i & 0b111) == 5 # EBP/BP/BPL or R13 register
            count += write_int(mem.displacement,displacement_size)
          end

          return count
        end

        #
        # Writes the REX encoding to the output stream.
        #
        # @param [Boolean] mandatory
        # @param [Integer] w
        # @param [Operand, nil] r
        # @param [Operand, nil] x
        # @param [Operand, nil] b
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        # @see https://wiki.osdev.org/X86-64_Instruction_Encoding#REX_prefix
        #
        def write_rex(mandatory: , w: , r: nil, x: nil, b: nil)
          rex = 0b0100_0000
          rex |= (w << 3) if w == 1

          if r.kind_of?(Register) && r.number.bit_length == 4
            # Enable the REX.R extension to extend ModRM.reg to four bits
            # https://wiki.osdev.org/X86-64_Instruction_Encoding#ModR/M
            rex |= 0b100
          end

          if (x.kind_of?(Register) && x.number.bit_length == 4) ||
             (x.kind_of?(Memory) && x.index && x.index.number.bit_length == 4)
            # Enable the REX.X extension for SIB X.index
            # https://wiki.osdev.org/X86-64_Instruction_Encoding#SIB
            rex |= 0b010
          end

          if (b.kind_of?(Register) && b.number.bit_length == 4) ||
             (b.kind_of?(Memory) && b.base.number.bit_length == 4)
            # Enable the REX.B extension for ModRM B.r/m
            # https://wiki.osdev.org/X86-64_Instruction_Encoding#ModR/M
            rex |= 0b001
          end

          # check if the REX prefix can be omitted
          if mandatory == false && ((rex & 0b1111) == 0b0000) # no bits set
            return 0
          end

          write_byte(rex)
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
        # @param [Register, 0, nil] r
        #   The register operand.
        #
        # @param [Memory, 0, nil] x
        #   The memory operand with {Memory#index index} set.
        #
        # @param [Memory, Register, 0, nil] b
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
          # pre-calculate whether certain VEX bits will be set.
          x_bit = !(
            x.kind_of?(Memory) && x.index && x.index.number.bit_length == 4
          )
          b_bit = !(
            (b.kind_of?(Register) && b.number.bit_length == 4) ||
            (b.kind_of?(Memory) && b.base.number.bit_length == 4)
          )
          w_bit = (w != 1)

          # three-byte VEX encoding where the X bit, B bit, W bit, and M-MMMM
          # bits are all set to 1 can be downgraded to a two-byte VEX encoding.
          if (type == :vex && x_bit && b_bit && w_bit && m_mmmm == 0b00001)
            write_vex_two_byte(r: r, vvvv: vvvv, l: l, pp: pp)
          else
            write_vex_three_byte(type: type, w: w, l: l, m_mmmm: m_mmmm, pp: pp, r: r, x: x, b: b, vvvv: vvvv)
          end
        end

        #
        # Writes a two byte encoded VEX escape prefix.
        #
        # @param [Register, 0, nil] r
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
          unless (r.kind_of?(Register) && r.number.bit_length == 4)
            byte2 |= 0b10000000
          end

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
        # @param [Register, 0, nil] r
        #   The register operand.
        #
        # @param [Memory, 0, nil] x
        #   The memory operand with {Memory#index index} set.
        #
        # @param [Memory, Register, 0, nil] b
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
          unless (r.kind_of?(Register) && r.number.bit_length == 4)
            byte2 |= 0b10000000
          end

          # VEX.X is encoded as the inverted version of REX.X
          unless (x.kind_of?(Memory) && x.index && x.index.number.bit_length == 4)
            byte2 |= 0b01000000
          end

          # VEX.B is encoded as the inverted version of REX.B
          unless ((b.kind_of?(Register) && b.number.bit_length == 4) ||
                  (b.kind_of?(Memory) && b.base.number.bit_length == 4))
            byte2 |= 0b00100000
          end

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
        # @param [Operand, 0b00, 0b01, 0b10, nil] ll
        #   Specifies whether a vector length of 512bit or 256bit, or rounding
        #   control.
        #
        # @param [1, 0, nil] w
        #   When `1` indicates that 64bit operand size must be used, otherwise
        #   the default operand sizes will be used.
        #
        # @param [Operand, 0b0000, nil] vvvv
        #   Specifies a second source operand.
        #
        # @param [Operand, 0, nil] v
        #   Specifies that the `vvvv` operand's value exceeds 4 bits.
        #
        # @param [Operand, nil] rr
        #
        # @param [Operand, nil] _B
        #   The memory operand with {Memory#base base} set.
        #
        # @param [Operand, nil] x
        #   The memory operand with {Memory#index index} set.
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
        def write_evex(mmm: , pp: , ll: nil, w: nil, vvvv: nil, v: nil, rr: nil, _B: nil, x: nil, b: nil, aaa: , z: , disp8xN: nil)
          byte1 = 0b01100010
          byte2 = 0
          byte3 = 0b00000100 # bit 3 is hardcoded
          byte4 = 0

          # EVEX.R and R' is encoded as the inverted version of REX.R
          unless (rr.kind_of?(Register) && rr.number.bit_length >= 4)
            byte2 |= 0b10010000
          end

          # EVEX.X is encoded as the inverted version of REX.X
          unless ((x.kind_of?(Register) && x.number.bit_length >= 4) ||
                  (x.kind_of?(Memory) && x.index && x.index.number.bit_length >= 4))
            byte2 |= 0b01000000
          end

          # EVEX.B is encoded as the inverted version of REX.B
          unless ((_B.kind_of?(Register) && _B.number.bit_length >= 4) ||
                  (_B.kind_of?(Memory) && _B.base.number.bit_length >= 4))
            byte2 |= 0b00100000
          end

          byte2 |= mmm if mmm > 0

          byte3 |= 0b10000000 if w == 1

          # VEX.vvvv is encoded as the inverted value of the extra operand
          if vvvv.kind_of?(Operand) || vvvv == 0
            byte3 |= ((~vvvv.to_i & 0b1111) << 3)
          end

          byte3 |= pp if pp > 0

          # EVEX.z bit specifies merging mode
          byte4 |= 0b10000000 if z.kind_of?(Opmask)

          case ll
          when 0b01 then byte4 |= 0b00100000
          when 0b10 then byte4 |= 0b01000000
          when Operands::RN_SAE then # leave bits 00
          when Operands::RD_SAE then byte4 |= 0b00100000
          when Operands::RU_SAE then byte4 |= 0b01000000
          when Operands::RZ_SAE then byte4 |= 0b01100000
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

          # EVEX.v is encoded as an inverted value indicating that the operand's
          # register number exceeds three bits.
          unless (v.kind_of?(Register) && v.number.bit_length >= 4)
            byte4 |= 0b00001000
          end

          # EVEX.aaa is encoded as the k1-k7 opmask register's number.
          if aaa.kind_of?(Opmask)
            byte4 |= (aaa.k.number & 0b111)
          end

          # write out the four EVEX bytes
          return write_byte(byte1) +
                 write_byte(byte2) +
                 write_byte(byte3) +
                 write_byte(byte4)
        end

      end
    end
  end
end
