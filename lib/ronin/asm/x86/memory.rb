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

require_relative '../memory'
require_relative 'operand'

module Ronin
  module ASM
    module X86
      #
      # Represents an x86 memory operand.
      #
      # @since 1.0.0
      #
      class Memory < ASM::Memory

        include Operand

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

        #
        # Creates a new Memory Operand.
        #
        # @param [Register] base
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
        #   `base` was not a {Register} or `nil`.
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

          super(base, width: width)

          @displacement = displacement
          @index = index
          @scale = scale
        end

        #
        # Coerces an Array of arguments into a Memory object.
        #
        # @param [Array] arguments
        #   The Array arguments to convert.
        #
        # @return [Memory]
        #   The converted memory object.
        #
        # @raise [ArgumentError]
        #   Insufficient number of arguments given or wrong type of arguments.
        #
        def self.[](*arguments)
          if arguments.length == 1
            case arguments[0]
            when self
              # pass through the memory object
              arguments[0]
            when Register, Integer
              # wrap the register or memory address object in a memory object
              new(base: arguments[0])
            else
              raise(ArgumentError,"cannot convert object type to memory: #{arguments.inspect}")
            end
          else
            raise(ArgumentError,"memory operands must have one argument: #{arguments.inspect}")
          end
        end

        #
        # Changes the width of the memory.
        #
        # @return [Memory]
        #   A new memory operand object with the new width.
        #
        def change_width(new_width)
          self.class.new(
            base:  @base,
            displacement: @displacement,
            index: @index,
            scale: @scale,
            width: new_width
          )
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
end
