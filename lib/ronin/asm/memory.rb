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
require_relative 'register'

module Ronin
  module ASM
    #
    # Represents a Memory Operand.
    #
    # @see http://asm.sourceforge.net/articles/linasm.html#Memory
    #
    # @since 1.0.0
    #
    class Memory < Operand

      # The assembly class type.
      #
      # @return [nil, :mem8, :mem16, :mem32, :mem64]
      attr_reader :type

      # The base of the memory operand.
      #
      # @return [Register, nil]
      attr_reader :base

      # The displacement of the memory operand.
      #
      # @return [Integer]
      attr_reader :displacement

      # the index of the memory operand.
      #
      # @return [Register, nil]
      attr_reader :index

      # The scaling value of the memory operand.
      #
      # @return [Integer]
      attr_reader :scale

      # The width of the memory operand.
      #
      # @return [Integer]
      attr_reader :width

      #
      # Creates a new Memory Operand.
      #
      # @param [Register, nil] base
      #   The base of the value.
      #
      # @param [Integer] displacement
      #   The fixed displacement to add to the `base`.
      #
      # @param [Register, nil] index
      #   The variable index to multiple by `scale`, then add to `base`.
      #
      # @param [Integer] scale
      #   The scale to multiple `index` by.
      #
      # @param [Integer, nil] width
      #   The optional width of the memory operand.
      #
      # @raise [ArgumentError]
      #   `base` or `index` was not a {Register} or `nil`.
      #
      def initialize(base: nil, displacement: 0, index: nil, scale: 1, width: nil)
        unless (base.nil? || base.kind_of?(Register))
          raise(ArgumentError,"base must be a Register or nil")
        end

        unless displacement.kind_of?(Integer)
          raise(ArgumentError,"displacement must be an Integer")
        end

        unless (index.nil? || index.kind_of?(Register))
          raise(ArgumentError,"index must be a Register or nil")
        end

        unless scale.kind_of?(Integer)
          raise(ArgumentError,"scale must be an Integer")
        end

        @base         = base
        @displacement = displacement
        @index        = index
        @scale        = scale
        @width        = width || if base
                                   base.width
                                 end

        if @width
          @type = :"mem#{@width * 8}"
        end
      end

      #
      # Adds to the displacement of the Memory Operand.
      #
      # @param [Integer] displacement
      #   The displacement to add to the Memory Operand.
      #
      # @return [Memory]
      #   The new Memory Operand.
      #
      def +(displacement)
        self.class.new(
          base: @base,
          displacement: @displacement + displacement,
          index: @index,
          scale: @scale,
          width: @width
        )
      end

      #
      # Subtracts from the displacement of the Memory Operand.
      #
      # @param [Integer] displacement
      #   The displacement to subject from the Memory Operand.
      #
      # @return [Memory]
      #   The new Memory Operand.
      #
      def -(displacement)
        self.class.new(
          base: @base,
          displacement: @displacement - displacement,
          index: @index,
          scale: @scale,
          width: @width
        )
      end

    end
  end
end
