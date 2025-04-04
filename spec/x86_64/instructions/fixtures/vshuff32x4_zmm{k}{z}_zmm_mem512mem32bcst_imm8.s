.code64
.section .text
  vshuff32x4 $0x44, (%rdx){1to16}, %zmm1, %zmm0{%k1}{z}
