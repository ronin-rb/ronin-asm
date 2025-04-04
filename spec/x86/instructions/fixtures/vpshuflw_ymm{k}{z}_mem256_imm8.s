.code32
.section .text
  vpshuflw $0x33, (%ecx), %ymm0{%k1}{z}
