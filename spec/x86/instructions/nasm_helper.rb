require 'tempfile'

module NasmHelper
  def nasm(instruction)
    Tempfile.open(['ronin-asm-x86-','.s']) do |asm_tempfile|
      asm_tempfile.puts <<~ASM
        BITS 32
        section .text
        _start:
        \t#{instruction}
      ASM
      asm_tempfile.flush
      asm_tempfile.close

      Tempfile.open(['ronin-asm-x86-','.bin'], encoding: Encoding::ASCII_8BIT) do |output_tempfile|
        system("nasm -o #{output_tempfile.path} #{asm_tempfile.path} || cat #{asm_tempfile.path}")

        output_tempfile.read
      end
    end
  end
end
