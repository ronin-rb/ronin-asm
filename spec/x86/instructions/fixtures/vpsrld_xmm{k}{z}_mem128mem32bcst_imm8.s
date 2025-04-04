.code32
.section .text
  vpsrld $0x33, (%ecx){1to4}, %xmm0{%k1}{z}
