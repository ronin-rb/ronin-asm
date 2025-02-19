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

require 'erb'

module CodeGen
  class TemplateFile

    #
    # Gets or sets the template to use.
    #
    # @param [String, nil] new_template
    # @return [ERB]
    # @raise [NotImplementedError]
    #
    def self.template(new_template=nil)
      if new_template
        @template = ERB.new(File.read(new_template), trim_mode: '-')
      else
        @template || raise(NotImplementedError,"template was not set in #{self}")
      end
    end

    #
    # Initializes the template file.
    #
    # @param [String] path
    #
    def initialize(path)
      @path = path
    end

    #
    # Generates the file.
    #
    # @param [Array] arguments
    #
    # @see #generate
    #
    def self.generate(*arguments)
      new(*arguments).generate
    end

    #
    # Renders the {#template} and generates the file at {#path}.
    #
    def generate
      File.write(@path,self.class.template.result(binding))
    end

  end
end
