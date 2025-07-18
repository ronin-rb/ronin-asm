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

require_relative 'assembly'

module Ronin
  module ASM
    module X86
      module Syntaxes
        #
        # ATT assembly syntax for x86.
        #
        # @since 1.0.0
        #
        class ATT < Assembly

          #
          # Formats a register.
          #
          # @param [Register] reg
          #   The register.
          #
          # @return [String]
          #   The register name.
          #
          def self.format_register(reg) = "%#{reg.name}"

          #
          # Formats an immediate operand.
          #
          # @param [Immediate] imm
          #   The immediate operand.
          #
          # @return [String]
          #   The formatted immediate operand.
          #
          def self.format_immediate(imm) = "$#{format_integer(imm.value)}"

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
          # Formats multiple operands.
          #
          # @param [Array<Immediate, Memory, Register, Symbol>] operands
          #   The Array of operands.
          #
          # @return [String]
          #   The formatted operands.
          #
          def self.format_operands(operands)
            if operands.length > 1
              # NOTE: ATT operands are listed in reverse order
              att_operands = operands.reverse

              att_operands.map(&method(:format_operand)).join(",\t")
            else
              super(operands)
            end
          end

          #
          # Formats an instruction.
          #
          # @param [Instruction] insn
          #   The instruction.
          #
          # @return [String]
          #   The formatted instruction.
          #
          def self.format_instruction(insn)
            line = insn.gas_name.to_s

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
          # Formats a section name.
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
          # Formats the program's prologue.
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
