.code32
.section .text
  vshuff64x2 $0x44, (%edx){1to4}, %ymm1, %ymm0{%k1}{z}
