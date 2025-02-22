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

require_relative 'x86/registers'

module Ronin
  module ASM
    #
    # Contains X86 Architecture information.
    #
    module X86
      # Default word size
      WORD_SIZE = 4

      # X86 registers
      REGISTERS = {
        al:  Registers::AL,
        ah:  Registers::AH,
        ax:  Registers::AX,
        eax: Registers::EAX,

        bl:  Registers::BL,
        bh:  Registers::BH,
        bx:  Registers::BX,
        ebx: Registers::EBX,

        cl:  Registers::CL,
        ch:  Registers::CH,
        cx:  Registers::CX,
        ecx: Registers::ECX,

        dl:  Registers::DL,
        dh:  Registers::DH,
        dx:  Registers::DX,
        edx: Registers::EDX,

        sil: Registers::SIL,
        si:  Registers::SI,
        esi: Registers::ESI,

        dil: Registers::DIL,
        di:  Registers::DI,
        edi: Registers::EDI,

        bp:  Registers::BP,
        ebp: Registers::EBP,

        sp:  Registers::SP,
        esp: Registers::ESP,

        cs: Registers::CS,
        ds: Registers::DS,
        es: Registers::ES,
        fs: Registers::FS,
        gs: Registers::GS,
        ss: Registers::SS
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
        instruction(:mov,register(name),value)
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
