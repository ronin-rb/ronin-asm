.code64
.section .text
  vpermq $0x33, (%rcx){1to4}, %ymm0{%k1}{z}
