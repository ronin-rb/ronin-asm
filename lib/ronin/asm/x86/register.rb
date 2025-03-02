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

        #
        # Initializes the x86 register.
        #
        # @param [Symbol] name
        #   The register name.
        #
        # @param [Hash{Symbol => Object}] kwargs
        #   Additional keyword arguments for {ASM::Register#initialize}.
        #
        # @option kwargs [Integer] :width
        #   The width of the register.
        #
        # @option kwargs [Integer] :number (0)
        #   The register's number used in encoding.
        #
        # @option kwargs [Boolean] :general (false)
        #   Specifies whether the register is a General Purpose Register (GPR).
        #
        def initialize(name, sp: false, bp: false, **kwargs)
          super(name,**kwargs)

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

      end
    end
  end
end
