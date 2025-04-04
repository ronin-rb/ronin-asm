.code32
.section .text
  vshufi32x4 $0x44, (%edx){1to16}, %zmm1, %zmm0{%k1}{z}
