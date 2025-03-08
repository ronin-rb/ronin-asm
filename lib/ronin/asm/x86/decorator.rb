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

module Ronin
  module ASM
    module X86
      #
      # Module for all operand decorators (ex: `{k}`, `{1to4}`, etc).
      #
      # @abstract
      #
      # @see 1.0.0
      #
      module Decorator

        include Operand

        # The operand that is being decorated.
        #
        # @return [Operand]
        attr_reader :operand

        #
        # Initializes the operand decorator.
        #
        # @param [Operand] operand
        #   The operand being decorated.
        #
        # @api private
        #
        def initialize(operand)
          @operand = operand
        end

        #
        # @group Operand Methods
        #

        #
        # Determines if the {#operand} is an immediate operand.
        #
        # @return [Boolean]
        #
        def imm? = @operand.imm?

        #
        # Determines if the {#operand} is a 8bit immediate operand.
        #
        # @return [Boolean]
        #
        def imm8? = @operand.imm8?

        #
        # Determines if the {#operand} is a 16bit immediate operand.
        #
        # @return [Boolean]
        #
        def imm16? = @operand.imm16?

        #
        # Determines if the {#operand} is a 32bit immediate operand.
        #
        # @return [Boolean]
        #
        def imm32? = @operand.imm32?

        #
        # Determines if the {#operand} is a 64bit immediate operand.
        #
        # @return [Boolean]
        #
        def imm64? = @operand.imm64?

        #
        # Determines if the {#operand} is a register operand.
        #
        # @return [Boolean]
        #
        def reg? = @operand.reg?

        #
        # Determines if the {#operand} is a 8bit register operand.
        #
        # @return [Boolean]
        #
        def reg8? = @operand.reg8?

        #
        # Determines if the {#operand} is a 16bit register operand.
        #
        # @return [Boolean]
        #
        def reg16? = @operand.reg16?

        #
        # Determines if the {#operand} is a 32bit register operand.
        #
        # @return [Boolean]
        #
        def reg32? = @operand.reg32?

        #
        # Determines if the {#operand} is a 64bit register operand.
        #
        # @return [Boolean]
        #
        def reg64? = @operand.reg64?

        #
        # Determines if the {#operand} is 64bit K opmask register.
        #
        # @return [Boolean]
        #
        def k? = @operand.k?

        #
        # Determines if the {#operand} is a 64bit MMX register.
        #
        # @return [Boolean]
        #
        def mm? = @operand.mm?

        #
        # Determines if the {#operand} is a 128bit XMM register.
        #
        # @return [Boolean]
        #
        def xmm? = @operand.xmm?

        #
        # Determines if the {#operand} is a 256bit YMM register.
        #
        # @return [Boolean]
        #
        def ymm? = @operand.ymm?

        #
        # Determines if the {#operand} is a 256bit YMM register.
        #
        # @return [Boolean]
        #
        def zmm? = @operand.zmm?

        #
        # Determines if the {#operand} is a memory operand.
        #
        # @return [Boolean]
        #
        def mem? = @operand.mem?

        #
        # Determines if the {#operand} is a 8bit memory operand.
        #
        # @return [Boolean]
        #
        def mem8? = @operand.mem8?

        #
        # Determines if the {#operand} is a 16bit memory operand.
        #
        # @return [Boolean]
        #
        def mem16? = @operand.mem16?

        #
        # Determines if the {#operand} is a 32bit memory operand.
        #
        # @return [Boolean]
        #
        def mem32? = @operand.mem32?

        #
        # Determines if the {#operand} is a 64bit memory operand.
        #
        # @return [Boolean]
        #
        def mem64? = @operand.mem64?

      end
    end
  end
end
