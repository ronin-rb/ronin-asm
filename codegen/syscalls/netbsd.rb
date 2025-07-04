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

require_relative 'netbsd/x86'
require_relative 'netbsd/x86_file'
require_relative 'netbsd/x86_spec_file'

require_relative 'netbsd/x86_64'
require_relative 'netbsd/x86_64_file'
require_relative 'netbsd/x86_64_spec_file'

if $0 == __FILE__
  require 'fileutils'
  extend FileUtils

  mkdir_p File.join(CodeGen::ROOT,'lib','ronin','asm','syscalls','netbsd')
  mkdir_p File.join(CodeGen::ROOT,'spec','syscalls','netbsd')

  x86_syscalls = CodeGen::Syscalls::NetBSD::X86.load
  CodeGen::Syscalls::NetBSD::X86File.generate(x86_syscalls)
  CodeGen::Syscalls::NetBSD::X86SpecFile.generate(x86_syscalls)

  x86_64_syscalls = CodeGen::Syscalls::NetBSD::X86_64.load
  CodeGen::Syscalls::NetBSD::X86_64File.generate(x86_64_syscalls)
  CodeGen::Syscalls::NetBSD::X86_64SpecFile.generate(x86_64_syscalls)
end
