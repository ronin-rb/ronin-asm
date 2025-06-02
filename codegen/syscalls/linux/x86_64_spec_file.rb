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

require_relative '../syscalls_spec_file'

module CodeGen
  module Syscalls
    module Linux
      #
      # Represents the syscalls spec file at
      # `spec/syscalls/linux/x86_64_spec.rb`.
      #
      class X86_64SpecFile < CodeGen::Syscalls::SyscallsSpecFile

        template File.join(__dir__,'templates','x86_64_spec.rb.erb')
        output_file 'spec/syscalls/linux/x86_64_spec.rb'

      end
    end
  end
end
