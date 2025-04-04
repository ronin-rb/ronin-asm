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

require 'nokogiri'
require 'set'

module CodeGen
  module X86
    #
    # Handles parsing the x86 Instruction Set Architecture XML file.
    #
    # @see vendor/isa/x86.xml
    #
    module ISA
      # Path to the x86 Instruction Set Architecture (ISA) XML file.
      XML_PATH = File.join(__dir__,'..','..','vendor','isa','x86.xml')

      #
      # Loads the x86 Instruction Set Architecture (ISA) metadata.
      #
      # @return [Array<Instruction>]
      #
      def self.load
        doc = Nokogiri::XML(File.open(XML_PATH))

        doc.xpath('/InstructionSet/Instruction').map do |node|
          Instruction.from_xml(node)
        end
      end

      #
      # Miscallaneous XML parser helper methods.
      #
      module XMLHelpers
        #
        # Parses a boolean value.
        #
        # @param ["true", "false", nil] string
        # @return [true, false, nil]
        #
        def parse_boolean(string)
          case string
          when 'true'  then true
          when 'false' then false
          when nil     then nil
          else
            raise(ArgumentError,"cannot parse boolean value: #{string.inspect}")
          end
        end

        #
        # Parses an integer string.
        #
        # @param [String] string
        # @return [Integer]
        #
        def parse_int(string) = string.to_i

        #
        # Parses a hex string.
        #
        # @param [String] string
        # @return [Integer]
        #
        def parse_hex(string) = string.to_i(16)

        #
        # Parses a binary string.
        #
        # @param [String] string
        # @return [Integer]
        #
        def parse_binary(string) = string.to_i(2)

        #
        # Parses an operand index (ex: `#0`).
        #
        # @param [String] string
        # @return [OperandIndex]
        #
        def parse_operand_index(string) = OperandIndex[string[1..].to_i]

        #
        # Parses a binary value or an operand index (ex: `#0`).
        #
        # @param [String] string
        # @return [OperandIndex, Integer]
        #
        def parse_binary_or_operand_index(string)
          case string
          when /\A#\d+\z/  then parse_operand_index(string)
          when /\A[01]+\z/ then string.to_i(2)
          else
            raise(ArgumentError,"cannot parse value: #{string.inspect}")
          end
        end

        #
        # Parses an integer value or an operand index (ex: `#0`).
        #
        # @param [String] string
        # @return [OperandIndex, Integer]
        #
        def parse_int_or_operand_index(string)
          case string
          when /\A#\d+\z/ then parse_operand_index(string)
          when /\A\d+\z/  then string.to_i
          else
            raise(ArgumentError,"cannot parse value: #{string.inspect}")
          end
        end
      end

      #
      # Represents a x86 assembly instruction.
      #
      class Instruction < Data.define(:name, :summary, :forms)

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

        #
        # Determines the minimum number of operands the instruction requires.
        #
        # @return [Integer]
        #
        def min_operands = forms.map(&:operand_count).min

        #
        # Determines the maximum number of operands the instruction requires.
        #
        # @return [Integer]
        #
        def max_operands = forms.map(&:operand_count).max

        #
        # Determines the minimum and maximum number of operands the instruction
        # requires.
        #
        # @return [(Integer, Integer)]
        #
        def min_max_operands = forms.map(&:operand_count).minmax

        #
        # Determines whether the instruction accepts no operands.
        #
        # @return [Boolean]
        #
        def no_operands? = forms.all?(&:no_operands?)

      end

      #
      # Represents a specific "form" of an instruction.
      #
      class InstructionForm < Data.define(:gas_name, :isa_extensions, :mmx_mode, :xmm_mode, :cancelling_inputs, :operands, :encodings)

        extend XMLHelpers

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

        #
        # The number of operands the instruction form requires.
        #
        # @return [Integer]
        #
        def operand_count = operands.length

        #
        # Determines if the instruction form does not accept any operands.
        #
        # @return [Boolean]
        #
        def no_operands? = operands.empty?

        #
        # Selects the preferred encoding based on the operand types.
        #
        # @return [Array<CodeOffset, DataOffset, Immediate, ModRM, Opcode, Prefix, RegisterByte, VEX, EVEX>]
        #
        def preferred_encoding
          # NOTE: for some reason other assemblers prefer the first encoding if
          # all operands are registers, otherwise the last encoding is
          # preferred.
          if !operands.empty? && operands.all?(&:register?)
            encodings.first
          else
            encodings.last
          end
        end

      end

      #
      # Represents an operand index (ex: `#2`).
      #
      class OperandIndex < Data.define(:index)

        @operand_indexes = Hash.new do |hash,index|
          hash[index] = OperandIndex.new(index)
        end

        #
        # Returns the operand index object for the given index.
        #
        # @param [Integer] index
        #
        # @return [OperandIndex]
        #
        def self.[](index)
          @operand_indexes[index]
        end

        def to_i   = index
        def to_int = index
        def to_s   = "##{index}"

      end

      #
      # Represents the type of operand that an instruction can accept.
      #
      class Operand < Data.define(:type, :input, :output, :extended_size)

        extend XMLHelpers

        #
        # Parses the operand object from the `<Operand>` XML element.
        #
        # @param [Nokogiri::XML::Element] node
        #   The `<Operand>` XML element.
        #
        # @return [Operand]
        #   The parsed operand object.
        #
        def self.from_xml(node)
          new(
            type:   node['type'].to_sym,

            input:  parse_boolean(node['input']),
            output: parse_boolean(node['output']),

            extended_size: if (extended_size = node['extended-size'])
                             parse_int(extended_size)
                           end
          )
        end

        # Relative offset types
        REL_TYPES = Set[:rel8, :rel32]
        def relative_offset? = REL_TYPES.include?(type)

        # Specific immediate value types
        SPECIFIC_IMM_TYPES = Set[:"1", :"3"]
        def specific_immediate? = SPECIFIC_IMM_TYPES.include?(type)

        # Immediate types
        IMM_TYPES = Set[:imm4, :imm8, :imm16, :imm32] + SPECIFIC_IMM_TYPES
        def immediate? = IMM_TYPES.include?(type)

        # K mask register?
        def k_register? = type == :k

        # MMX registers
        MMX_REG_TYPES = Set[:mm]
        def mmx_register? = MMX_REG_TYPES.include?(type)

        # SSE registers
        XMM_REG_TYPES = Set[:xmm, :xmm0]
        def xmm_register? = XMM_REG_TYPES.include?(type)

        # AVX registers
        YMM_REG_TYPES = Set[:ymm, :ymm0]
        def ymm_register? = XMM_REG_TYPES.include?(type)

        # AVX512 registers
        ZMM_REG_TYPES = Set[:zmm, :zmm0]
        def zmm_register? = XMM_REG_TYPES.include?(type)

        # Set of specific register types.
        SPECIFIC_REGISTERS = Set[:al, :ax, :cl, :eax, :xmm0, :ymm0, :zmm0]
        def specific_register? = SPECIFIC_REGISTERS.include?(type)

        # Register types
        REG_TYPES = Set[:r8, :r16, :r32, :k, :mm, :xmm, :ymm, :zmm] + SPECIFIC_REGISTERS
        def register? = REG_TYPES.include?(type)

        # Memory offset types
        MOFFSET_TYPES = Set[:moffs32, :moffs64]
        def memory_offset? = MOFFSET_TYPES.include?(type)

        # Vector memory types
        VECTOR_MEMORY_TYPES = Set[
          :vm32x,
          :vm64x,
          :vm32y,
          :vm64y,
          :vm32z,
          :vm64z
        ]
        def vector_memory? = VECTOR_MEMORY_TYPES.include?(type)

        # Memory types
        MEM_TYPES = Set[
          :m,
          :m8,
          :m16,
          :m32,
          :m64,
          :m128,
          :m256,
          :m512
        ] + VECTOR_MEMORY_TYPES
        def memory? = MEM_TYPES.include?(type)
        def any_memory_type? = type == :m

        # Register with opmask types
        REG_OPMASK_TYPES = Set[
          :"k{k}",
          :"xmm{k}", :"xmm{k}{z}",
          :"ymm{k}", :"ymm{k}{z}",
          :"zmm{k}", :"zmm{k}{z}",
        ]
        def register_with_opmask? = REG_OPMASK_TYPES.include?(type)

        OPMASK_TYPES = Set[
          :"k{k}",
          :"xmm{k}", :"xmm{k}{z}",
          :"ymm{k}", :"ymm{k}{z}",
          :"zmm{k}", :"zmm{k}{z}",
          :"m16{k}", :"m32{k}", :"m64{k}", :"m128{k}", :"m256{k}", :"m512{k}",
          :"vm32x{k}",
          :"vm64x{k}",
          :"vm32y{k}",
          :"vm64y{k}",
          :"vm32z{k}",
          :"vm64z{k}"
        ]
        def opmask? = OPMASK_TYPES.include?(type)

        # Source broadcast types
        BCST_TYPES = Set[
          :"m32/m16bcst",
          :"m64/m16bcst", :"m64/m32bcst",
          :"m128/m16bcst", :"m128/m32bcst", :"m128/m64bcst",
          :"m256/m16bcst", :"m256/m32bcst", :"m256/m64bcst",
          :"m512/m16bcst", :"m512/m32bcst", :"m512/m64bcst"
        ]
        def bcst? = BCST_TYPES.include?(type)

        # Special operand types
        SPECIAL_OPERAND_TYPES = Set[:"{er}", :"{sae}"]
        def special_operand? = SPECIAL_OPERAND_TYPES.include?(type)

        def input?  = input
        def output? = output

        # Mapping of types and their sub-types
        SUB_TYPES = {
          :"k{k}" => :k,

          :"xmm{k}"    => :xmm,
          :"xmm{k}{z}" => :xmm,
          :"ymm{k}"    => :ymm,
          :"ymm{k}{z}" => :ymm,
          :"zmm{k}"    => :zmm,
          :"zmm{k}{z}" => :zmm,

          :"m16{k}"  => :m16,
          :"m32{k}"  => :m32,
          :"m64{k}"  => :m64,
          :"m128{k}" => :m128,
          :"m256{k}" => :m256,
          :"m512{k}" => :m512,

          :"m32/m16bcst"  => :m16,
          :"m64/m16bcst"  => :m16,
          :"m128/m16bcst" => :m16,
          :"m256/m16bcst" => :m16,
          :"m512/m16bcst" => :m16,
          :"m64/m32bcst"  => :m32,
          :"m128/m32bcst" => :m32,
          :"m256/m32bcst" => :m32,
          :"m512/m32bcst" => :m32,
          :"m128/m64bcst" => :m64,
          :"m256/m64bcst" => :m64,
          :"m512/m64bcst" => :m64,

          :vm32x => :m32,
          :vm64x => :m64,
          :vm32y => :m32,
          :vm64y => :m64,
          :vm32z => :m32,
          :vm64z => :m64
        }
        def sub_type = SUB_TYPES[type]

        # Mapping of ISA operand types to renamed ronin-asm operand types.
        TYPE_RENAMES = {
          # NOTE: rename the imm4 operand type to imm8.
          :imm4 => :imm8,

          :r8  => :reg8,
          :r16 => :reg16,
          :r32 => :reg32,
          :r64 => :reg64,

          :mm => :mmx,

          :m    => :mem,
          :m8   => :mem8,
          :m16  => :mem16,
          :m32  => :mem32,
          :m64  => :mem64,
          :m128 => :mem128,
          :m256 => :mem256,
          :m512 => :mem512,

          :"m16{k}"  => :"mem16{k}",
          :"m32{k}"  => :"mem32{k}",
          :"m64{k}"  => :"mem64{k}",
          :"m128{k}" => :"mem128{k}",
          :"m256{k}" => :"mem256{k}",
          :"m512{k}" => :"mem512{k}",

          :"m32/m16bcst"  => :"mem32/mem16bcst",
          :"m64/m16bcst"  => :"mem64/mem16bcst",
          :"m64/m32bcst"  => :"mem64/mem32bcst",
          :"m128/m16bcst" => :"mem128/mem16bcst",
          :"m128/m32bcst" => :"mem128/mem32bcst",
          :"m128/m64bcst" => :"mem128/mem64bcst",
          :"m256/m16bcst" => :"mem256/mem16bcst",
          :"m256/m32bcst" => :"mem256/mem32bcst",
          :"m256/m64bcst" => :"mem256/mem64bcst",
          :"m512/m16bcst" => :"mem512/mem16bcst",
          :"m512/m32bcst" => :"mem512/mem32bcst",
          :"m512/m64bcst" => :"mem512/mem64bcst",

          :moffs32 => :moffset32,
          :moffs64 => :moffset64
        }

        #
        # Translates a x86 ISA operand type to a ronin-asm operand type.
        #
        # @return [Symbol]
        #
        # @note
        #   The reason why we translate certain operand types is for readability
        #   and to disambiguate certain types.
        #
        def ronin_type = TYPE_RENAMES.fetch(type,type)

      end

      #
      # Represents the `<Encoding>` XML element.
      #
      module Encoding
        #
        # Parses an `<Encoding>` eleemnt.
        #
        # @param [Nokogiri::XML::Element] node
        #   The `<Encoding>` element.
        #
        # @return [Array<CodeOffset, DataOffset, Immediate, ModRM, Opcode,
        #                Prefix, RegisterByte, VEX, EVEX>]
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
            when 'VEX'          then VEX.from_xml(child)
            when 'EVEX'         then EVEX.from_xml(child)
            else
              raise(NotImplementedError,"cannot parse <Encoding> child element: #{child.to_xml}")
            end
          end
        end

        #
        # Represents the `<Prefix>` XML element within `<Encoding>`.
        #
        class Prefix < Data.define(:byte, :mandatory)

          extend XMLHelpers

          #
          # Parses the prefix object from the `<Prefix>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<Prefix>` XML element.
          #
          # @return [Prefix]
          #   The parsed prefix object.
          #
          def self.from_xml(node)
            new(
              byte:      parse_hex(node['byte']),
              mandatory: parse_boolean(node['mandatory'])
            )
          end

          def mandatory? = mandatory

        end

        #
        # Represents the `<Opcode>` XML element within `<Encoding>`.
        #
        class Opcode < Data.define(:byte, :addend)

          extend XMLHelpers

          #
          # Parses the opcode object from the `<Opcode>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<Opcode>` XML element.
          #
          # @return [Opcode]
          #   The parsed prefix object.
          #
          def self.from_xml(node)
            new(
              byte:   parse_hex(node['byte']),
              addend: if (addend = node['addend'])
                        parse_int_or_operand_index(addend)
                      end
            )
          end

        end

        #
        # Represents the `<RegisterByte>` XML element within `<Encoding>`.
        #
        class RegisterByte < Data.define(:register, :payload)

          extend XMLHelpers

          #
          # Parses the register byte object from the `<RegisterByte>` XML
          # element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<RegisterByte>` XML element.
          #
          # @return [RegisterByte]
          #   The parsed register byte object.
          #
          def self.from_xml(node)
            new(
              register: parse_operand_index(node['register']),
              payload:  if (payload = node['payload'])
                          parse_operand_index(payload)
                        end
            )
          end

        end

        #
        # Represents the `<CodeOffset>` XML element within `<Encoding>`.
        #
        class CodeOffset < Data.define(:size, :value)

          extend XMLHelpers

          #
          # Parses the code offset object from the `<CodeOffset>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<CodeOffset>` XML element.
          #
          # @return [CodeOffset]
          #   The parsed code offset object.
          #
          def self.from_xml(node)
            new(
              size:   parse_int(node['size']),
              value:  parse_operand_index(node['value'])
            )
          end

        end

        #
        # Represents the `<DataOffset>` XML element within `<Encoding>`.
        #
        class DataOffset < Data.define(:size, :value)

          extend XMLHelpers

          #
          # Parses the data offset object from the `<DataOffset>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<DataOffset>` XML element.
          #
          # @return [DataOffset]
          #   The parsed data offset object.
          #
          def self.from_xml(node)
            new(
              size:   parse_int(node['size']),
              value:  parse_operand_index(node['value'])
            )
          end

        end

        #
        # Represents the `<Immediate>` XML element within `<Encoding>`.
        #
        class Immediate < Data.define(:size, :value)

          extend XMLHelpers

          #
          # Parses the immediate object from the `<Immediate>` XML element.
          #
          # @param [Nokogiri::XML::Element] node
          #   The `<Immediate>` XML element.
          #
          # @return [Immediate]
          #   The parsed immediate object.
          #
          def self.from_xml(node)
            new(
              size:   parse_int(node['size']),
              value:  parse_operand_index(node['value'])
            )
          end

        end

        #
        # Represents the `<ModRM>` XML element within `<Encoding>`.
        #
        class ModRM < Data.define(:mode, :reg, :rm)

          extend XMLHelpers

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
              rm:   parse_operand_index(node['rm'])
            )
          end

        end

        #
        # Represents the `<VEX>` XML element within `<Encoding>`.
        #
        class VEX < Data.define(:type, :w, :l, :m_mmmm, :pp, :r, :x, :b, :vvvv)

          extend XMLHelpers

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
                    parse_int(r)
                  end,
              x:  if (x = node['X'])
                    parse_int(x)
                  end,
              b:  if (b = node['B'])
                    parse_int(b)
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
        class EVEX < Data.define(:mmm, :pp, :w, :ll, :vvvv, :v, :rr, :B, :x, :b, :aaa, :z, :disp8xN)

          extend XMLHelpers

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
                   parse_int(v)
                 end,
              rr: if (rr = node['RR'])
                    parse_binary(rr)
                  end,
              B: if (b = node['B'])
                   parse_int(b)
                 end,
              x: if (x = node['X'])
                   parse_int(x)
                 end,
              b: if (b = node['b'])
                   parse_int_or_operand_index(b)
                 end,
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
      end

      #
      # Miscallaneous XML parser helper methods.
      #
      module Helpers
        #
        # Parses a boolean value.
        #
        # @param ["true", "false", nil] string
        # @return [true, false, nil]
        #
        def parse_boolean(string)
          case string
          when 'true'  then true
          when 'false' then false
          when nil     then nil
          else
            raise(ArgumentError,"cannot parse boolean value: #{string.inspect}")
          end
        end

        #
        # Parses an integer string.
        #
        # @param [String] string
        # @return [Integer]
        #
        def parse_int(string) = string.to_i

        #
        # Parses a hex string.
        #
        # @param [String] string
        # @return [Integer]
        #
        def parse_hex(string) = string.to_i(16)

        #
        # Parses a binary string.
        #
        # @param [String] string
        # @return [Integer]
        #
        def parse_binary(string) = string.to_i(2)

        #
        # Parses an operand index (ex: `#0`).
        #
        # @param [String] string
        # @return [OperandIndex]
        #
        def parse_operand_index(string) = OperandIndex[string[1..].to_i]

        #
        # Parses a binary value or an operand index (ex: `#0`).
        #
        # @param [String] string
        # @return [OperandIndex, Integer]
        #
        def parse_binary_or_operand_index(string)
          case string
          when /\A#\d+\z/  then parse_operand_index(string)
          when /\A[01]+\z/ then string.to_i(2)
          else
            raise(ArgumentError,"cannot parse value: #{string.inspect}")
          end
        end

        #
        # Parses an integer value or an operand index (ex: `#0`).
        #
        # @param [String] string
        # @return [OperandIndex, Integer]
        #
        def parse_int_or_operand_index(string)
          case string
          when /\A#\d+\z/ then parse_operand_index(string)
          when /\A\d+\z/  then string.to_i
          else
            raise(ArgumentError,"cannot parse value: #{string.inspect}")
          end
        end
      end
    end
  end
end
