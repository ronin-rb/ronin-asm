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

require_relative '../register'
require_relative 'operand'
require_relative 'memory'

module Ronin
  module ASM
    module X86
      #
      # Base class for all x86 registers.
      #
      # @since 1.0.0
      #
      class Register < ASM::Register

        include Operand

        # The assembly class type.
        #
        # @return [:reg8, :reg16, :reg32, :reg64, Symbol]
        attr_reader :type

        #
        # Initializes the x86 register.
        #
        # @param [Symbol] name
        #   The register name.
        #
        # @param [Integer] size
        #   The size of the register.
        #
        # @param [Symbol] type
        #   The optional assembly class type of the register.
        #   Defaults to `:reg#{size * 8}` if not given.
        #
        # @param [Boolean] stack_pointer
        #   Indicates that the register is used as a stack pointer register
        #   (`spl`, `sp`, or `esp`).
        #
        # @param [Boolean] base_pointer
        #   Indicates that the register is used as a base pointer register
        #   (`bpl`, `bp`, or `ebp`).
        #
        # @param [Hash{Symbol => Object}] kwargs
        #   Additional keyword arguments for {ASM::Register#initialize}.
        #
        # @option kwargs [Integer] :number (0)
        #   The register's number used in encoding.
        #
        # @option kwargs [Boolean] :general_purpose (false)
        #   Specifies whether the register is a General Purpose Register (GPR).
        #
        def initialize(name, size: ,
                             type: :"reg#{size * 8}",

                             stack_pointer: false,
                             base_pointer:  false,
                             **kwargs)
          super(name, size: size, type: type, **kwargs)

          @stack_pointer = stack_pointer
          @base_pointer  = base_pointer
        end

        #
        # Determines if the register is the stack pointer register
        # (`esp`, `sp`, or `spl`).
        #
        # @return [Boolean]
        #
        def stack_pointer? = @stack_pointer

        alias sp? stack_pointer?

        #
        # Determines if the register is the stack pointer register
        # (`ebp`, `bp`, or `bpl`).
        #
        # @return [Boolean]
        #
        def base_pointer? = @base_pointer

        alias bp? base_pointer?

        #
        # Determines if the operand is 64bit K opmask register.
        #
        # @return [Boolean]
        #
        def k?
          @type == :k
        end

        #
        # Determines if the operand is 64bit MMX register.
        #
        # @return [Boolean]
        #
        def mmx?
          @type == :mmx
        end

        #
        # Determines if the operand is 128bit XMM register.
        #
        # @return [Boolean]
        #
        def xmm?
          @type == :xmm
        end

        #
        # Determines if the operand is 256bit YMM register.
        #
        # @return [Boolean]
        #
        def ymm?
          @type == :ymm
        end

        #
        # Determines if the operand is 512bit ZMM register.
        #
        # @return [Boolean]
        #
        def zmm?
          @type == :zmm
        end

        #
        # Adds a displacement to the value within the register and dereferences
        # the address.
        #
        # @param [Memory, Register, Integer] value
        #   The value to add to the value of the register.
        #
        # @return [Memory]
        #   The new Memory Operand.
        #
        # @raise [TypeError]
        #   the value was not an {Memory}, {Register} or Integer.
        #
        def +(value)
          case value
          when Memory
            Memory.new(
              base: self,
              displacement: value.displacement,
              index: value.index,
              scale: value.scale
            )
          when Register
            Memory.new(base: self, index: value)
          when Integer
            Memory.new(base: self, displacement: value)
          else
            raise(TypeError,"value was not an Memory, Register or Integer")
          end
        end

        #
        # Subtracts from the value within the register and dereferences the
        # address.
        #
        # @param [Integer] displacement
        #   The value to subtract from the value of the register.
        #
        # @return [Memory]
        #   The new Memory Operand.
        #
        def -(displacement)
          Memory.new(base: self, displacement: -displacement)
        end

        #
        # Multiples the value within the register.
        #
        # @param [Integer] scale
        #   The scale to multiply the value within register by.
        #
        # @return [Memory]
        #   The new Memory Operand.
        #
        def *(scale)
          Memory.new(index: self, scale: scale)
        end

      end
    end
  end
end
