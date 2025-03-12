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

require_relative '../x86/assembler'
require_relative 'encoder'
require_relative 'relative_offset'

module Ronin
  module ASM
    module X86_64
      #
      # Contains the x86-64 assembler logic.
      #
      # @api private
      #
      # @since 1.0.0
      #
      class Assembler < X86::Assembler

        #
        # Creates a new relative offset operand.
        #
        # @param [Integer] value
        #   The value for the relative offst.
        #
        # @return [RelativeOffset]
        #   The new relative offset operand object.
        #
        def relative_offset(value) = RelativeOffset.new(value)

        #
        # Creates a new encoder.
        #
        # @param [IO, StringIO, NullOutput] output
        #   The output that the encoder will write to. Defaults to {NullOutput}
        #   which does not write any bytes to the output but simply returns the
        #   number of bytes written.
        #
        # @return [Encoder]
        #   The new encoder object.
        #
        def encoder(output) = Encoder.new(output)

      end
    end
  end
end
