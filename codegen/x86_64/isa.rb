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

require_relative '../x86/isa'

module CodeGen
  module X86_64
    #
    # Handles parsing the Instruction Set Architecture XML file.
    #
    # @see vendor/isa/x86_64.xml
    #
    module ISA
      include X86::ISA

      # Path to the x86-64 Instruction Set Architecture (ISA) XML file.
      XML_PATH = File.join(__dir__,'..','..','vendor','isa','x86_64.xml')

      #
      # Loads the x86-64 Instruction Set Architecture (ISA) metadata.
      #
      # @return [Array<Instruction>]
      #
      def self.load
        doc = Nokogiri::XML(File.open(XML_PATH))

        doc.xpath('/InstructionSet/Instruction').map do |node|
          Instruction.from_xml(node)
        end
      end

      XMLHelpers = X86::ISA::XMLHelpers

      #
      # Represents a x86 assembly instruction.
      #
      class Instruction < X86::ISA::Instruction

        #
        # Parses the instruction metadata from the `<Instruction>` XML element.
        #
        # @param [Nokogiri::XML::Element] node
        #   The `<Instruction>` XML element.
        #
        # @return [Instruction]
        #   The parsed instruction object.
        #
        def self.from_xml(node)
          new(
            name:    node['name'].downcase.to_sym,
            summary: node['summary'],
            forms:   node.xpath('InstructionForm').map { |instruction_form_node|
                       InstructionForm.from_xml(instruction_form_node)
                     }
          )
        end

      end

      #
      # Represents a specific "form" of an instruction.
      #
      class InstructionForm < X86::ISA::InstructionForm

        #
        # Parses the instruction form from the `<InstructionForm>` XML element.
        #
        # @param [Nokogiri::XML::Element] node
        #   The `<InstructionForm>` XML element.
        #
        # @return [InstructionForm]
        #   The parsed instruction form object.
        #
        def self.from_xml(node)
          new(
            gas_name: node['gas-name'].to_sym,

            isa_extensions: node.xpath('ISA/@id').map(&:value),

            mmx_mode: if (mmx_mode = node['mmx-mode'])
                        mmx_mode.downcase.to_sym
                      end,
            xmm_mode: if (xmm_mode = node['xmm-mode'])
                        xmm_mode.downcase.to_sym
                      end,

            cancelling_inputs: parse_boolean(node['cancelling-inputs']),

            operands: node.xpath('Operand').map { |operand_node|
                        Operand.from_xml(operand_node)
                      },

            encodings: node.xpath('Encoding').map { |encoding_node|
                         Encoding.from_xml(encoding_node)
                       }
          )
        end

        def mmx_mode? = !mmx_mode.nil?
        def xmm_mode? = !xmm_mode.nil?
        def cancelling_inputs? = cancelling_inputs

      end

      #
      # Represents the `<Encoding>` XML element.
      #
      module Encoding
        include X86::ISA::Encoding

        #
        # Parses an `<Encoding>` eleemnt.
        #
        # @param [Nokogiri::XML::Element] node
        #   The `<Encoding>` element.
        #
        # @return [Array<CodeOffset, DataOffset, Immediate, ModRM, Opcode,
        #                Prefix, RegisterByte, REX, VEX, EVEX>]
        #   The parsed `<Encoding>` child elements.
        #
        def self.from_xml(node)
          node.xpath('*').map do |child|
            case child.name
            when 'CodeOffset'   then CodeOffset.from_xml(child)
            when 'DataOffset'   then DataOffset.from_xml(child)
            when 'Immediate'    then Immediate.from_xml(child)
            when 'ModRM'        then ModRM.from_xml(child)
            when 'Opcode'       then Opcode.from_xml(child)
            when 'Prefix'       then Prefix.from_xml(child)
            when 'RegisterByte' then RegisterByte.from_xml(child)
            when 'REX'          then REX.from_xml(child)
            when 'VEX'          then VEX.from_xml(child)
            when 'EVEX'         then EVEX.from_xml(child)
            else
              raise(NotImplementedError,"cannot parse <Encoding> child element: #{child.to_xml}")
            end
          end
        end

        #
        # Represents the `<ModRM>` XML element within `<Encoding>`.
        #
        class ModRM < X86::ISA::Encoding::ModRM

          #
          # Parses the ModRM object from the `<ModRM>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<ModRM>` XML element.
          #
          # @return [ModRM]
          #   The parsed ModRM object.
          #
          def self.from_xml(node)
            new(
              mode: parse_binary_or_operand_index(node['mode']),
              reg:  parse_int_or_operand_index(node['reg']),
              rm:   parse_int_or_operand_index(node['rm'])
            )
          end

        end

        #
        # Represents the `<VEX>` XML element within `<Encoding>`.
        #
        class VEX < X86::ISA::Encoding::VEX

          #
          # Initializes the VEX object from the `<VEX>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<VEX>` XML element.
          #
          # @return [VEX]
          #   The parsed VEX object.
          #
          def self.from_xml(node)
            new(
              type: node['type'].downcase.to_sym,

              w:    if (w = node['W'])
                      parse_int(w)
                    end,
              l:    if (l = node['L'])
                      parse_int(l)
                    end,

              m_mmmm: parse_binary(node['m-mmmm']),
              pp:     parse_binary(node['pp']),

              r:  if (r = node['R'])
                    parse_int_or_operand_index(r)
                  end,
              x:  if (x = node['X'])
                    parse_operand_index(x)
                  end,
              b:  if (b = node['B'])
                    parse_int_or_operand_index(b)
                  end,

              vvvv: if (vvvv = node['vvvv'])
                      parse_int_or_operand_index(vvvv)
                    end
            )
          end

        end

        #
        # Represents the `<EVEX>` XML element within `<Encoding>`.
        #
        class EVEX < X86::ISA::Encoding::EVEX

          #
          # Initializes the EVEX object from the `<EVEX>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<EVEX>` XML element.
          #
          # @return [EVEX]
          #   The parsed EVEX object.
          #
          def self.from_xml(node)
            new(
              mmm: parse_binary(node['mmm']),
              pp:  parse_binary(node['pp']),

              w: if (w = node['W'])
                   parse_int(w)
                 end,
              ll: if (ll = node['LL'])
                    parse_binary_or_operand_index(ll)
                  end,
              vvvv: if (vvvv = node['vvvv'])
                      parse_binary_or_operand_index(vvvv)
                    end,
              v: if (v = node['V'])
                   parse_int_or_operand_index(v)
                 end,
              rr: if (rr = node['RR'])
                    parse_operand_index(rr)
                  end,
              B: if (b = node['B'])
                   parse_operand_index(b)
                 end,
              x: if (x = node['X'])
                   parse_operand_index(x)
                 end,
              b: parse_int_or_operand_index(node['b']),
              aaa: if (aaa = node['aaa'])
                     parse_binary_or_operand_index(aaa)
                   end,
              z: if (z = node['z'])
                   parse_int_or_operand_index(z)
                 end,
              disp8xN: if (disp8xN = node['disp8xN'])
                         parse_int(disp8xN)
                       end
            )
          end

        end

        #
        # Represents the `<REX>` XML element within `<Encoding>`.
        #
        REX = Data.define(:mandatory, :w, :r, :x, :b) do

          extend XMLHelpers

          #
          # Initializes the REX object from the `<REX>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<REX>` XML element.
          #
          # @return [REX]
          #   The parsed REX object.
          #
          def self.from_xml(node)
            new(
              mandatory: parse_boolean(node['mandatory']),

              w: parse_int(node['W']),
              r: if (r = node['R'])
                   parse_operand_index(r)
                 end,
              x: if (x = node['X'])
                   parse_operand_index(x)
                 end,
              b: if (b = node['B'])
                   parse_operand_index(b)
                 end
            )
          end

          def mandatory? = mandatory

        end
      end

      #
      # Represents the type of operand that an instruction can accept.
      #
      class Operand < X86::ISA::Operand

        # Relative offset types
        REL_TYPES = X86::ISA::REL_TYPES + Set[:rel32m]
        def relative? = REL_TYPES.include?(type)

        IMM_TYPES = X86::ISA::IMM_TYPES + Set[:imm64]
        def immediate? = IMM_TYPES.include?(type)

        MEM_TYPES = X86::ISA::MEM_TYPES + Set[:sibmem, :rel32m]
        def memory? = MEM_TYPES.include?(type)

        def tmm? = type == :tmm
        def sibmem? = type == :sibmem

        # Set of specific register types.
        SPECIFIC_REGISTERS = X86::ISA::SPECIFIC_REGISTERS + Set[:rax]
        def specific_register? = SPECIFIC_REGISTERS.include?(type)

        # Register types
        REG_TYPES = X86::ISA::REG_TYPES + Set[:r64, :r8l, :r16l, :r32l, :tmm]
        def register? = REG_TYPES.include?(type)

        # Mapping of types and their sub-types
        SUB_TYPES = X86::ISA::SUB_TYPES.merge(
          :sibmem => :m,
          :rel32m => :m8
        )
        def sub_type = SUB_TYPES[type]

        # Mapping of ISA operand types to renamed ronin-asm operand types.
        TYPE_RENAMES = X86::ISA::TYPE_RENAMES.merge(
          # NOTE: rel32m is only used in the `prefetchit0` and `prefetchit1`
          # instructions, but other x86-64 instruction set documentation sources
          # use `m8`/`mem8`, since the instructions take a pointer to a
          # byte array. Thus `rel32m` can be simplified to `mem8`.
          :rel32m => :mem8
        )

        #
        # Translates a x86-64 ISA operand type to a ronin-asm operand type.
        #
        # @return [Symbol]
        #
        # @note
        #   The reason why we translate certain operand types is for readability
        #   and to disambiguate certain types, such as `r8` which could refer to
        #   an 8bit register or the x86-64 register `r8`.
        #
        def ronin_type = TYPE_RENAMES.fetch(type,type)

      end

    end
  end
end
