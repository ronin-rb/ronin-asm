.code64
.section .text
  vpermq (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
