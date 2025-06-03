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

require_relative 'syntax'

module Ronin
  module ASM
    module Syntaxes
      #
      # Base-class for all Assembly syntax classes.
      #
      class Assembly < Syntax

        #
        # Formats a label into Assembly syntax.
        #
        # @param [Label] label
        #   The label object.
        #
        # @return [String]
        #   The formatted label.
        #
        def self.format_label(label) = "#{label.name}:"

        #
        # Formats multiple operands into Assembly syntax.
        #
        # @param [Array<Immediate, Memory, Register, SymbolRef>] ops
        #   The Array of operands.
        #
        # @return [String]
        #   The formatted operands.
        #
        def self.format_operands(ops)
          ops.map(&method(:format_operand)).join(",\t")
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
        def self.format_section(name)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

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
        def self.format_prologue(program)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats a program into Assembly syntax.
        #
        # @param [Program] program
        #   The program.
        #
        # @return [String]
        #   The formatted program.
        #
        def self.format_program(program)
          asm = String.new(encoding: Encoding::UTF_8)

          asm << format_prologue(program) << $/
          asm << format_section(:text) << $/
          asm << format_label(:_start) << $/

          program.instructions.each do |insn|
            case insn
            when Label       then asm << format_label(insn) << $/
            when Instruction then asm << "\t#{format_instruction(insn)}" << $/
            end
          end

          return asm
        end

        #
        # Writes the prologue line(s) of the program to the output stream.
        #
        # @param [Program] program
        #
        def write_prologue(program)
          @output.puts self.class.format_prologue(program)
        end

        #
        # Writes an instruction line to the output stream.
        #
        # @param [Instruction] insn
        #
        def write_instruction(insn)
          super(insn, indent: "\t")
        end

        #
        # Writes the program to the output stream.
        #
        # @param [Program] program
        #   The assembly program to format and write out.
        #
        def write_program(program)
          write_prologue(program)
          write_section(:text)
          write_label(:_start)

          program.instructions.each do |insn|
            case insn
            when Label       then write_label(insn)
            when Instruction then write_instruction(insn)
            end
          end
        end

      end
    end
  end
end
