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

require_relative 'common'

module Ronin
  module ASM
    module X86
      module Syntax
        #
        # ATT assembly syntax for x86.
        #
        # @since 1.0.0
        #
        class ATT < Common

          # Data sizes and their instruction mnemonics
          INSTRUCTION_SUFFIXES = {
            8 => 'q',
            4 => 'l',
            2 => 'w',
            1 => 'b',
            nil => ''
          }

          #
          # Emits a register.
          #
          # @param [Register] reg
          #   The register.
          #
          # @return [String]
          #   The register name.
          #
          def self.format_register(reg) = "%#{reg.name}"

          #
          # Emits an immediate operand.
          #
          # @param [Immediate] imm
          #   The immediate operand.
          #
          # @return [String]
          #   The formatted immediate operand.
          #
          def self.format_immediate(imm) = "$#{format_integer(imm.value)}"

          #
          # Emits a memory operand.
          #
          # @param [Memory] mem
          #   The memory operand.
          #
          # @return [String]
          #   The formatted memory operand.
          #
          def self.format_memory(mem)
            asm = format_register(mem.base)

            if mem.index
              asm << ',' << format_register(mem.index)
              asm << ',' << mem.scale.to_s if mem.scale > 1
            end

            if mem.displacement != 0
              "#{mem.displacement}(#{asm})"
            else
              "(#{asm })"
            end
          end

          #
          # Emits multiple operands.
          #
          # @param [Array<Immediate, Memory, Register, Symbol>] operands
          #   The Array of operands.
          #
          # @return [String]
          #   The formatted operands.
          #
          def self.format_operands(operands)
            if operands.length > 1
              dest_operand = operands[0]
              src_operands = operands[1..]
              att_operands = [*src_operands, dest_operand]

              att_operands.map(&method(:format_operand)).join(",\t")
            else
              super(operands)
            end
          end

          #
          # Formats the instruction name for the given instruction and it's
          # operands.
          #
          # @param [Instruction] insn
          # @return [String]
          #
          def self.format_instruction_name(insn)
            # handle when both the memory operand and immediate operand do not
            # have a defined size.
            if insn.operands.length == 2 && insn.operands[0].type == :mem && insn.operands[1].type == :imm
              memory    = insn.operands[0]
              immediate = insn.operands[1]

              suffix = INSTRUCTION_SUFFIXES.fetch(immediate.infer_size)

              # add an instruction size suffix to the instruction name when both
              # operands have ambiguous sizes.
              "#{insn.name}#{suffix}"
            else
              insn.name.to_s
            end
          end

          #
          # Emits an instruction.
          #
          # @param [Instruction] insn
          #   The instruction.
          #
          # @return [String]
          #   The formatted instruction.
          #
          def self.format_instruction(insn)
            line = format_instruction_name(insn)

            unless insn.operands.empty?
              line << "\t"

              # jump or call instruction?
              if (insn.name.start_with?('j') || insn.name == :call)
                case insn.operands[0]
                when Register, Memory
                  # prepend a '*' before any register or memory operands to
                  # indicate an indirect jump/call
                  line << '*'
                end
              end

              line << format_operands(insn.operands)
            end

            return line
          end

          #
          # Emits a section name.
          #
          # @param [Symbol] name
          #   The section name.
          #
          # @return [String]
          #   The formatted section name.
          #
          # @since 0.2.0
          #
          def self.format_section(name) = ".#{name}"

          #
          # Emits the program's prologue.
          #
          # @param [Program] program
          #   The program.
          #
          # @return [String]
          #   The formatted prologue.
          #
          # @since 0.2.0
          #
          def self.format_prologue(program) = '.code32'

        end
      end
    end
  end
end
