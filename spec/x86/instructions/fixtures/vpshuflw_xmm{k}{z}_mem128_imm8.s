.code32
.section .text
  vpshuflw $0x33, (%ecx), %xmm0{%k1}{z}
