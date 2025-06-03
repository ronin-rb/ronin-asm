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

require_relative '../../syntaxes/ruby'

module Ronin
  module ASM
    module X86
      module Syntaxes
        #
        # Ruby syntax for x86 {Ronin::ASM::Program}s.
        #
        # @since 1.0.0
        #
        class Ruby < ASM::Syntaxes::Ruby

          # Data sizes and their size specifier methods
          SIZE_SPECIFIERS= {
            1  => 'byte',
            2  => 'word',
            4  => 'dword',
            8  => 'qword',
            16 => 'oword',
            32 => 'yword',
            64 => 'zword'
          }

          #
          # Formats a memory operand.
          #
          # @param [Memory] mem
          #   The memory operand.
          #
          # @return [String]
          #   The formatted memory operand.
          #
          def self.format_memory(mem)
            ruby = format_register(mem.base)

            if mem.index
              ruby << '+' << format_register(mem.index)
              ruby << '*' << mem.scale.to_s if mem.scale > 1
            end

            if mem.displacement != 0
              ruby << format("%+d",mem.displacement)
            end

            if mem.size
              # add a size specifier, if the memory value has a defined size
              "#{SIZE_SPECIFIERS.fetch(mem.size)}( [#{ruby}] )"
            else
              "[#{ruby}]"
            end
          end

          #
          # Formats the broadcast decorator on a memory operand.
          #
          # @param [Broadcast] bcst
          # @return [String]
          #
          def self.format_broadcast(bcst)
            "bcst(#{format_memory(bcst.memory)}, #{bcst.ratio.inspect})"
          end

          #
          # Formats an opmask decorator on a register or memory operand.
          #
          # @param [Opmask] opmask
          # @return [String]
          #
          def self.format_opmask(opmask)
            if opmask.zero?
              "opmask(#{format_operand(opmask.operand)}, #{format_register(opmask.k)}, zero: true)"
            else
              "opmask(#{format_operand(opmask.operand)}, #{format_register(opmask.k)})"
            end
          end

          # Mapping of decorator name attributes to Ruby method names.
          DECORATORS = {
            :'{rn-sae}' => 'rn_sae',
            :'{rd-sae}' => 'rd_sae',
            :'{ru-sae}' => 'ru_sae',
            :'{rz-sae}' => 'rz_sae',
            :'{sae}'    => 'sae'
          }

          #
          # Forms an instruction decorator operand.
          #
          # @param [ER, SAE] operand
          # @return [String]
          #
          def self.format_decorator(operand)
            DECORATORS.fetch(operand.name) do
              raise(NotImplementedError,"cannot format unknown decorator: #{operand.inspect}")
            end
          end

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
            when Broadcast then format_broadcast(operand)
            when Opmask    then format_opmask(operand)
            when ER, SAE   then format_decorator(operand)
            else                super(operand)
            end
          end

        end
      end
    end
  end
end

require_relative '../broadcast'
require_relative '../opmask'
require_relative '../er'
require_relative '../sae'
