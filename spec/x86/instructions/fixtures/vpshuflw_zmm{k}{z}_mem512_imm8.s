.code32
.section .text
  vpshuflw $0x33, (%ecx), %zmm0{%k1}{z}
