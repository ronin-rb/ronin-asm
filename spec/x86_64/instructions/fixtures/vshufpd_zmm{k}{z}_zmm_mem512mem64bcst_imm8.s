.code64
.section .text
  vshufpd $0x44, (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
