.code64
.section .text
  vshuff64x2 $0x44, (%rdx){1to4}, %ymm1, %ymm0{%k1}{z}
