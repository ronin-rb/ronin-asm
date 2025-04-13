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

require_relative '../instruction_fixture_file'

module CodeGen
  module X86
    #
    # Represents an instruction fixture file within
    # `spec/x86/instructions/fixtures/`.
    #
    # @note
    #   All instruction fixture files use ATT syntax for compatibility with the
    #   GNU Assembler (GAS), since the GNU Assembler is the only Open Source
    #   assembler that supports nearly the *entire* x86 Instruction Set
    #   Architecture (ISA).
    #
    class InstructionFixtureFile < CodeGen::InstructionFixtureFile

      template File.join(__dir__,'templates','instruction_fixture.s.erb')
      output_dir 'spec/x86/instructions/fixtures'

      #
      # Returns the assembly source code filename for the instruction.
      #
      # @return [String]
      #
      def instruction_filename
        [
          @instruction.name, *@instruction_form.operands.map(&:ronin_type)
        ].join('_').gsub('/','').concat('.s')
      end

      #
      # Formats the assembly instruction.
      #
      # @return [String]
      #
      def format_instruction
        line = @instruction_form.gas_name.to_s

        unless @instruction_form.operands.empty?
          line << ' '

          # jump or call instruction?
          if (@instruction.name.start_with?('j') || @instruction.name == :call)
            operand = @instruction_form.operands[0]

            if (operand.register? || operand.memory?)
              # prepend a '*' before any register or memory operands to
              # indicate an indirect jump/call
              line << '*'
            end
          end

          line << format_operands
        end

        return line
      end

      #
      # Formats operands for the instruction based on the instruction form.
      #
      # @return [String]
      #
      def format_operands
        # NOTE: ATT syntax reverses the order of the operands
        @instruction_form.operands.map.with_index { |operand,index|
          format_operand(operand,index)
        }.reverse.join(', ')
      end

      #
      # Formats an operand for the instruction.
      #
      # @param [ISA::Operand] operand
      # @param [Integer] index
      # @return [String]
      #
      def format_operand(operand,index)
        case operand.type
        # immediate operands
        when :imm4  then imm4_operand(index)
        when :imm8  then imm8_operand(index)
        when :imm16 then imm16_operand(index)
        when :imm32 then imm32_operand(index)
        # specific immediates
        when :"1" then '$1'
        when :"3" then '$3'
        # register operands
        when :r8  then reg8_operand(index)
        when :r16 then reg16_operand(index)
        when :r32 then reg32_operand(index)
        when :r64 then reg64_operand(index)
        when :k   then k_operand(index)
        when :mm  then mmx_operand(index)
        when :xmm then xmm_operand(index)
        when :ymm then ymm_operand(index)
        when :zmm then zmm_operand(index)
        # specific registers
        when :al   then '%al'
        when :cl   then '%cl'
        when :ax   then '%ax'
        when :eax  then '%eax'
        when :xmm0 then '%xmm0'
        # memory operands
        when :m, :m8, :m16, :m32, :m64, :m128, :m256, :m512
          mem_operand(index)
        # relative offset operands
        when :rel8  then rel8_operand(index)
        when :rel32 then rel32_operand(index)
        # memory offset operands
        when :moffs32 then moffset32_operand(index)
        when :moffs64 then moffset64_operand(index)
        # vector indexed memory operands
        when :vm32x then vm32x_operand(index)
        when :vm64x then vm64x_operand(index)
        when :vm32y then vm32y_operand(index)
        when :vm64y then vm64y_operand(index)
        when :vm32z then vm32z_operand(index)
        when :vm64z then vm64z_operand(index)
        # opmask operands
        when :"k{k}"      then opmask(k_operand(index), k_operand(index + 1))
        when :"xmm{k}"    then opmask(xmm_operand(index))
        when :"xmm{k}{z}" then opmask(xmm_operand(index), zero: true)
        when :"ymm{k}"    then opmask(ymm_operand(index))
        when :"ymm{k}{z}" then opmask(ymm_operand(index), zero: true)
        when :"zmm{k}"    then opmask(zmm_operand(index))
        when :"zmm{k}{z}" then opmask(zmm_operand(index), zero: true)
        when :"m16{k}", :"m32{k}", :"m64{k}",
             :"m128{k}", :"m256{k}", :"m256{k}", :"m512{k}"
          opmask(mem_operand(index))
        when :"vm32x{k}" then opmask(vm32x_operand(index))
        when :"vm64x{k}" then opmask(vm64x_operand(index))
        when :"vm32y{k}" then opmask(vm32y_operand(index))
        when :"vm64y{k}" then opmask(vm64y_operand(index))
        when :"vm32z{k}" then opmask(vm32z_operand(index))
        when :"vm64z{k}" then opmask(vm64z_operand(index))
        # memory broadcast operands
        when :"m32/m16bcst"  then broadcast(mem_operand(index), {1=>2})
        when :"m64/m16bcst"  then broadcast(mem_operand(index), {1=>4})
        when :"m128/m16bcst" then broadcast(mem_operand(index), {1=>8})
        when :"m256/m16bcst" then broadcast(mem_operand(index), {1=>16})
        when :"m512/m16bcst" then broadcast(mem_operand(index), {1=>32})
        when :"m64/m32bcst"  then broadcast(mem_operand(index), {1=>2})
        when :"m128/m32bcst" then broadcast(mem_operand(index), {1=>4})
        when :"m256/m32bcst" then broadcast(mem_operand(index), {1=>8})
        when :"m512/m32bcst" then broadcast(mem_operand(index), {1=>16})
        when :"m128/m64bcst" then broadcast(mem_operand(index), {1=>2})
        when :"m256/m64bcst" then broadcast(mem_operand(index), {1=>4})
        when :"m512/m64bcst" then broadcast(mem_operand(index), {1=>8})
        # embedded rounding control / suppress all exceptions decorator operands
        when :"{er}"  then '{rn-sae}'
        when :"{sae}" then '{sae}'
        else
          raise(NotImplementedError,"cannot generate operand for operand type: #{operand.ronin_type}")
        end
      end

      #
      # Formats an 4bit immediate value based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def imm4_operand(index) = format("$0b%.4b", index + 1)

      #
      # Formats an 8bit immediate value based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def imm8_operand(index) = format("$0x%.2x",0x11 * (index + 1))

      #
      # Formats an 16bit immediate value based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def imm16_operand(index) = format("$0x%.4x",0x1111 * (index + 1))

      #
      # Formats an 32bit immediate value based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def imm32_operand(index) = format("$0x%.8x",0x11111111 * (index + 1))

      # 8bit register names sorted by operand index.
      #
      # @note
      #   The list of 8bit registers starts with `%bl` instead of `%al` to
      #   avoid accidentally matching other instruction forms where `%al` is the
      #   first operand.
      REG8_OPERANDS = %w[%bl %cl %dl %sil %dil]

      #
      # Returns an 8bit register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def reg8_operand(index) = REG8_OPERANDS.fetch(index)

      # 16bit register names sorted by operand index.
      #
      # @note
      #   The list of 16bit registers starts with `%bx` instead of `%ax` to
      #   avoid accidentally matching other instruction forms where `%ax` is the
      #   first operand.
      REG16_OPERANDS = %w[%bx %cx %dx %si %di]

      #
      # Returns an 16bit register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def reg16_operand(index) = REG16_OPERANDS.fetch(index)

      # 32bit register names sorted by operand index.
      #
      # @note
      #   The list of 32bit registers starts with `%ebx` instead of `%eax` to
      #   avoid accidentally matching other instruction forms where `%eax` is
      #   the first operand.
      REG32_OPERANDS = %w[%ebx %ecx %edx %esi %edi]

      #
      # Returns an 32bit register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def reg32_operand(index) = REG32_OPERANDS.fetch(index)

      alias reg_operand reg32_operand

      #
      # Returns an 64bit register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      # @see #mmx_operand
      #
      def reg64_operand(index) = mmx_operand(index)

      #
      # Returns a K register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def k_operand(index=0) = "%k#{index + 1}"

      #
      # Returns a MMX register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def mmx_operand(index) = "%mm#{index}"

      #
      # Returns a XMM register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def xmm_operand(index) = "%xmm#{index}"

      #
      # Returns a YMM register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def ymm_operand(index) = "%ymm#{index}"

      #
      # Returns a ZMM register based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def zmm_operand(index) = "%zmm#{index}"

      #
      # Returns a memory operand based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def mem_operand(index) = "(#{reg_operand(index)})"

      #
      # Returns an 8bit relative offset operand.
      #
      # @param [Integer] index
      # @return [String]
      #
      def rel8_operand(index) = '_rel8'

      #
      # Returns an 32bit relative offset operand.
      #
      # @param [Integer] index
      # @return [String]
      #
      def rel32_operand(index) = '_rel32'

      #
      # Returns an 32bit memory offset operand.
      #
      # @param [Integer] index
      # @return [String]
      #
      def moffset32_operand(index) = '%ds:32'

      #
      # Returns an 64bit memory offset operand.
      #
      # @param [Integer] index
      # @return [String]
      #
      def moffset64_operand(index) = '%ds:64'

      #
      # Returns a 32bit vectory indexed memory operand using a XMM register
      # based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def vm32x_operand(index)
        "(#{reg_operand(index)},#{xmm_operand(index)},4)"
      end

      #
      # Returns a 64bit vectory indexed memory operand using a XMM register
      # based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def vm64x_operand(index)
        "(#{reg_operand(index)},#{xmm_operand(index)},8)"
      end

      #
      # Returns a 32bit vectory indexed memory operand using a YMM register
      # based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def vm32y_operand(index)
        "(#{reg_operand(index)},#{ymm_operand(index)},4)"
      end

      #
      # Returns a 64bit vectory indexed memory operand using a YMM register
      # based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def vm64y_operand(index)
        "(#{reg_operand(index)},#{ymm_operand(index)},8)"
      end

      #
      # Returns a 32bit vectory indexed memory operand using a ZMM register
      # based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def vm32z_operand(index)
        "(#{reg_operand(index)},#{zmm_operand(index)},4)"
      end

      #
      # Returns a 64bit vectory indexed memory operand using a ZMM register
      # based on the operand index.
      #
      # @param [Integer] index
      # @return [String]
      #
      def vm64z_operand(index)
        "(#{reg_operand(index)},#{zmm_operand(index)},8)"
      end

      #
      # Adds an opmask decorator to the given operand using the given K register.
      #
      # @param [String] operand
      # @param [String] k
      # @param [Boolean] zero
      # @return [String]
      #
      def opmask(operand,k=k_operand, zero: false)
        if zero then "#{operand}{#{k}}{z}"
        else         "#{operand}{#{k}}"
        end
      end

      #
      # Adds a broadcast decorator to the given operand with the given ratio.
      #
      # @param [String] operand
      # @param [Hash{Integer => Integer}] ratio
      # @return [String]
      #
      def broadcast(operand,ratio) = "#{operand}{1to#{ratio.values.first}}"

    end
  end
end
