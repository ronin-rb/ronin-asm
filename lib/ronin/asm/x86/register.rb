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
        # @param [Integer] width
        #   The width of the register.
        #
        # @param [Symbol] type
        #   The optional assembly class type of the register.
        #   Defaults to `:reg#{width * 8}` if not given.
        #
        # @param [Hash{Symbol => Object}] kwargs
        #   Additional keyword arguments for {ASM::Register#initialize}.
        #
        # @option kwargs [Integer] :number (0)
        #   The register's number used in encoding.
        #
        # @option kwargs [Boolean] :general (false)
        #   Specifies whether the register is a General Purpose Register (GPR).
        #
        def initialize(name, width: ,
                             type:  :"reg#{width * 8}",
                             sp:    false,
                             bp:    false,
                             **kwargs)
          super(name, width: width, type: type, **kwargs)

          @sp = sp
          @bp = bp
        end

        #
        # Determines if the register is the stack pointer register
        # (`esp`, `sp`, or `spl`).
        #
        # @return [Boolean]
        #
        def sp? = @sp

        #
        # Determines if the register is the stack pointer register
        # (`ebp`, `bp`, or `bpl`).
        #
        # @return [Boolean]
        #
        def bp? = @bp

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
        def mm?
          @type == :mm
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
