.code32
.section .text
  vgetmantps $0x33, (%ecx){1to8}, %ymm0{%k1}{z}
