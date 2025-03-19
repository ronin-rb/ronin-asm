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

module CodeGen
  module X86
    module Helpers
      #
      # Helper methods for generating specs that use
      # `spec/x86/instructions/operand_examples.rb`.
      #
      module OperandSpecExamples
        #
        # Returns the operand type name used in documentation (ex: `reg32`).
        #
        # @param [ISA::Operand] operand
        # @return [String]
        #
        def operand_type_name(operand)
          if operand.specific_immediate? || operand.specific_register?
            operand.type.to_s
          else
            operand.ronin_type
          end
        end

        #
        # Returns a comma separated list of the operand's type names.
        #
        # @param [Array<ISA::Operand>] operands
        # @return [String]
        #
        def operands_type_list(operands)
          operands.map { |operand| operand_type_name(operand) }.join(', ')
        end

        # Mapping of operand types to `let()` names in
        # `spec/x86/instructions/operand_examples.rb`.
        RONIN_ASM_OPERAND_TYPE_LET_NAMES = {
          :'1' => 'imm8_1',
          :'3' => 'imm8_3',

          :"k{k}"      => 'k_k',
          :"xmm{k}"    => 'xmm_k',
          :"xmm{k}{z}" => 'xmm_k_z',
          :"ymm{k}"    => 'ymm_k',
          :"ymm{k}{z}" => 'ymm_k_z',
          :"zmm{k}"    => 'zmm_k',
          :"zmm{k}{z}" => 'zmm_k_z',

          :"vm32x{k}" => 'vm32x_k',
          :"vm64x{k}" => 'vm64x_k',

          :"vm32y{k}" => 'vm32y_k',
          :"vm64y{k}" => 'vm64y_k',

          :"vm32z{k}" => 'vm32z_k',
          :"vm64z{k}" => 'vm64z_k',

          :"mem16{k}"  => 'mem16_k',
          :"mem32{k}"  => 'mem32_k',
          :"mem64{k}"  => 'mem64_k',
          :"mem128{k}" => 'mem128_k',
          :"mem256{k}" => 'mem256_k',
          :"mem512{k}" => 'mem512_k',

          :"mem32/mem16bcst"  => 'mem32_mem16_bcst',
          :"mem64/mem16bcst"  => 'mem64_mem16_bcst',
          :"mem128/mem16bcst" => 'mem128_mem16_bcst',
          :"mem256/mem16bcst" => 'mem256_mem16_bcst',
          :"mem512/mem16bcst" => 'mem512_mem16_bcst',

          :"mem64/mem32bcst"  => 'mem64_mem32_bcst',
          :"mem128/mem32bcst" => 'mem128_mem32_bcst',
          :"mem256/mem32bcst" => 'mem256_mem32_bcst',
          :"mem512/mem32bcst" => 'mem512_mem32_bcst',

          :"mem128/mem64bcst" => 'mem128_mem64_bcst',
          :"mem256/mem64bcst" => 'mem256_mem64_bcst',
          :"mem512/mem64bcst" => 'mem512_mem64_bcst',

          :"{er}"  => 'er',
          :"{sae}" => 'sae'
        }

        #
        # Maps the operand to the `let()` variable name defined in
        # `spec/x86/instructions/operand_examples.rb`.
        #
        # @param [ISA::Operand] operand
        # @return [String]
        #
        def operand_let_name(operand)
          ronin_operand_type = operand.ronin_type

          # use the ronin-asm operand type name to lookup the `let()` name.
          RONIN_ASM_OPERAND_TYPE_LET_NAMES.fetch(ronin_operand_type) do
            ronin_operand_type.to_s
          end
        end

        #
        # Converts the operands into an Array of operand RSpec variables.
        #
        # @param [Array<ISA::Operand>] operands
        # @return [String]
        #
        def operands_array(operands)
          "[#{operands.map(&method(:operand_let_name)).join(', ')}]"
        end

      end
    end
  end
end
