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

require_relative '../../syntax/common'

module Ronin
  module ASM
    module X86
      module Syntax
        #
        # Common x86 Assembly syntax.
        #
        # @since 1.0.0
        #
        class Common < ASM::Syntax::Common

          # Broadcast ratios and their formatted syntax.
          BROADCAST_RATIOS = {
            {1=>2}  => '{1to2}',
            {1=>4}  => '{1to4}',
            {1=>8}  => '{1to8}',
            {1=>16} => '{1to16}',
            {1=>32} => '{1to32}'
          }

          #
          # Formats the broadcast decorator on a memory operand.
          #
          # @param [Broadcast] bcst
          # @return [String]
          #
          def self.format_broadcast(bcst)
            ratio = BROADCAST_RATIOS.fetch(bcst.ratio)

            "#{format_memory(bcst.memory)} #{ratio}"
          end

          #
          # Formats an opmask decorator on a register or memory operand.
          #
          # @param [Opmask] opmask
          # @return [String]
          #
          def self.format_opmask(opmask)
            asm = "#{format_operand(opmask.operand)} {#{format_register(opmask.k)}}"
            asm << '{z}' if opmask.zero?

            return asm
          end

          #
          # Forms a special operand.
          #
          # @param [SpecialOperand] operand
          # @return [String]
          #
          def self.format_special_operand(operand) = operand.to_s

          #
          # Formats an operand.
          #
          # @param [Immediate, Memory, Register, LabelRef, Broadcast, SpecialOperand] operand
          #   The operand.
          #
          # @return [String]
          #   The formatted operand.
          #
          def self.format_operand(operand)
            case operand
            when Broadcast      then format_broadcast(operand)
            when Opmask         then format_opmask(operand)
            when SpecialOperand then format_special_operand(operand)
            else                     super(operand)
            end
          end

        end
      end
    end
  end
end

require_relative '../broadcast'
require_relative '../opmask'
require_relative '../special_operand'
