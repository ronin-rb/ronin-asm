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

require 'set'

module Ronin
  module ASM
    module X86
      #
      # Represents a broadcast operand decorator (ex: `{1to4}`).
      #
      # @since 1.0.0
      #
      class Broadcast

        include Decorator

        # Set of valid broadcast ratios.
        RATIOS = Set[
          {1=>2},
          {1=>4},
          {1=>8},
          {1=>16},
          {1=>32}
        ]

        # The broadcast ratio.
        #
        # @return [{1=>2}, {1=>4}, {1=>8}, {1=>16}, {1=>32}]
        attr_reader :ratio

        # The size of the broadcasted memory operand.
        #
        # @return [Integer, nil]
        attr_reader :size

        # The assembly class type.
        #
        # @return [Symbol]
        attr_reader :type

        #
        # Initializes the broadcast decorator.
        #
        # @param [Memory] memory
        #   The memory operand that is being broadcasted.
        #
        # @param [{1=>2}, {1=>4}, {1=>8}, {1=>16}, {1=>32}] ratio
        #   The Hash that represents the mapping of bytes
        #
        # @raise [ArgumentError]
        #   * The given operand was not a memory operand.
        #   * The memory operand does not have a size.
        #   * An invalid broadcast ratio value was given; must be
        #     `{1=>2}`, `{1=>4}`, `{1=>8}`, `{1=>16}`, or `{1=>32}`.
        #
        def initialize(memory,ratio)
          unless memory.kind_of?(Memory)
            raise(ArgumentError,"broadcast operand must be a memory operand: #{memory.inspect}")
          end

          unless RATIOS.include?(ratio)
            raise(ArgumentError,"invalid broadcast ratio: #{ratio.inspect}")
          end

          super(memory)

          @ratio = ratio

          if (memory.size && memory.type)
            multiplier = ratio.fetch(1)

            @size = memory.size * multiplier
            @type = :"mem#{@size * 8}/#{memory.type}bcst"
          else
            @type = :bcst
          end
        end

        # The memory operand the broadcast is being applied to.
        #
        # @return [Memory]
        def memory = @operand
        alias mem memory

        #
        # @group Memory Operand Methods
        #

        # The base of the memory operand.
        #
        # @return [Register]
        def base = @operand.base

        # the index of the memory operand.
        #
        # @return [Register, nil]
        def index = @operand.index

        # The scaling value of the memory operand.
        #
        # @return [Integer]
        def scale = @operand.scale

        # The displacement of the memory operand.
        #
        # @return [Integer]
        def displacement = @operand.displacement

        #
        # Converts the memory to an integer value.
        #
        # @return [Integer]
        #
        def to_i = @operand.to_i

        #
        # Converts the broadcast operand decorator as a String.
        #
        # @return [String]
        #
        def to_s = Syntaxes::Intel.format_broadcast(self)

      end
    end
  end
end

require_relative 'syntaxes/intel'
