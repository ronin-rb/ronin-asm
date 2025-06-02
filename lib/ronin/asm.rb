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

require_relative 'asm/program'
require_relative 'asm/version'

module Ronin
  module ASM
    #
    # Creates a new Assembly program.
    #
    # @param [Hash{Symbol => Object}] kwargs
    #   Additional keyword arguments for {Program#initialize}.
    #
    # @option kwargs [String, Symbol] :arch (:x86_64)
    #   The architecture of the Program.
    #
    # @option kwargs [:linux, :freebsd, nil] :os
    #   The Operating System to target.
    #
    # @option kwargs [Hash{Symbol => Object}] :macros
    #   Macros to define in the program.
    #
    # @yield []
    #   The given block will be evaluated within the program.
    #
    # @return [Program]
    #   The new Assembly program.
    #
    # @raise [ArgumentError]
    #   An invalid `arch:` or `os:` keyword argument value was given.
    #
    # @example Create a x86-64 Assembly program:
    #   ASM.new do
    #     xor rax, rax
    #     # ...
    #   end
    #
    # @example Create a x86 Assembly program:
    #   ASM.new(arch: :x86) do
    #     xor eax, eax
    #     # ...
    #   end
    #
    # @example Pass variables into an Assembly program:
    #   ASM.new(macros: {port: 1337}) do
    #     # ...
    #     xor eax, eax
    #     mov ax, port
    #     # ...
    #   end
    #
    # @example Create an Assembly program with OS-specific syscalls:
    #   ASM.new(os: :linux) do
    #     # ...
    #     exit_syscall(42)
    #   end
    #
    def ASM.new(**kwargs,&block)
      Program.new(**kwargs,&block)
    end
  end
end
