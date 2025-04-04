.code32
.section .text
  vreduceph $0x33, (%ecx){1to16}, %ymm0{%k1}{z}
