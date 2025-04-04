.code64
.section .text
  vsubpd (%rdx){1to8}, %zmm1, %zmm0{%k1}{z}
