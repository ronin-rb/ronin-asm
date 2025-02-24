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
          end

          count = 0

          if (mem.index && mem.scale)
            count += write_modrm_byte(mode,reg,0b100)
            count += write_sib_byte(mem.scale,mem.index,mem.base)
          elsif (mem.base.to_i & 0b111) == 4 # ESP/SP/SPL or R12 register, but without index/scale
            count += write_modrm_byte(mode,reg,rm)
            count += write_sib_byte(1,0b100,0b100)
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
          rex = 0b0100_0000 | (w << 3)

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

          write_byte(rex)
        end

      end
    end
  end
end
