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

require_relative 'operand'
require_relative 'memory'

module Ronin
  module ASM
    #
    # Represents a Register.
    #
    class Register < Operand

      # The assembly class type.
      #
      # @return [:reg8, :reg16, :reg32, :reg64]
      attr_reader :type

      # The register name.
      #
      # @return [Symbol]
      attr_reader :name

      # The width of the register.
      #
      # @return [Integer]
      attr_reader :width

      # The register number.
      #
      # @return [Integer]
      attr_reader :number

      #
      # Initializes a register.
      #
      # @param [Symbol] name
      #   The register name.
      #
      # @param [Integer] width
      #   The width of the register.
      #
      # @param [Integer] number
      #   The register's number used in encoding.
      #
      # @param [Boolean] general
      #   Specifies whether the register is a General Purpose Register (GPR).
      #
      def initialize(name, width: , number: 0, general: false)
        @name = name

        @width   = width
        @number  = number
        @general = general

        @type = :"reg#{width * 8}"
      end

      #
      # Specifies whether the register is a general purpose register.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def general?
        @general
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

      #
      # @return [String]
      #   The register's name.
      #
      def to_s
        @name.to_s
      end

    end
  end
end
