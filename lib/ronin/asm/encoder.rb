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

module Ronin
  module ASM
    #
    # Base class for all other assembly encoders for other architectures.
    #
    # @abstract
    #
    # @api private
    #
    # @since 1.0.0
    #
    class Encoder

      # The output stream to write encoded instructions to.
      #
      # @return [File, StringIO]
      attr_reader :output

      #
      # Initializes the encoder.
      #
      # @param [File, StringIO] output
      #   The output stream to write the encoded bytes to.
      #
      def initialize(output)
        @output = output
      end

      #
      # Encodes and writes the instruction to the output stream.
      #
      # @param [Instruction] instruction
      #   The instruction to write.
      #
      # @return [Integer]
      #   The number of bytes written.
      #
      def write_instruction(instruction)
        instruction.encode(self)
      end

      #
      # Writes a number to the output stream in Little Endian mode.
      #
      # @param [Integer] int
      #   The number to write.
      #
      # @return [Integer]
      #   The number of bytes written.
      #
      # @raise [ArgumentError]
      #   An invalid size argument was given.
      #
      def write_int(int,size)
        case size
        when 8 then write_bytes([int].pack('Q<'))
        when 4 then write_bytes([int].pack('L<'))
        when 2 then write_bytes([int].pack('S<'))
        when 1 then write_byte(int)
        when 0 then 0
        else
          raise(ArgumentError,"invalid integer size given (#{size.inspect}), must be 0, 1, 2, 4, or 8")
        end
      end

      #
      # Writes a string of bytes to the output stream.
      #
      # @param [String] string
      #
      # @return [Integer]
      #   The number of bytes written.
      #
      def write_bytes(string)
        @output.write(string)
      end

      #
      # Writes a byte to the output stream.
      #
      # @param [Integer] byte
      #   The byte to write.
      #
      # @return [1]
      #   The number of bytes written.
      #
      def write_byte(byte)
        @output.putc(byte)
        return 1
      end

    end
  end
end
