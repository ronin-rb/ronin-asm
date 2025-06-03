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
      # Base-class for all Ruby syntax classes.
      #
      class Ruby < Syntax

        #
        # Formats a register into Ruby syntax.
        #
        # @param [Register] reg
        #
        # @return [String]
        #   The formatted register.
        #
        def self.format_register(reg) = reg.name.to_s

        #
        # Formats the symbol reference into Ruby syntax.
        #
        # @param [SymbolRef] symbol_ref
        #
        # @return [String]
        #
        def self.format_symbol_ref(symbol_ref)
          if symbol_ref.name =~ /\A[A-Za-z_][A-Za-z0-9_]*\z/
            symbol_ref.name.dup
          else
            "symbol_ref(#{symbol_ref.name.inspect})"
          end
        end

        #
        # Formats an immediate operand into Ruby syntax.
        #
        # @param [Immediate] imm
        #   The immediate operand.
        #
        # @return [String]
        #   The formatted immediate operand.
        #
        def self.format_immediate(imm)
          case imm.size
          when nil then imm.value.to_s
          when 1   then "byte(#{imm.value})"
          when 2   then "word(#{imm.value})"
          when 4   then "dword(#{imm.value})"
          when 8   then "qword(#{imm.value})"
          else
            raise(NotImplementedError,"formatting immediate values with size > 8 not supported")
          end
        end

        #
        # Adds a size specifier to the operand.
        #
        # @param [Immediate, Memory] operand
        #
        # @return [String]
        #
        def self.format_size_specifier(operand)
          raise(NotImplementedError,"#{self}.#{__method__} was not implemented")
        end

        #
        # Formats multiple operands into Ruby syntax.
        #
        # @param [Array<Immediate, Memory, Register, SymbolRef>] ops
        #   The Array of operands.
        #
        # @return [String]
        #   The formatted operands.
        #
        def self.format_operands(ops)
          ops.map(&method(:format_operand)).join(', ')
        end

        #
        # Formats a label into Ruby syntax.
        #
        # @param [Label] label
        #   The label object.
        #
        # @return [String]
        #   The formatted label.
        #
        def self.format_label(label) = "label(#{label.name.inspect})"

        #
        # Formats an instruction into Ruby syntax.
        #
        # @param [Instruction] insn
        #   The instruction.
        #
        # @return [String]
        #   The formatted instruction.
        #
        def self.format_instruction(insn)
          line = insn.name.to_s

          unless insn.operands.empty?
            line << ' ' << format_operands(insn.operands)
          end

          return line
        end

        #
        # Formats a program into Ruby syntax.
        #
        # @param [Program] program
        #   The program.
        #
        # @return [String]
        #   The formatted program.
        #
        def self.format_program(program)
          asm = String.new(encoding: Encoding::UTF_8)
          asm << if program.os
                   "Ronin::ASM.new(arch: #{program.arch.inspect}, os: #{program.os.inspect}) do#{$/}"
                 else
                   "Ronin::ASM.new(arch: #{program.arch.inspect}) do#{$/}"
                 end

          program.instructions.each do |insn|
            case insn
            when Label       then asm << "  #{format_label(insn)}#{$/}"
            when Instruction then asm << "  #{format_instruction(insn)}#{$/}"
            end
          end

          asm << "end#{$/}"
        end

        #
        # Writes a label declaration to the output stream.
        #
        # @param [Label] label
        #
        def write_label(label)
          super(label, indent: '  ')
        end

        #
        # Writes an instruction line to the output stream.
        #
        # @param [Instruction] insn
        #
        def write_instruction(insn)
          super(insn, indent: '  ')
        end

        #
        # Writes the program to the output stream.
        #
        # @param [Program] program
        #   The assembly program to format and write out.
        #
        def write_program(program)
          if program.os
            @output.puts "Ronin::ASM.new(arch: #{program.arch.inspect}, os: #{program.os.inspect}) do"
          else
            @output.puts "Ronin::ASM.new(arch: #{program.arch.inspect}) do"
          end

          program.instructions.each do |insn|
            case insn
            when Label       then write_label(insn)
            when Instruction then write_instruction(insn)
            end
          end

          @output.puts 'end'
        end

      end
    end
  end
end
