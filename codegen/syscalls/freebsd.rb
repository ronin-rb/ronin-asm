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

require_relative 'freebsd/table'
require_relative 'freebsd/syscalls_file'
require_relative 'freebsd/syscalls_spec_file'

if $0 == __FILE__
  syscalls = CodeGen::Syscalls::FreeBSD::Table.parse

  CodeGen::Syscalls::FreeBSD::SyscallsFile.generate(syscalls)
  CodeGen::Syscalls::FreeBSD::SyscallsSpecFile.generate(syscalls)
end
