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
require_relative 'exceptions'

module Ronin
  module ASM
    #
    # Represents a Register.
    #
    class Register

      include Operand

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

      # The assembly class type.
      #
      # @return [Symbol]
      attr_reader :type

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
      # @param [Symbol] type
      #   The type of the register.
      #
      def initialize(name, width: , number: 0, general: false, type: )
        @name = name

        @width   = width
        @number  = number
        @general = general
        @type    = type
      end

      #
      # Specifies that the operand is a register operand.
      #
      # @return [true]
      #
      # @since 1.0.0
      #
      def reg? = true

      #
      # Specifies that the operand is a 8bit register operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def reg8?
        @width == 1
      end

      #
      # Specifies that the operand is a 16bit register operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def reg16?
        @width == 2
      end

      #
      # Specifies that the operand is a 32bit register operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def reg32?
        @width == 4
      end

      #
      # Specifies that the operand is a 64bit register operand.
      #
      # @return [Boolean]
      #
      # @since 1.0.0
      #
      def reg64?
        @width == 8
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
      # Place holder method that attempts to change the width of the register.
      #
      # @raise [SemanticError]
      #   Changing the width of a register is currently not supported.
      #
      def change_width(new_width)
        raise(SemanticError,"cannot change the width of a register: #{self}")
      end

      #
      # @return [String]
      #   The register's name.
      #
      def to_s
        @name.to_s
      end

      alias to_i number

    end
  end
end
