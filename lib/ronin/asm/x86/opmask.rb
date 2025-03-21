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

require_relative 'decorator'

module Ronin
  module ASM
    module X86
      #
      # Represents a operand mask (opmask) or write mask decorator
      # (ex: `{k1}` or `{k1}{z}`).
      #
      # @since 1.0.0
      #
      class Opmask

        include Decorator

        # The opmask register (`k1` - `k7`).
        #
        # @return [Register]
        attr_reader :k

        # The assembly class type.
        #
        # @return [Symbol]
        attr_reader :type

        #
        # Initializes the opmask decorator.
        #
        # @param [Register] operand
        #   The register to mask.
        #
        # @param [Register] k
        #   The opmask K register (`k1` - `k7`).
        #
        # @param [Boolean] zero
        #   Enables zero masking. Otherwise merge masking is enabled by default.
        #
        # @raise [ArgumentError]
        #   * A non-register was given as the `register` argument.
        #   * A non-opmask register was given as the `k` argument.
        #
        def initialize(operand,k, zero: false)
          unless (operand.kind_of?(Register) || operand.kind_of?(Memory))
            raise(ArgumentError,"can only apply opmasks to registers or memory operands: #{operand.inspect}")
          end

          unless (k.kind_of?(Register) && k.type == :k)
            raise(ArgumentError,"cannot use non-opmask register: #{k.inspect}")
          end

          super(operand)

          @k    = k
          @zero = zero
          @type = if zero then :"#{@operand.type}{k}{z}"
                  else         :"#{@operand.type}{k}"
                  end
        end

        #
        # Determines if the opmask is set to zero mode.
        #
        # @return [Boolean]
        #
        def zero? = @zero

        alias z? zero?

        #
        # Determines if the opmask is set to merge mode.
        #
        # @return [Boolean]
        #
        def merge? = !@zero

        #
        # @group Operand Methods
        #

        # The size of the register or memory operand.
        #
        # @return [Integer]
        def size = @operand.size

        #
        # Converts the register or memory operand to an integer value.
        #
        # @return [Integer]
        #
        def to_i = @operand.to_i

        #
        # Converts the opmask operand decorator into a String.
        #
        # @return [String]
        #
        def to_s = Syntax::Intel.format_opmask(self)

      end
    end
  end
end

require_relative 'syntax/intel'
