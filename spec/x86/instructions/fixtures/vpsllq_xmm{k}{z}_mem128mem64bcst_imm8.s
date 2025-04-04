.code32
.section .text
  vpsllq $0x33, (%ecx){1to2}, %xmm0{%k1}{z}
