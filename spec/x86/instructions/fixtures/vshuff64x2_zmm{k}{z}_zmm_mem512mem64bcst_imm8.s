.code32
.section .text
  vshuff64x2 $0x44, (%edx){1to8}, %zmm1, %zmm0{%k1}{z}
