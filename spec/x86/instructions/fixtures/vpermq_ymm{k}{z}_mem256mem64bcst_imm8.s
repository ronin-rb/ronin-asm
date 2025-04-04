.code32
.section .text
  vpermq $0x33, (%ecx){1to4}, %ymm0{%k1}{z}
