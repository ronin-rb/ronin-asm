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
        # @param [Memory] mem
        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm_mem(mem, mode, reg, rm)
          offset_bytes = 0

          if mem.displacement != 0 || (rm.to_i & 0b111) == 5 # RBP / r13 needs an offset
            if mem.displacement >= -0x7F - 1 && mem.displacement < 0x7F
              offset_bytes = 1
              mode |= 0x1
            else
              offset_bytes = 4
              mode |= 0x2
            end
          end

          # write the modrm byte
          count = write_byte((mode.to_i << 6) | ((reg.to_i & 0b111) << 3) | (rm.to_i & 0b111))

          # Needs SIB, Table 2-2
          if (rm.to_i & 0b111) == 4 # RSP register / r12
            count += write_byte(0x24)
          end

          if mem.displacement != 0 || (rm & 0b111) == 5 # RBP / r13 needs an offset
            count += write_int(mem.displacement, offset_bytes)
          end

          return count
        end

        #
        # @return [Integer]
        #   The number of bytes written.
        #
        def write_modrm_mem_reg_(mode, reg, rm, mem, reg_opnd)
          if mem.rip?
            write_byte(0x5 + ((reg_opnd.to_i % 8) * 8)) +
            write_int(mem.displacement,4)
          else
            super(mode, reg, rm, mem, reg_opnd)
          end
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
        def write_modrm_reg_reg(mode, reg, rm, operands)
          if (rip = operands.find(&:rip?))
            write_byte(0x5) + write_int(rip.displacement,4)
          else
            super(mode, reg, rm, operands)
          end
        end

        # Set of registers that require a REX prefix
        REX_REGISTERS = Set[
          Registers::R8B,
          Registers::R8W,
          Registers::R8D,
          Registers::R8,

          Registers::R9B,
          Registers::R9W,
          Registers::R9D,
          Registers::R9,

          Registers::R10B,
          Registers::R10W,
          Registers::R10D,
          Registers::R10,

          Registers::R11B,
          Registers::R11W,
          Registers::R11D,
          Registers::R11,

          Registers::R12B,
          Registers::R12W,
          Registers::R12D,
          Registers::R12,

          Registers::R13B,
          Registers::R13W,
          Registers::R13D,
          Registers::R13,

          Registers::R14B,
          Registers::R14W,
          Registers::R14D,
          Registers::R14,

          Registers::R15B,
          Registers::R15W,
          Registers::R15D,
          Registers::R15,

          Registers::SPL,
          Registers::BPL,

          Registers::SIL,
          Registers::DIL
        ]

        #
        # Writes the REX encoding to the output stream.
        #
        # @param [Array<Operand>] operands
        #   Operands from the instruction being encoded.
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
        def write_rex(operands, mandatory: , w: , r: nil, x: nil, b: nil)
          needs_rex_prefix = ->(operand) {
            case operand
            when Register then REX_REGISTERS.include?(operand)
            when Memory   then REX_REGISTERS.include?(operand.base)
            end
          }

          if !mandatory && !operands.any?(&needs_rex_prefix)
            return 0
          end

          if (mem = operands.find { |op| op.kind_of?(Memory) })
            if needs_rex_prefix.call(mem)
              x = 0
              b = 1
            end
          end

          rex = 0b0100_0000 | (w << 3)
          rex |= ((r.to_i & 0x8) >> 1) if r
          rex |= ((x.to_i & 0x8) >> 2) if x
          rex |= ((b.to_i & 0x8) >> 3) if b

          write_byte(rex)
        end

      end
    end
  end
end
