.code64
.section .text
  vpshuflw $0x33, (%rcx), %ymm0{%k1}{z}
