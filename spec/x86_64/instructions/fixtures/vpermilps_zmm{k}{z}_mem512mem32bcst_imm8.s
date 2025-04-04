.code64
.section .text
  vpermilps $0x33, (%rcx){1to16}, %zmm0{%k1}{z}
