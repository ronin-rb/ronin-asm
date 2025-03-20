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

require_relative '../instructions_file'

module CodeGen
  module X86
    #
    # Represents the `lib/ronin/asm/x86/instructions.rb` file.
    #
    class InstructionsFile < CodeGen::InstructionsFile

      template File.join(__dir__,'instructions.rb.erb')
      output_file 'lib/ronin/asm/x86/instructions.rb'

      #
      # @group Instruction Code Example Methods
      #

      #
      # Builds examples for the instruction and all possible operand types it
      # can accept.
      #
      # @param [ISA::Instruction] instruction
      # @return [Array<String>]
      #
      def instruction_examples(instruction)
        instruction.forms.map { |instruction_form|
          example_instruction(instruction.name,instruction_form.operands)
        }.uniq
      end

      #
      # Builds an example instruction.
      #
      # @param [Symbol] name
      # @param [Array<ISA::Operand>] operands
      # @return [String]
      #
      def example_instruction(name,operands)
        unless operands.empty?
          "#{name} #{example_operands(operands)}"
        else
          name.to_s
        end
      end

      #
      # Builds a list of example operands.
      #
      # @param [Array<ISA::Operand>] operands
      # @return [String]
      #
      def example_operands(operands)
        operands.map.with_index { |operand,operand_index|
          example_operand(operand,operand_index)
        }.join(', ')
      end

      #
      # Returns an example ronin-asm operand for the x86 ISA opperand.
      #
      # @param [ISA::Operand] operand
      # @return [String]
      #
      def example_operand(operand,index)
        if    operand.immediate?       then example_immediate(operand.type,index)
        elsif operand.register?        then example_register(operand.type,index)
        elsif operand.vector_memory?   then example_vector_memory(operand.type,index)
        elsif operand.memory?          then example_memory(operand.type,index)
        elsif operand.bcst?            then example_bcst(operand.type,index)
        elsif operand.opmask?          then example_opmask(operand.type,index)
        elsif operand.relative_offset? then example_relative_offset(operand.type,index)
        elsif operand.memory_offset?   then example_memory_offset(operand.type,index)
        elsif operand.special_operand? then example_special_operand(operand.type,index)
        else
          raise(NotImplementedError,"unable to create an example for operand: #{operand.inspect}")
        end
      end

      #
      # Returns an example immediate operand.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_immediate(operand_type,index)
        case operand_type
        when :imm4      then '0b1111'
        when :imm8      then format('0x%.2x',index+1)
        when :imm16     then format('0x%.4x',index+1)
        when :imm32     then format('0x%.8x',index+1)
        when :"1", :"3" then operand_type.to_s
        else
          raise(ArgumentError,"unknown immediate operand type: #{operand_type.inspect}")
        end
      end

      # Example letter registers grouped by register type.
      EXAMPLE_LETTER_REGISTERS = {
        r8:  %w[al bl cl dl],
        r16: %w[ax bx cx dx],
        r32: %w[eax ebx ecx edx]
      }

      #
      # Returns an example register.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_register(operand_type,index)
        case operand_type
        when :r8, :r16, :r32
          EXAMPLE_LETTER_REGISTERS.fetch(operand_type).fetch(index)
        when :k
          # NOTE: the k0 register is never used, so start indexing at k1
          "k#{index+1}"
        when :mm, :xmm, :ymm, :zmm
          "#{operand_type}#{index}"
        when :al, :cl, :ax, :eax, :xmm0, :ymm0, :zmm0
          operand_type.to_s
        else
          raise(ArgumentError,"unknown register operand type: #{operand_type.inspect}")
        end
      end

      #
      # Builds an example memory operand.
      #
      # @param [String] base
      # @param [String, nil] index
      # @param [String, nil] scale
      # @return [String]
      #
      def memory_operand(base: , index: nil, scale: nil)
        if    index && scale then "[#{base}+#{index}*#{scale}]"
        elsif index          then "[#{base}+#{index}]"
        else                      "[#{base}]"
        end
      end

      # Memory operand types and their sizes.
      MEMORY_TYPE_SIZES = {
        :m    => nil,
        :m8   => 1,
        :m16  => 2,
        :m32  => 4,
        :m64  => 8,
        :m128 => 16,
        :m256 => 32,
        :m512 => 64
      }

      #
      # Returns an example memory register for the base of a memory operand.
      #
      # @param [Integer] index
      # @return [String]
      #
      def example_memory_base_register(index) = example_register(:r32,index)

      #
      # Returns an example memory operand for the given memory operand type and
      # index.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_memory(operand_type,index)
        base = example_memory_base_register(index)

        memory_operand(base: base)
      end

      #
      # Returns an example vector indexed memory operand for the given
      # vector memory operand type and index.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_vector_memory(operand_type,index)
        index_reg, size = case operand_type
                          when :vm32x then [:xmm, 4]
                          when :vm64x then [:xmm, 8]
                          when :vm32y then [:ymm, 4]
                          when :vm64y then [:ymm, 8]
                          when :vm32z then [:zmm, 4]
                          when :vm64z then [:zmm, 8]
                          else
                            raise(ArgumentError,"unknown vector memory operand type: #{operand_type.inspect}")
                          end

        base  = example_memory_base_register(index)
        index = example_register(index_reg,index)

        memory_operand(base: base, index: index, scale: size)
      end

      #
      # Builds an example `opmask(...)` method call for the given operand and
      # k register.
      #
      # @param [String] operand
      # @param [String] k
      # @param [Boolean] zero
      # @return [String]
      #
      def opmask(operand,k='k1', zero: false)
        if zero
          "opmask(#{operand}, #{k}, zero: true)"
        else
          "opmask(#{operand}, #{k})"
        end
      end

      #
      # Returns an example `opmask(...)` method call for the given operand type
      # and index.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_opmask(operand_type,index)
        case operand_type
        when :"k{k}"
          opmask('k1','k2')
        when :"xmm{k}", :"ymm{k}", :"zmm{k}"
          reg_type = operand_type[0...-3].to_sym

          opmask(example_register(reg_type,index))
        when :"m16{k}", :"m32{k}", :"m64{k}", :"m128{k}", :"m256{k}", :"m512{k}"
          mem_type = operand_type[0...-3].to_sym

          opmask(example_memory(mem_type,index))
        when :"vm32x{k}", :"vm64x{k}",
             :"vm32y{k}", :"vm64y{k}",
             :"vm32z{k}", :"vm64z{k}"
          mem_type = operand_type[0...-3].to_sym

          opmask(example_vector_memory(mem_type,index))
        when :"xmm{k}{z}", :"ymm{k}{z}", :"zmm{k}{z}"
          reg_type = operand_type[0...-6].to_sym

          opmask(example_register(reg_type,index), zero: true)
        else
          raise(ArgumentError,"unknown opmask operand type: #{operand_type.inspect}")
        end
      end

      #
      # Builds an example `bcst(...)` method call for the given operand and
      # ratio.
      #
      # @param [String] operand
      # @param [Hash{Integer=>Integer}] ratio
      # @return [String]
      #
      def bcst(operand,ratio) = "bcst(#{operand}, #{ratio.inspect})"

      #
      # Returns an example `bcst(...)` operand for the given operand type and
      # index.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_bcst(operand_type,index)
        mem_type, ratio = case operand_type
                          when :"m32/m16bcst"  then [:m16, {1=>2}]
                          when :"m64/m16bcst"  then [:m16, {1=>4}]
                          when :"m128/m16bcst" then [:m16, {1=>8}]
                          when :"m256/m16bcst" then [:m16, {1=>16}]
                          when :"m512/m16bcst" then [:m16, {1=>32}]
                          when :"m64/m32bcst"  then [:m32, {1=>2}]
                          when :"m128/m32bcst" then [:m32, {1=>4}]
                          when :"m256/m32bcst" then [:m32, {1=>8}]
                          when :"m512/m32bcst" then [:m32, {1=>16}]
                          when :"m128/m64bcst" then [:m64, {1=>2}]
                          when :"m256/m64bcst" then [:m64, {1=>4}]
                          when :"m512/m64bcst" then [:m64, {1=>8}]
                          end

        bcst(example_memory(mem_type,index),ratio)
      end

      #
      # Returns an example relative offset operand.
      #
      # @param [Symbol] operand
      # @param [Integer] index
      # @return [String]
      #
      def example_relative_offset(operand_type,index)
        # TODO: come up with better example relative offset values.
        case operand_type
        when :rel8      then 'rel8(-4)'
        when :rel32     then 'rel32(0x10000)'
        end
      end

      #
      # Returns an example memory offset operand.
      #
      # @param [Symbol] operand_type
      # @param [Integer] index
      # @return [String]
      #
      def example_memory_offset(operand_type,index)
        # TODO: come up with better example memory offset values.
        case operand_type
        when :moffs32 then 'moffset32(0x10000)'
        when :moffs64 then 'moffset64(0x10000)'
        end
      end

      #
      # Returns an example special operand (ex: `er` or `sae`).
      #
      # @param [Symbol] operand
      # @param [Integer] index
      # @return [String]
      #
      def example_special_operand(operand_type,index)
        case operand_type
        when :"{er}"  then 'er'
        when :"{sae}" then 'sae'
        end
      end

    end
  end
end
