#
# ronin-asm - A Ruby DSL for crafting Assembly programs and Shellcode.
#
# Copyright (c) 2007-2022 Hal Brodigan (postmodern.mod3 at gmail.com)
#
# This file is part of ronin-asm.
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
    # Handles configuration for ronin-asm.
    #
    module Config
      # Data directory for ronin-asm
      DATA_DIR = File.expand_path(File.join(__dir__,'..','..','..','data'))
    end
  end
end
