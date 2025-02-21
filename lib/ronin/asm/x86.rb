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

require_relative 'register'

module Ronin
  module ASM
    #
    # Contains x86 architecture information.
    #
    module X86
      # Default word size
      WORD_SIZE = 4

      # X86 registers
      REGISTERS = {
        al:  Register.new(:al, width: 1),
        ah:  Register.new(:ah, width: 1),
        ax:  Register.new(:ax, width: 2),
        eax: Register.new(:eax, width: 4, general: true),

        bl:  Register.new(:bl, width: 1),
        bh:  Register.new(:bh, width: 1),
        bx:  Register.new(:bx, width: 2),
        ebx: Register.new(:ebx, width: 4, general: true),

        cl:  Register.new(:cl, width: 1),
        ch:  Register.new(:ch, width: 1),
        cx:  Register.new(:cx, width: 2),
        ecx: Register.new(:ecx, width: 4, general: true),

        dl:  Register.new(:dl, width: 1),
        dh:  Register.new(:dh, width: 1),
        dx:  Register.new(:dx, width: 2),
        edx: Register.new(:edx, width: 4, general: true),

        bp:  Register.new(:bp, width: 2),
        ebp: Register.new(:ebp, width: 4),

        sp:  Register.new(:sp, width: 2),
        esp: Register.new(:esp, width: 4),

        ip:  Register.new(:ip, width: 2),
        eip: Register.new(:eip, width: 4),

        sil: Register.new(:sil, width: 1),
        si:  Register.new(:si, width: 2),
        esi: Register.new(:esi, width: 4, general: true),

        dil: Register.new(:dil, width: 1),
        di:  Register.new(:di, width: 2),
        edi: Register.new(:edi, width: 4, general: true),

        cs: Register.new(:cs, width: 2),
        ds: Register.new(:ds, width: 2),
        es: Register.new(:es, width: 2),
        fs: Register.new(:fs, width: 2),
        gs: Register.new(:gs, width: 2),
        ss: Register.new(:ss, width: 2)
      }

      #
      # Generates the instruction to trigger an interrupt.
      #
      # @param [Integer] number
      #   The interrupt number.
      #
      def interrupt(number); instruction(:int,number); end

      #
      # Generates the instruction to invoke a syscall.
      #
      def syscall; interrupt(0x80); end

      #
      # The Stack Base Pointer register.
      #
      # @see ebp
      #
      def stack_base; ebp; end

      #
      # The Stack Pointer register.
      #
      # @see esp
      #
      def stack_pointer; esp; end

      #
      # Generates the instruction to push a value onto the Stack.
      #
      # @param [Immediate, Memory, Register, Integer, Symbol] op
      #   The value.
      #
      def stack_push(op); instruction(:push,op); end

      #
      # Generates the instruction to pop a value off of the Stack.
      #
      # @param [Register] op
      #   The register operand to store the value.
      #
      def stack_pop(op); instruction(:pop,op); end

      #
      # Generates the instruction to clear a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      def register_clear(name)
        instruction(:xor,register(name),register(name))
      end

      #
      # Generates the instruction to set a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      # @param [Immediate, Memory, Register, Integer, Symbol] value
      #   The value to set.
      #
      def register_set(name,value)
        instruction(:mov,value,register(name))
      end

      #
      # Generates the instruction to save a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      def register_save(name)
        stack_push(register(name))
      end

      #
      # Generates the instruction to restore a register.
      #
      # @param [Symbol] name
      #   The name of the register.
      #
      def register_load(name)
        stack_pop(register(name))
      end
    end
  end
end
